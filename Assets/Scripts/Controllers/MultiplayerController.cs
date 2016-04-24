using UnityEngine;
using UnityEngine.Networking;
using System.Collections;
using System.Collections.Generic;

/**
 * The controller for the multiplayer aspects of the game
 */
public class MultiplayerController : NetworkBehaviour {

	public static MultiplayerController S = null;

	private int playerNumber = 0; //!< The player's ID number

	#region stored vars/// @name stored vars
	private int storedInt = 0; //!< The stored results of network calls
	private GameObject storedGameObject = null; //!< The stored results of network calls
	private string storedString = ""; //!< The stored results of network calls
	#endregion

	#region Controller vars/// @name Controller vars
	private GameController gameController = null; //!< The local reference to the game controller
	private LobbyController lobbyController = null; //!< The local reference to the 
	private NetworkController networkController = null; //!< The local reference to the network controller and API
	private PlayerController playerController = null; //!< The local reference to the player's controller
	private TVUIController tvUIController = null; //!< The local reference to the TVUIController
	private UIController uiController = null; //!< The local reference to the UIController
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
		// Rename the server's copy of the controller
		gameObject.name = string.Format ("Server-MPC Player {0}", storedInt);

		// Move the controller to the collection
		gameObject.transform.SetParent (GameObject.Find ("Multiplayer Controllers").transform);
	}
	#endregion

	/**
	 * Method that sets the needed vars for the local phone
	 */
	public void setVars (GameController gc, UIController uic, NetworkController nc) {
		gameController = gc;
		uiController = uic;
		networkController = nc;
	}

	#region getReturn methods /// @name getReturn methods
	/**
	 * Retreives the stored output values from the server commands
	 * @return holder The holder type (used to implement overloading)
	 */
	public int getInt () {
		// Initialize the returned value
		int output = storedInt;

		// Reset the stored variable
		storedInt = 0;

		return output;
	}

	/**
	 * Retreives the stored output values from the server commands
	 * @return holder The holder type (used to implement overloading)
	 */
	public GameObject getGameObject () {
		// Initialize the returned value
		GameObject output = storedGameObject;

		// Reset the stored variable
		storedGameObject = null;

		return output;
	}
	#endregion

	#region calling methods /// @name calling methods
	/**
	 * Relay function to create the player on the server
	 * @see CmdCreatePlayer
	 */
	public void doCreatePlayer () {
		// Call the network method create the player
		CmdCreatePlayer ();
	}

	/**
	 * Relay function for joining the server
	 * @param playerName The player's name in the format of 
	 * ~~~{.cs}
	 * "Player [int playerNumber]"
	 * ~~~
	 * @see CmdJoinServer
	 */
	public void doJoinServer (string playerName) {
		// Call the network method to join the lobby
		CmdJoinServer (playerName);
	}

	/**
	 * Relay function for leaving the server
	 * @param isHost The boolean status of if this player is the host
	 * @see CmdLeaveServer
	 */
	public void doLeaveServer (bool isHost) {
		gameController.debug ("doLeaveServer");
		// Call the network method to leave the game
//		CmdLeaveServer ();//playerName, isHost);
	}

	/**
	 * Relay function for selecting a faction
	 * @param faction The name of the faction that has been selected
	 * @see CmdSelectFaction
	 */
	public void doSelectFaction (string faction) {
		CmdSelectFaction (playerNumber, faction);
	}

	/**
	 * Relay function for setting the selected counts of units to create
	 * @param units The string array of units
	 * @param counts The matching int array of counts for the units
	 * @see CmdSetUnitCounts
	 */
	public void doSetUnitCounts (string[] units, int[] counts) {
		CmdSetUnitCounts (playerNumber, units, counts);
	}

	/**
	 * Relay function changing the ready states of players on the Wait UI
	 * @param ready The ready state
	 * @see CmdReadyChange
	 */
	public void doReadyChange (bool ready) {
		CmdReadyChange (playerNumber, ready);
	}

	public void doLoaded () {
		CmdGameLoaded ();
	}

	public void doNavigate (string direction) {
		CmdNavigate (direction);
	}

	public void doGetMovePossibility (Vector2 location) {
	}
	#endregion

	#region Client commands /// @name Client commands
	/**
	 * Client method that gets called once the player has been created by the server method CmdCreatePlayer
	 * @param playerNumber The array index of the requesting player
	 */
	[ClientRpc]
	public void RpcPlayerCreated (int playerNumber) {
		// Ensure that only the right player gets the call
		if (isLocalPlayer) {
			// Store the player's number
			this.playerNumber = playerNumber;

			// Change the phone's ui to the faction select screen
			uiController.showCanvas ("Factions Select");
		}
	}

	/**
	 * Client method that sets the ready state on the Wait UI
	 * @param ready The ready state
	 */
	[ClientRpc]
	public void RpcGameReady (bool ready) {
		// Get the network controller if it is null (sometimes happens)
		if (networkController == null) {
			networkController = NetworkController.S;
		}

		// Ensure that this is executed only on the host
		if (networkController.isHost) {
			// Get the controller
			ReadyUIController controller = ReadyUIController.S;

			// Ensure that the controller is not null
			if (controller != null) {
				// Change the state of the start game button
				controller.doGameReady (ready);
			}
		}
	}

	/**
	 * Client method that moves to the loading screens
	 */
	[ClientRpc]
	public void RpcGameStarting () {
		// Get the network controller if it is null (sometimes happens)
		if (networkController == null) {
			networkController = NetworkController.S;
		}

		// Get the ui controller if it is null (sometimes happens)
		if (uiController == null) {
			uiController = UIController.S;
		}

		// Ensure that this part is executed only on the host
		if (networkController.isHost) {
			// Change the tv's ui
			gameController.debug ("Showing loading screen on tv");
			tvUIController.showUI ("Loading");
		}

		// Change the UI
		gameController.debug ("Showing loading screen on client");
		uiController.showCanvas ("Loading");
	}

	[ClientRpc]
	public void RpcGameLoaded () {
		// Get the ui controller if it is null (sometimes happens)
		if (uiController == null) {
			uiController = UIController.S;
		}

		uiController.showCanvas ("Nav");
	}
	#endregion

	#region Server commands /// @name Server commands
	/**
	 * The server command that creats that calls doCreatePlayer from the PlayerController
	 * 
	 * This then passes the new player to RpcCreatePlayer for the client to process
	 */
	[Command]
	public void CmdCreatePlayer () {
		// Call the PlayerController's method to create the player and store the return
		GameObject newPlayer = playerController.doCreatePlayer ();

		// Spawn the player on the network
		NetworkServer.Spawn (newPlayer);

		// Tell the client that the player has been created
		RpcPlayerCreated (playerController.getNumPlayers() - 1);

		// Join the server
		CmdJoinServer (newPlayer.name);
	}

	/**
	 * The server command that shows the lobby and starts the phone's ui for setting up the game
	 * @param playerName The name of the requesting player
	 */
	[Command]
	public void CmdJoinServer (string playerName) {
		// Reset the countdown
		gameController.resetCountdown ();

		// Ensure that the lobby is shown
		tvUIController.showUI ("Lobby");

		// Get the lobby controller
		lobbyController = LobbyController.S;

		// Pass on the player's name to the method that joins the lobby
		lobbyController.addPlayerToLobby (playerName);
	}

	/**
	 * The server command that ends various aspects of the game
	 */
	[Command]
	public void CmdLeaveServer () {//string playerName, bool isHost) {
//		gameController.debug ("CmdLeaveServer");
//		// Ensure that there is a lobby
//		if (lobbyController != null) {
//			// Check if player is the host
////			if (isHost) {
//				// Call the method to cleanup the lobby
////				lobbyController.doCleanupLobby ();
////			} else {
//				// Call the method to remove the current player
////			lobbyController.removePlayerFromLobby (string.Format ("Player {0}", playerId));
////			}
//		}
//
//		// Check if player is the host
////		if (isHost) {
////		}
	}

	/**
	 * Server command that stores the selected faction of the provided player
	 * @param playerNumber The array index of the requesting player
	 * @param faction The name of the faction that has been selected
	 */
	[Command]
	public void CmdSelectFaction (int playerNumber, string faction) {
		// Set the faction
		playerController.doSelectFaction (playerNumber, faction);
	}

	/**
	 * The server command that sets the player's unit counts that will be created
	 * @param playerNumber The array index of the requesting player
	 * @param units The string array of units
	 * @param counts The matching int array of counts for the units
	 */
	[Command]
	public void CmdSetUnitCounts (int playerNumber, string[] units, int[] counts) {
		// Set the unit counts for the user
		UnitsController controller = UnitsController.S;
		controller.doSetUnitCounts (playerNumber, units, counts);
	}

	/**
	 * Server command that changes the ready state of the provided player
	 * @param playerNumber The array index of the requesting player
	 * @param ready The ready state
	 */
	[Command]
	public void CmdReadyChange (int playerNumber, bool ready) {
		// Change the total number of ready players
		gameController.doReadyChange (ready);

		// Tell the lobby to update the player's info
		lobbyController.updatePlayerReady (playerNumber, ready);

		// Check the hostReady state
		if (gameController.getReadyState (true)) {
			// Update the UIs
			RpcGameStarting ();

			// Start the game
			gameController.doStartGame ();
		} else {
			// Tell the host to update the start game button
			RpcGameReady (gameController.getReadyState (false));
		}
	}

	[Command]
	public void CmdGameLoaded () {
		gameController.doShowGame ();
		RpcGameLoaded ();
	}

	[Command]
	public void CmdNavigate (string direction) {
	}
	#endregion
}
