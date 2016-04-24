using UnityEngine;
using UnityEngine.Networking;
using System.Collections;
using System.Collections.Generic;
using Google.Cast.RemoteDisplay;
using Google.Cast.RemoteDisplay.UI;

/**
 * The networking controller and API
 */
public class NetworkController : MonoBehaviour {
	
	public static NetworkController S = null;

	public int networkDiscoveryTries = 3; //!< The number of attempts to find available hosts

	[HideInInspector]
	public bool isHost = false; //!< The state of if this is the host or not

	private NetworkClient networkClient = null; //!< The network client
	private NetworkDiscovery networkDiscovery = null; //!< The network discovery script atached to the gameobject
	private NetworkManager networkManager = null; //!< The attached NetworkManager script

	private List<string> networkMessages = null; //!< The retreived list of network messages
	private float messageBroadcastTime = 0; //!< Ammount of time (in miliseconds) between broadcasting of messages
	private int attempts = 10; //!< The number of attempts to retreive the multiplayer controller

	#region Controller vars/// @name Controller vars
	private GameController gameController = null; //!< The local reference to the game controller
	private MultiplayerController multiplayerController = null; //!< The local reference to the MultiplayerController
	private UIController uiController = null; //!< The local reference to the UIController
	#endregion

	#region Unity methods /// @name Unity methods
	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;

		// Get the network scripts
		networkDiscovery = gameObject.GetComponent<NetworkDiscovery> ();
		networkManager = gameObject.GetComponent<NetworkManager> ();

