using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class LobbyController : MonoBehaviour {

	public static LobbyController S = null;

	public GameObject lobbyCanvas = null; //!< The canvas to put the players on for the lobby
	public GameObject lobbyPlayerPrefab = null; //!< The GameObject for the lobby player
	public Vector3 playerScale = Vector3.zero; //!< The default scale for the lobby player
	public Color[] lobbyPanelColors = null;
	public Texture blankImage = null; //!< The default image for unjoined players
	public Texture connectedImage = null; //!< The default image for joined players

	private Dictionary<string, GameObject> players = null;
	private Dictionary<string, LobbyPlayerController> playerScripts = null;
	private bool lobbyCreated = false;

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

	#region doCreateLobby method /// @name doCreateLobby method
	public void doCreateLobby (string playerName) {
		// Add the four blank players
		gameController.debug ("Creating lobby");
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
	}
	#endregion

	#region addPlayerToLobby methods /// @name addPlayerToLobby methods
	public void addPlayerToLobby (string playerName) {
		// Check if the lobby is created
		if (!lobbyCreated) {
			// Create it
			doCreateLobby (playerName);
		}

		// Get the player's script
		gameController.debug (string.Format ("adding {0} to the lobby", playerName));
		LobbyPlayerController player = null;
		playerScripts.TryGetValue (playerName, out player);

		// Add the player (change the image)
		player.playerImage.texture = connectedImage;
	}

	public void addPlayerToLobby (string faction, string playerName) {
		// Create the player
		addPlayerToLobby (playerName);
	}
	#endregion

	#region removePlayerFromLobby method /// @name removePlayerFromLobby method
	public void removePlayerFromLobby () {
	}
	#endregion
}
