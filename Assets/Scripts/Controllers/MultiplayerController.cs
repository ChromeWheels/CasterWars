using UnityEngine;
using UnityEngine.Networking;
using System.Collections;

/**
 * The controller for the multiplayer aspects of the game
 */
public class MultiplayerController : NetworkBehaviour {

	public static MultiplayerController S = null;

	private GameObject storedGameObject = null; //!< The stored results of network calls
	private string storedString = ""; //!< The stored results of network calls

	#region Controller vars/// @name Controller vars
	private GameController gameController = null; //!< The local reference to the game controller
	private LobbyController lobbyController = null; //!< The local reference to the 
	private PlayerController playerController = null; //!< The local reference to the player's controller
	private TVUIController tvUIController = null; //!< The local reference to the TVUIController
	#endregion

	#region Unity methods /// @name Unity methods
	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;

		// Get the controllers
		gameController = GameController.S;
		playerController = PlayerController.S;
		tvUIController = TVUIController.S;
	}

	/**
	 * Runs at load time
	 */
	void Start () {
		gameController.debug ("spawned");
	}
	#endregion

	#region getReturn methods /// @name getReturn methods
	public GameObject getReturn () {
		// Initialize the returned value
		GameObject output = storedGameObject;

		// Reset the stored variable
		storedGameObject = null;

		return output;
	}
	#endregion

	#region calling methods /// @name calling methods
	public void doCreatePlayer (GameObject playerPrefab) {
		// Call the network method create the player
		gameController.debug (string.Format ("calling to create the player"));
		CmdCreatePlayer (playerPrefab);

		// Get the created player
		GameObject newPlayer = getReturn ();
		gameController.debug (string.Format ("Created player {0}", newPlayer.name));

		// Spawn the player on the network
		NetworkServer.Spawn (newPlayer);

		// Execute the network command to join the lobby
		doJoinServer (newPlayer.name);
	}

	public void doJoinServer (string playerName) {
		// Call the network method to join the lobby
		gameController.debug (string.Format ("calling to add {0} to the lobby", playerName));
		CmdJoinServer (playerName);
	}
	#endregion

	#region Network commands /// @name Network commands
	[Command]
	public void CmdCreatePlayer (GameObject playerPrefab) {
		// Call the PlayerController's method to create the player and store the return
		storedGameObject = playerController.doCreatePlayer (playerPrefab);
	}

	[Command]
	public void CmdJoinServer (string playerName) {
		// Reset the countdown
		gameController.resetCountdown ();

		// Ensure that the lobby is shown
		tvUIController.showUI ("lobby");

		// Get the lobby controller
		lobbyController = LobbyController.S;

		// Pass on the player's name to the method that joins the lobby
		lobbyController.addPlayerToLobby (playerName);
	}
	#endregion
}