		// Get the broadcast time, used to supply the wait times
		messageBroadcastTime = networkDiscovery.broadcastInterval;
	}

	/**
	 * Runs at load time
	 */
	void Start () {
		gameController = GameController.S;
		uiController = UIController.S;
	}
	#endregion

	#region MultiplayerController retrieval methods /// @name MultiplayerController retrieval methods
	/**
	 * Gives the multiplayer controller to the requester
	 * @return The multiplayer controller
	 */
	public static MultiplayerController GetMultiplayerController () {
		// Get the local instance of this
		NetworkController controller = NetworkController.S;

		return controller.getMultiplayerController ();
	}

	/**
	 * Gives the multiplayer controller to the requester
	 * @return The multiplayer controller
	 */
	public MultiplayerController getMultiplayerController () {
		return multiplayerController;
	}
	#endregion

	bool joined = false;
	public void doButtonPressed () {
		if (networkClient != null && networkClient.isConnected) {
			doQuitGame ();
			joined = false;
		} else {
			doJoinGame ();
			joined = true;
		}
	}

	#region Server connection methods /// @name Server connection methods
	/**
	 * Method that calls the correct method to quit based on if this player s the host or not
	 */
	public void doQuitGame () {
		// Check if this player is the host
		if (isHost) {
			gameController.debug ("Stop Hosting");
			// Stop the server
			doStopHosting ();
		} else {
			gameController.debug ("Disconnecting");
			// Disconnect
			doDisconnect ();
		}
	}

	/**
	 * Starts the hosting and joins the local server
	 */
	public void doHostGame () {
		// Setup the server
		networkManager.StartServer ();

		// Set the hosting flag
		isHost = true;

		// Start the network discovery
		networkDiscovery.Initialize ();
		networkDiscovery.StartAsServer ();

		// Create the client
		networkClient = new NetworkClient ();

		// Connecting to the local host
		networkClient = ClientScene.ConnectLocalServer ();

		// Register the handler to call
		networkClient.RegisterHandler (MsgType.Connect, OnConnected);
	}

	/**
	 * Stops the local server
	 */
	public void doStopHosting () {
		// Disconnect from the local server first
		doDisconnect ();

		// Stop the server
		networkManager.StopServer ();
	}

	/**
	 * Disconnects from the host
	 */
	public void doDisconnect () {
		// Leave the game
		multiplayerController.doLeaveServer (isHost);

		// Disconnect from the host
		networkClient.Disconnect ();

		// Stop listening for the broadcast messages
		networkDiscovery.StopBroadcast ();
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
	#endregion

	#region After connection methods /// @name After connection methods
	/**
	 * The method that gets called when a client sucessfully connects
	 * @param netMsg The network message that is supplied to the client
	 */
	public void OnConnected (NetworkMessage netMsg) {
		gameController.debug ("Connected");

//		// Check if this is the client
//		if (!isHost) {
//			// Simunlate casting
//			GameObject.Find ("CastButtonFrame").GetComponent <CastButtonFrame> ().ShowCasting (true);
//			GameObject.Find ("CastListDialog").GetComponent <CastListDialog> ().Hide ();
//			GameObject.Find ("DarkMask").SetActive (false);
//		}

		// Spawn the multiplayer controller
		ClientScene.AddPlayer (netMsg.conn, 0);

		// Get the multiplayer controller
		StartCoroutine (findMultiplayerController ());
	}

	/**
	 * Coroutine method that waits for the multiplayer controller to be instantiated
	 */
	private IEnumerator findMultiplayerController () {
		// Wait 100ms for the networkManager to be instantiated
		yield return new WaitForSeconds (0.1f);

		// Get all of the available controllers
		GameObject[] controllers = GameObject.FindGameObjectsWithTag ("Multiplayer Controller");

		// Decrement the number of attempts
		attempts--;

		// Loop through the controllers
		foreach (GameObject controller in controllers) {
			// Get the script
			MultiplayerController script = controller.GetComponent<MultiplayerController> ();

			// Check if the script belongs to the player
			if (script.isLocalPlayer) {
				// Set the controller
				multiplayerController = script;

				// Break out of the loop
				break;
			}
		}

		// Ensure that the controller is not null
		if (multiplayerController != null) {
			// Rename the server's copy of the controller
			multiplayerController.gameObject.name = string.Format ("Local Multiplayer Controller");

			// Move the controller to the collections holder
			multiplayerController.gameObject.transform.SetParent (GameObject.Find ("Multiplayer Controllers").transform);

			// Give the controller references to the local phone objects
			multiplayerController.setVars (gameController, uiController, this);

			// Create the player and join the lobby
			multiplayerController.doCreatePlayer ();
		} else {
			// Ensure that it stops at some point
			if (attempts >= 0) {
				// Wait again
				StartCoroutine (findMultiplayerController ());
			}
		}
	}
	#endregion

	#region Connecting helper methods /// @name Connecting helper methods
	/**
	 * The method that waits for the messages to come in from the server
	 */
	private IEnumerator waitForMessages () {
		// Wait for the messages
		yield return new WaitForSeconds ((messageBroadcastTime + 500) / 1000);

		// Retrieve the messages
		Dictionary<string, NetworkBroadcastResult> networkMessages = networkDiscovery.broadcastsReceived;

		// Decrement the available attempts left to find a host
		networkDiscoveryTries--;

		// Check if there are any messages
		if (networkMessages.Count > 0) {
			gameController.debug (string.Format ("{0} messages arrived", networkMessages.Count));

			// Transform the keys into a list
			this.networkMessages = new List<string> (networkMessages.Keys);

			// Get the first ip address
			string address = getIPAdress ();

			// Try connecting to the server
			gameController.debug (string.Format ("Trying to join game at {0}:{1}", address, networkManager.networkPort));
			networkManager.networkAddress = address;
			networkClient = networkManager.StartClient ();

			// Register the handlers to call
			networkClient.RegisterHandler (MsgType.Connect, OnConnected);
			networkClient.RegisterHandler (MsgType.Error, OnConnectionError);
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
	#endregion

	#region Connecting error method /// @name Connecting error method
	/**
	 * Method that handles errors when connecting
	 */
	public void OnConnectionError (NetworkMessage netMsg) {
		// Get the next address
		string address = getIPAdress ();

		// Check if there is an address
		if (address.Length > 0) {
			// Try to connect to the next game
			networkClient.Connect (address, networkManager.networkPort);
		} else {
			// Display the error
			gameController.showError ("I don't blame you", "Cannot connect to curent game in progress");
		}
	}
	#endregion
}
