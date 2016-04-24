using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * The controller for the lobby ui that is displayed on the tv
 */
public class LobbyController : MonoBehaviour {

	public static LobbyController S = null;

	#region vars /// @name vars
	public GameObject lobbyCanvas = null; //!< The canvas to put the players on for the lobby
	public GameObject lobbyPlayerPrefab = null; //!< The GameObject for the lobby player
	public Vector3 playerScale = Vector3.zero; //!< The default scale for the lobby player
	public Color[] lobbyPanelColors = null;
	public Texture blankImage = null; //!< The default image for unjoined players
	public Texture connectedImage = null; //!< The default image for joined players

	private Dictionary<string, GameObject> players = null; //!< The associative array of the lobby players
	private Dictionary<string, LobbyPlayerController> playerScripts = null; //!< The associative array of the lobby players' scripts
	private bool lobbyCreated = false; //!< Boolean flag to represent the created status of the lobby
	#endregion

	#region Controller vars/// @name Controller vars
	private GameController gameController = null; //!< The local reference to the game controller
	#endregion

	#region Unity methods /// @name Unity methods
	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;

		// Get the controller
		gameController = GameController.S;

		// Initialize the arrays
		players = new Dictionary<string, GameObject> ();
		playerScripts = new Dictionary<string, LobbyPlayerController> ();
	}

	/**
	 * Runs at load time
	 */
	void Start () {
	}
	#endregion

	#region lobby management methods /// @name lobby management methods
	/**
	 * Method that creates and initializes the lobby
	 */
	private void doCreateLobby () {
		if (gameController.devTools.devMode) { gameController.debug ("Creating lobby"); }

		// Add the four blank players
		for (int i = 1; i < 5; i++) {
			// Instantiate the new player
			GameObject newPlayer = Instantiate (lobbyPlayerPrefab) as GameObject;

			// Change the name
			newPlayer.name = "Player " + i;

			// Set the parent
			newPlayer.transform.SetParent (lobbyCanvas.transform);

			// Get the position
			Vector3 pos = newPlayer.transform.localPosition;

			// Fix the Z position
			pos.z = 0;

			// Set the new value
			newPlayer.transform.localPosition = pos;

			// Fix the scale
			newPlayer.transform.localScale = playerScale;

			// Fix the rotation
			newPlayer.transform.localRotation = Quaternion.identity;

			// Get the player's script
			LobbyPlayerController playerScript = newPlayer.GetComponent<LobbyPlayerController> ();

			// Apply the alpha of the current panel to the new color
			lobbyPanelColors [i - 1].a = playerScript.playerPanel.color.a;

			// Change the panel color
			playerScript.playerPanel.color = lobbyPanelColors [i - 1];

			// Set the player's name, add "(Host)" if player 1
			playerScript.playerName.text = (i == 1) ? newPlayer.name + " (Host)" : newPlayer.name;

			// Add the object and script to the arrays
			players.Add (newPlayer.name, newPlayer);
			playerScripts.Add (newPlayer.name, playerScript);
		}

		// Set the lobby created flag
		lobbyCreated = true;
	}

	/**
	 * Method that destroys and cleans up the lobby
	 */
	public void doCleanupLobby () {
		if (gameController.devTools.devMode) { gameController.debug ("Cleaning up the lobby"); }

		// Loop through the lobbly player objects
		foreach (KeyValuePair<string, GameObject> player in players) {
			// Destroy the player
			Destroy (player.Value);
		}

		// Reset the arrays
		players = new Dictionary<string, GameObject> ();
		playerScripts = new Dictionary<string, LobbyPlayerController> ();

		// Reset the lobby's created state flag
		lobbyCreated = false;

		// Hide the lobby
		gameObject.SetActive (false);
	}
	#endregion

	#region player management methods /// @name player management methods
	/**
	 * Method that adds a player to the lobby and changes the image shown
	 * @param playerName The name from the player's player object. Used for ID
	 */
	public void addPlayerToLobby (string playerName) {
		if (gameController.devTools.devMode) { gameController.debug ("Adding lobby player"); }

		// Check if the lobby is created
		if (!lobbyCreated) {
			// Create it
			doCreateLobby ();
		}

		// Get the player's script
		LobbyPlayerController player = null;
		playerScripts.TryGetValue (playerName, out player);

		// Add the player (change the image)
		player.playerImage.texture = connectedImage;
	}

	/**
	 * Method that removes the provided player from the lobby
	 * @param playerName The name of the player to remove
	 */
	public void removePlayerFromLobby (string playerName) {
		if (gameController.devTools.devMode) { gameController.debug ("Removing lobby player"); }

		// Check if the lobby is created
		if (!lobbyCreated) {
			// Get the player's script
			LobbyPlayerController player = null;
			playerScripts.TryGetValue (playerName, out player);

			// Add the player (change the image)
			player.playerImage.texture = blankImage;
		}
	}

	/**
	 * Update's the ready state of the player (add's the ready text on top of the place holder)
	 * @param playerNum The array index of the player
	 * @param ready The ready state to set the player to
	 */
	public void updatePlayerReady (int playerNum, bool ready) {
		// Get the player's script
		LobbyPlayerController player = null;
		playerScripts.TryGetValue (string.Format ("Player {0}", (playerNum + 1)), out player);

		// Ensure that the player is not null
		if (player != null) {
			// Change the ready state of the player
			player.readyText.SetActive (ready);
		}
	}
	#endregion
}
