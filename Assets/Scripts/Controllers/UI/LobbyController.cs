using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class LobbyController : MonoBehaviour {

	public static LobbyController S = null;

	public GameObject lobbyCanvas = null; //!< The canvas to put the players on for the lobby
	public GameObject lobbyPlayerPrefab = null;

	private Dictionary<string, GameObject> players = null;
	private Dictionary<string, LobbyPlayerController> playerScripts = null;
	private bool lobbyCreated = false;

	#region Unity methods /// @name Unity methods
	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;

		// Initialize the 
	}

	/**
	 * Runs at load time
	 */
	void Start () {
	}
	#endregion

	public void addPlayerToLobby (string playerName) {
	}

	public void addPlayerToLobby (string faction, string playerName) {
		// Check if the lobby is created
		if (!lobbyCreated) {
			doCreateLobby (playerName);
		}
	}

	public void doCreateLobby (string playerName) {
		// Add the four blank players
		for (int i = 1; i < 5; i++) {
			// Instantiate the new player
			GameObject newPlayer = Instantiate (lobbyPlayerPrefab) as GameObject;

			// Set the parent
			newPlayer.transform.SetParent (lobbyCanvas.transform);

			// Get the player's script
			LobbyPlayerController playerScript = newPlayer.GetComponent<LobbyPlayerController> ();

			// Add the object and script to the arrays
			players.Add (playerName, newPlayer);
			playerScripts.Add (playerName, playerScript);
		}

		// Update the player's name to include host

		// Add the current player to the lobby
	}
}
