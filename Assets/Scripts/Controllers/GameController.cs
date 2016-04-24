using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;
using Google.Cast.RemoteDisplay;
using Google.Cast.RemoteDisplay.UI;

/**
 * The controller that controlls the overall game
 */
public class GameController : MonoBehaviour {

	//TODO: unit creation during turn
	//TODO: Commander ability
	//TODO: Specials
	//TODO: Healing in towns
	//TODO: Multiplayer
	//TODO-Stretch: Draw distance
	//TODO-Stretch: Persistance
	//TODO-Stretch: Final stats

	public static GameController S;

	/**
	 * Helper class vars
	 */
	public DevTools devTools = null; //!< Settings for dev testing. Only used if devMode is enabled
	public PopulationSettings populationSettings = null; //!< Class to hold the population settings

	public Text debugText = null; //!< The debugging text on the ui
	public int linesToDisplay = 10; //!< The number of lines to display
	private List<string> texts; //!< The array of lines for the debug text object

	public CastErrorDialog errorDialog; //!< The error dialog for the ui
	public CastRemoteDisplayManager displayManager = null; //!< The local reference to the display manager

	private IEnumerator timeoutRoutine = null; //!< The stored countdown coroutine that will disconnect from the cast device
	[HideInInspector]
	public int readyPlayers = 0; //!< The number of ready players

	#region Controller vars /// @name Controller vars
	private NetworkController networkController = null; //!< The local reference to the network controller and API
	private PlayerController playerController = null; //!< Local reference to the Players collections script
	private TurnsController turnsController = null; //!< Local reference to the turns controller
	private UIController uiController = null; //!< The local reference to the UIController
	private UnitsController unitsController = null; //!< Local reference to the units controller
	#endregion

