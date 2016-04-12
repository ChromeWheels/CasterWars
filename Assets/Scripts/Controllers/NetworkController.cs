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
	public GameObject multiplayerControllerPrefab = null; //!< The GameObject that contains the MultiplayerController script

	public int gamePort = 4444; //!< The port for the game
	public int networkDiscoveryTries = 3; //!< The number of attempts to find available hosts

	[HideInInspector]
	public bool isHost = false; //!< The state of if this is the host or not

	private NetworkClient networkClient = null; //!< The network client
	private NetworkDiscovery networkDiscovery = null; //!< The network discovery script atached to the gameobject

	private List<string> networkMessages = null;
	private float messageBroadcastTime = 0; //!< Ammount of time (in miliseconds) between broadcasting of messages

	#region Controller vars/// @name Controller vars
	private GameController gameController = null; //!< The local reference to the game controller
	private MultiplayerController multiplayerController = null; //!< The local reference to the MultiplayerController
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
	}

	int count = 0;
	void Update () {
		if (NetworkServer.connections.Count > count) {
			count = NetworkServer.connections.Count;
			gameController.debug ("There are now " + count + " players connected");
		}
	}
	#endregion

	private IEnumerator waitToRun () {
		yield return new WaitForSeconds (2);
		StartCoroutine (waitForMessages ());
	}

	#region Create Multiplayer Controller /// @name Create Multiplayer Controller
	private GameObject createMultiplayerController () {
		// Instantiate the GameObject
		GameObject multiplayerControllerObject = Instantiate (multiplayerControllerPrefab, Vector3.zero, Quaternion.identity) as GameObject;

		// Rename the controller
		multiplayerControllerObject.name = "Multiplayer Controller";

		// Set the parent
		multiplayerControllerObject.transform.SetParent (gameObject.transform.parent);

		return multiplayerControllerObject;
	}
	#endregion

	#region Server methods /// @name Server methods
	/**
	 * Starts the hosting and joins the local server
	 */
	public void doHostGame () {
		// Setup the server
		gameController.debug ("Listening");
		NetworkServer.Listen (gamePort);

		// Set the hosting flag
		isHost = true;

		// Start the network discovery
		gameController.debug ("Broadcasting");
		networkDiscovery.Initialize ();
		networkDiscovery.StartAsServer ();

		// Create the client
		networkClient = new NetworkClient ();

		// Connecting to the local host
		gameController.debug ("Connecting to localhost");
		networkClient = ClientScene.ConnectLocalServer ();
		networkClient.RegisterHandler (MsgType.Connect, OnConnected);

		// Spawn the controller on the network
//		NetworkServer.Spawn (createMultiplayerController ());
	}

	/**
	 * The method that gets called when a client sucessfully connects
	 * @param netMsg The network message that is supplied to the client
	 */
	public void OnConnected (NetworkMessage netMsg) {
		gameController.debug ("Connected");

		ClientScene.AddPlayer (networkClient.connection, 0);
//
//		// Get the multiplayer controller
//		multiplayerController = MultiplayerController.S;
//
//		// Create the player and join the lobby
//		multiplayerController.doCreatePlayer (playerPrefab);
//
//		// Get the created player
//		GameObject newPlayer = multiplayerController.getReturn ();
//		gameController.debug (string.Format ("Created player {0}", newPlayer.name));
//
//		// Spawn the player on the network
//		NetworkServer.Spawn (newPlayer);
//
//		// Execute the network command to join the lobby
//		multiplayerController.doJoinServer (newPlayer.name);
	}

	/**
	 * Stops the local server
	 */
	public void doStopHosting () {
		// Disconnect from the local server first
		doDisconnect ();

		// Stop listening
		NetworkServer.Shutdown ();
	}

	/**
	 * Disconnects from the host
	 */
	public void doDisconnect () {
		// Disconnect from the host
		networkClient.Disconnect ();
	}

	/**
	 * The method that handles the start of connecting to the host
	 */
	public void doJoinGame () {
		// Create the client
		networkClient = new NetworkClient ();

		// Listen for the host
		gameController.debug ("Looking for game");
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
		float startTime = (Time.time * 1000);
		Debug.Log ("starting looking for messages at " + startTime);
		yield return new WaitForSeconds ((messageBroadcastTime + 500) / 1000);

		// Retrieve the messages
		Dictionary<string, NetworkBroadcastResult> networkMessages = networkDiscovery.broadcastsReceived;
		float endTime = (Time.time * 1000);
		Debug.Log ("ended looking at " + endTime);
		Debug.Log ("time waited was " + (endTime - startTime) + " milliseconds");
		gameController.debug (networkMessages.Count + " messages received");

		// Decrement the available attempts left to find a host
		networkDiscoveryTries--;

		// Check if there are any messages
		if (networkMessages.Count > 0) {
			// Transform the keys into a list
			this.networkMessages = new List<string> (networkMessages.Keys);

			// Get the first ip address
			string address = getIPAdress ();

			// Try connecting to the server
			gameController.debug (string.Format ("Trying to join game at {0}:{1}", address, gamePort));
			networkClient.RegisterHandler (MsgType.Connect, OnConnected);
			networkClient.RegisterHandler (MsgType.Error, OnConnectionError);
			networkClient.Connect (address, gamePort);
		} else {
			// Check if there are attempt left
			if (networkDiscoveryTries > 0) {
				// Wait for messages again
				StartCoroutine (waitForMessages ());
			} else {
				// Display the error
				gameController.showError ("I don't blame you", "Cannot connect to curent game in progress");
			}
		}
	}

	/**
	 * Method that retrieves and parses the ip from the networkMessages list
	 * @return The IP address string
	 */
	private string getIPAdress () {
		// Initialize the output
		string address = "";

		// Ensure there is at least one address in the list
		if (networkMessages.Count > 0) {
			// Get the first ip from the list
			address = networkMessages [0];

			// Remove the address from the list
			networkMessages.RemoveAt (0);

			// Check if the format is ::fff:ip or just ip
			if (address.IndexOf (":") != -1) {
				// Clean the ip string
				address = address.Substring (7);
			}
		}

		return address;
	}

	/**
	 * Method that handles errors when connecting
	 */
	public void OnConnectionError (NetworkMessage netMsg) {
		// Get the next address
		string address = getIPAdress ();

		// Check if there is an address
		if (address.Length > 0) {
			// Try to connect to the next game
			networkClient.Connect (address, gamePort);
		} else {
			// Display the error
			gameController.showError ("I don't blame you", "Cannot connect to curent game in progress");
		}
	}
	#endregion
}
