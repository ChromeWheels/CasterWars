using UnityEngine;
using UnityEngine.Networking;
using System.Collections;
using System.Collections.Generic;
using Google.Cast.RemoteDisplay;

/**
 * The networking controller and API
 */
public class NetworkController : MonoBehaviour {
	
	public static NetworkController S = null;

	public GameObject playerPrefab = null; //!< The prefab for the network player

	public int gamePort = 4444; //!< The port for the game
	public int networkDiscoveryTries = 3; //!< The number of attempts to find available hosts

	private NetworkClient networkClient = null; //!< The network client
	private NetworkDiscovery networkDiscovery = null; //!< The network discovery script atached to the gameobject

	private float messageBroadcastTime = 0; //!< Ammount of time (in miliseconds) between broadcasting of messages

	#region Controller vars/// @name Controller vars
	private GameController gameController = null; //!< The local reference to the game controller
	private PlayerController playerController = null; //!< The local reference to the player's controller
	#endregion

	#region Unity methods /// @name Unity methods
	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;

		// Get the network discovery script
		networkDiscovery = gameObject.GetComponent<NetworkDiscovery> ();

		// Get the broadcast time, used to supply the wait times
		messageBroadcastTime = networkDiscovery.broadcastInterval;
	}

	/**
	 * Runs at load time
	 */
	void Start () {
		gameController = GameController.S;
		playerController = PlayerController.S;
	}
	#endregion

	/**
	 * Starts the hosting and joins the local server
	 */
	public void doHostGame () {
		// Setup the server
		NetworkServer.Listen (gamePort);

		// Start the network discovery
		networkDiscovery.Initialize ();
		networkDiscovery.StartAsServer ();

		// Create the client
		networkClient = new NetworkClient ();

		// Connecting to the local host
		networkClient.RegisterHandler (MsgType.Connect, OnConnected);
		networkClient = ClientScene.ConnectLocalServer ();
	}

	/**
	 * The method that gets called when a client sucessfully connects
	 * @param netMsg The network message that is supplied to the client
	 */
	private void OnConnected (NetworkMessage netMsg) {
		// Create the player
		NetworkServer.Spawn (playerController.doCreatePlayer (playerPrefab));
	}

	/**
	 * The method that handles the start of connecting to the host
	 */
	public void doJoinGame () {
		// Create the client
		networkClient = new NetworkClient ();

		// Listen for the host
		networkDiscovery.Initialize ();
		networkDiscovery.StartAsClient ();

		// Wait for the messages
		StartCoroutine (waitForMessages ());
	}

	/**
	 * The method that waits for the messages to come in from the server
	 */
	private IEnumerator waitForMessages () {
		// Wait for the messages
		yield return new WaitForSeconds ((messageBroadcastTime + 100) / 1000);

		// Retrieve the messages
		Dictionary<string, NetworkBroadcastResult> networkMessages = networkDiscovery.broadcastsReceived;

		// Decrement the available attempts left to find a host
		networkDiscoveryTries--;

		// Check if there are any messages
		if (networkMessages.Count > 0) {
			// Loop through the messages
			foreach (KeyValuePair<string, NetworkBroadcastResult> message in networkMessages) {
				// Try connecting to the server
				networkClient.RegisterHandler (MsgType.Connect, OnConnected);
				networkClient.Connect (message.Key.Substring (7), gamePort);
			}
		} else {
			// Check if there are attempt left
			if (networkDiscoveryTries > 0) {
				// Wait for messages again
				StartCoroutine (waitForMessages ());
			} else {
				// Display the error
				gameController.showError ("Cannot Connect", "Cannot connect to curent game in progress");
			}
		}
	}
}