	#region Unity methods /// @name Unity methods
	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}

	/**
	 * Runs at load time
	 */
	void Start () {
		networkController = NetworkController.S;
		playerController = PlayerController.S;
		turnsController = TurnsController.S;
		uiController = UIController.S;
		unitsController = UnitsController.S;

		// Force the screen mode into landscape mode
		Screen.orientation = ScreenOrientation.LandscapeLeft;
	}
	#endregion

	#region Cast methods /// @name Cast methods
	/**
	 * Function that initilizes things once the phone has started a cast
	 */
	public void doCastScreen () {
		debug ("Started Casting");
	}

	/**
	 * Function that takes out the trash once the casting is done
	 */
	public void doEndCast () {
		debug ("End casting");

		networkController.doQuitGame ();

		if (uiController != null) {
			uiController.hideAllCanvases ();
		}
	}

	/**
	 * Handler for the attempt to connect to a game and/or device
	 * @param inUse The boolean flag of if the cast device is in use or not
	 */
	public void doTryCastScreen (bool inUse) {
		// Choose what to do
		if (inUse) {
			networkController.doJoinGame ();
		} else {
			// Initialize a new game and setup the hosting
			networkController.doHostGame ();
		}
	}
	#endregion

	public void doCatchErrors () {
//		debug ("Error");
	}

	public void doHandleDevicesUpdate () {
//		debug ("Devices Updated");
	}

	#region Ready state methods /// @name Ready state methods
	/**
	 * Checks for the ready state of readiness of all players
	 * @param isHost Used for choosing what to check for\n
	 * If set, checks if all players including the host is ready. This is used to see if to start the game or not.\n
	 * If off, checks if all players minus the host is ready. Used for checking to enable/disable the start game button.
	 * @return The bool output of the ready state of all players
	 */
	public bool getReadyState (bool isHost) {
		// Var used to subtract 1 if this is not a call to check for game starting
		int offset = 0;

		// Is this a call to check for game starting?
		if (!isHost) {
			// Offset by one
			offset = 1;
		}

		Debug.Log (string.Format (
			"readyPlayers: {0} alivePlayers {1} Check 1: {2} 2: {3} Tot: {4}",
			readyPlayers,
			(playerController.alivePlayers - offset),
			(readyPlayers == playerController.alivePlayers - offset),
			(playerController.alivePlayers > 1),
			((readyPlayers == playerController.alivePlayers - offset) && playerController.alivePlayers > 1)
		));

		return ((readyPlayers == playerController.alivePlayers - offset) && playerController.alivePlayers > 1);
	}

	/**
	 * Method that keeps track of the number of ready players
	 * @param ready The ready state of the player that initiated this call
	 */
	public void doReadyChange (bool ready) {
		// Choose what to do
		if (ready) {
			readyPlayers++;
		} else {
			readyPlayers--;
		}
	}
	#endregion

	#region Game methods /// @name Game methods
	/**
	 * Function the gets the game underway
	 */
	public void doStartGame () {
		debug ("Starting game");

		// Get the maps controller
		MapsController mapsController = MapsController.S;

		// Create the map based on the number of players
		mapsController.construct (playerController.getNumPlayers ());

		// Create the units
		debug ("Calling to create units");
		unitsController.doCreateUnitsAtStart ();
	}

	public void doShowGame () {
		// Move the camera to the map, wait for 2 seconds and then start player 1's turn
		RemoteCamera cam = RemoteCamera.S;
		cam.moveToMap ();

		// Start the game with player 1's turn
		turnsController.startTurn (0);
	}

	/**
	 * Ends the game
	 */
	public void doEndGame () {
		debug ("Ending game");
	}
	#endregion

	#region Debug methods /// @name Debug methods
	/**
	 * A method that prints the last n lines of debug text to the debug text
	 * @param text The newest line to add to the text
	 */
	public static void showDebug (string text) {
		// Get the instatiated version of this script
		GameController gameController = GameController.S;

		// Call the local version of this method
		gameController.debug (text);
	}

	/**
	 * A method that prints the last n lines of debug text to the debug text
	 * @param text The newest line to add to the text
	 */
	public void debug (string text) {
		// Only continue if the object and script exists and in dev mode
		if (debugText != null && debugText != null && devTools.devMode) {
			// Also send it to the debugger
			Debug.Log (text);

			// If the array is not initialize, initialize it
			if (texts == null) {
				texts = new List<string> ();
			}

			// If the text has more than n lines
			if (texts.Count > linesToDisplay) {
				// Remove the oldest line
				texts.RemoveAt (0);
			}

			// Add the new line to the array
			texts.Add (text);

			// Update the text
			debugText.text = string.Join ("\n", texts.ToArray ());
		}
	}
	#endregion

	/**
	 * A function that will show the popup error dialog
	 * @param title The title of the error dialog
	 * @param message The message of the error
	 */
	public void showError (string title, string message) {
		// Create an error
		CastError error = new CastError (title, message);

		// Set the error
		errorDialog.SetError (error);

		// Show the error
		errorDialog.gameObject.SetActive (true);
	}

	#region Timeout methods /// @name Timeout methods
	/**
	 * Method that resets the countdown timer to 5 minutes
	 */
	public void resetCountdown () {
		// Do nothing if in devMode
		if (!devTools.devMode) {
			// Check if the countdown has already begun
			if (timeoutRoutine != null) {
				// Stop the countdown
				StopCoroutine (timeoutRoutine);
			}

			// Set the countdown to wait 4½ minutes and set the initial time left to 30 seconds
			timeoutRoutine = countdown ((60 * 4.5f), 30, false);

			// Start the countdown
			StartCoroutine (timeoutRoutine);
		}
	}

	/**
	 * The countdown coroutine that will disconnect from the cast device after 5 minutes of inactivity
	 */
	private IEnumerator countdown (float waitTime, float timeLeft, bool isFinalCountdown) {
		// Wait the prescribed time
		yield return new WaitForSeconds (waitTime);

		// Setup the recursive call
		timeoutRoutine = countdown (1, --timeLeft, true);

		// Create the message
		string message = string.Format ("You have been idle for awhile, You will be diconnected in {0} seconds if there is no activity.", timeLeft);

		// Check if the final countdown has started
		if (!isFinalCountdown) {
			// Show the warning
			uiController.showDialog ("Are you still there?", message, new string[] {"Continue"}, new DialogActions[] {DialogActions.ResetCountdownClock});

			// Start the final countdown 1 second at a time
			StartCoroutine (timeoutRoutine);
		} else {
			// Check if the time is at or past 0
			if (timeLeft <= 0) {
				// Close the warning
				uiController.closeDialog ();

				// Show disconnected alert
				uiController.showDialog ("Nap time", "You have been disconnected due to inactivity.", new string[] {"Okay"}, new DialogActions[] {DialogActions.None});

				// Choose what to disconnect from
				if (networkController.isHost) {
					// Stop server
					networkController.doStopHosting ();

					// Disconnect from the cast device
					displayManager.StopRemoteDisplaySession ();
				} else {
					// Disconnect from the server
					networkController.doDisconnect ();
				}
			} else {
				// Update the time left on the warning
				uiController.updateDialog (message);

				// Count the next second
				StartCoroutine (timeoutRoutine);
			}
		}
	}
	#endregion
}
