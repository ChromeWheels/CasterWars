using UnityEngine;
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

	public GameObject debugText = null; //!< The debugging text on the ui
	public int linesToDisplay = 10; //!< The number of lines to display
	private Text debugTextScript = null; //!< The script for the debuggin text object
	private List<string> texts; //!< The array of lines for the debug text object

	public CastErrorDialog errorDialog; //!< The error dialog for the ui
	public CastRemoteDisplayManager displayManager = null; //!< The local reference to the display manager

	/**
	 * Current Player
	 */
	private GameObject currentPlayer = null; //!< Local reference to the player object for the current player
	private Player currentPlayerScript = null; //!< Local reference to the Player script for the current player

	private IEnumerator timeoutRoutine = null; //!< The stored countdown coroutine that will disconnect from the cast device

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

		debugTextScript = debugText.GetComponent<Text> ();
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

		// Force the screen mode
		Screen.orientation = ScreenOrientation.LandscapeLeft;
	}
	#endregion

	/**
	 * Function that initilizes things once the phone has started a cast
	 */
	public void doCastScreen () {
		debug ("Started Casting");

//		if (devTools.devMode) {
//			FactionsCollection factionsCollection = FactionsCollection.S;
//
//			for (int i = 0; i < devTools.numPlayers; i++) {
//				GameObject newPlayer = playerController.doCreatePlayer ();
//				Player playerScript = newPlayer.GetComponent<Player> ();
//
//				string faction = factionsCollection.factionNames [i];
//				playerController.doSelectFaction (i, faction);
//
//				if (i == 0) {
//					currentPlayer = newPlayer;
//					currentPlayerScript = playerScript;
//				}
//			}
//
//			doStartGame ();
//
//			DisabledTileController disabledTileController = DisabledTileController.S;
//			disabledTileController.disableTile (new Vector2 (19, 11), 3);
//
//			uiScript.showCanvas ("Nav");
//		} else {
			// Create the player
//			currentPlayer = playerController.doCreatePlayer ();

			// Set the player script
//			currentPlayerScript = currentPlayer.GetComponent<Player> ();

			// Change to the next step on the phone
//			uiController.showCanvas ("Factions Select");
//		}
	}

	public void doCatchErrors () {
//		debug ("Error");
	}

	public void doHandleDevicesUpdate () {
//		debug ("Devices Updated");
	}

	/**
	 * Function that takes out the trash once the casting is done
	 */
	public void doEndCast () {
		debug ("End casting");

		if (uiController != null) {
			uiController.hideAllCanvases ();
		}
	}

	/**
	 * Function the gets the game underway
	 */
	public void doStartGame () {
		debug ("Started game");

		// Get the maps controller
		MapsController mapsController = MapsController.S;

		// Choose the map based on the number of players
		switch (playerController.getNumPlayers ()) {
		case 2:
			mapsController.construct (1);
			break;
		case 3:
			mapsController.construct (2);
			break;
		case 4:
			mapsController.construct (0);
			break;
		}

		// Create the units
		unitsController.doCreateUnitsAtStart ();

		// Move the camera to the map, wait for 2 seconds and then start player 1's turn
		RemoteCamera cam = RemoteCamera.S;
		cam.moveToMap ();

		// Start the game with player1's turn
		turnsController.startTurn (0);
	}

	/**
	 * Ends the game
	 */
	public void doEndGame () {
		debug ("Ending game");

	}

	/**
	 * A method that prints the last n lines of debug text to the debug text
	 * @param text The newest line to add to the text
	 */
	public void debug (string text) {
		// Only continue if the object and script exists and in dev mode
		if (debugText != null && debugTextScript != null && devTools.devMode) {
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
			debugTextScript.text = string.Join ("\n", texts.ToArray ());
		}
	}

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
			timeoutRoutine = countdown (5, 5, false);//(60 * 4.5f), 30, false);

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
