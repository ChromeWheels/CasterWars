using UnityEngine;
using UnityEngine.UI;
using System.Collections;

/**
 * Controller for the waiting (ready up) UI panel
 */
public class ReadyUIController : MonoBehaviour {

	public static ReadyUIController S = null;

	public Button backButton = null; //!< The back button on the UI
	public Button readyButton = null; //!< The ready button on the UI
	public Text readyText = null; //!< The text of the ready button

	private bool ready = false; //!< The ready status of the player

	#region Controller vars/// @name Controller vars
	private GameController gameController = null; //!< The local reference to the game controller
	private LobbyController lobbyController = null; //!< The local reference to the lobby controller
	private MultiplayerController multiplayerController = null; //!< The local reference to the MultiplayerController
	private NetworkController networkController = null; //!< The local reference to the network controller and API
	private UIController uiController = null; //!< The local reference to the UIController
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
		gameController = GameController.S;
		lobbyController = LobbyController.S;
		multiplayerController = MultiplayerController.S;
		networkController = NetworkController.S;
		uiController = UIController.S;

		// Setup the UI's buttons
		construct ();
	}
	#endregion

	/**
	 * Setup the UI's buttons
	 */
	public void construct () {
		// Check if the player is also the host
		if (networkController.isHost) {
			PlayerController playerController = PlayerController.S;

			// Get the ready status (used if the host gets to this UI after other players
			ready = ((gameController.readyPlayers == (playerController.alivePlayers - 1)) && playerController.alivePlayers > 1);
			gameController.debug (string.Format ("ready state: {0}", ready.ToString ()));

			// Check if the button exists
			if (readyButton != null) {
				// Set the ready state
				readyButton.interactable = ready;

				// Set the text for the host
				readyText.text = "Start Game";
			}
		} else {
			// Ensure that the button can be clicked
			readyButton.interactable = true;

			// Set the text for the client
			readyText.text = "Ready";
		}
	}

	/**
	 * Handler for the ready button being pressed
	 */
	public void doReadyChange () {
		// Flip the ready state
		ready = !ready;

		// Set the button's interactability
		backButton.interactable = !ready;

		// Check if the player is also the host
		if (networkController.isHost) {
			// Set the button's interactability
			readyButton.interactable = !ready;
		} else {
			// Change the ready button's text to show the state
			readyText.text = (ready) ? "Cancel" : "Ready";
		}

		// Call the multiplayer function to send the ready state to the server
		multiplayerController.doReadyChange (ready);
	}

	/**
	 * Method on the host to enable the ready button if all others are ready
	 * @param ready The ready state
	 */
	public void doGameReady (bool ready) {
		gameController.debug ("Ready state: " + ready.ToString ());
		// Set the passed in ready state
		readyButton.interactable = ready;
	}
}
