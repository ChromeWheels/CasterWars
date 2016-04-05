using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * Controller for the players
 */
public class PlayerController : MonoBehaviour {

	public static PlayerController S = null;

	#region vars /// @name vars
	[HideInInspector]
	public GameObject currentPlayer = null; //!< Local copy of the current player
	[HideInInspector]
	public Player currentPlayerScript = null; //!< The script of the current player
	[HideInInspector]
	public int currentPlayerIndex = 0; //!< The array index of the current player

	[HideInInspector]
	public int alivePlayers = 0; //!< The number of players that are still alive

	private Players playersCollection = null; //!< Local reference to the players collection
	#endregion

	#region Controllers vars /// @name Controllers vars
	private GameController gameController = null; //!< Local reference to the game controller
	private MapsController mapsController = null; //!< Local reference to the maps controller
	private UnitsController unitsController = null; //!< The local reference to the unit's controller
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
		mapsController = MapsController.S;
		playersCollection = Players.S;
		unitsController = UnitsController.S;
	}
	#endregion

	#region Create the player /// @name Create the player
	/**
	 * Creates the player
	 */
	public GameObject doCreatePlayer () {//GameObject playerPrefab) {
		// Create the player
		GameObject newPlayer = new GameObject ();

		// Assign the parent
		newPlayer.transform.SetParent (GameObject.Find ("Players").transform);

		// Name the player
		newPlayer.name = string.Format ("Player {0}", (playersCollection.players.Count + 1));

		// Add a player script to the player
		newPlayer.AddComponent<Player> ();

		// Get the script and set the player number
		newPlayer.GetComponent<Player> ().generalSettings.playerNumber = playersCollection.players.Count;

		// Add the player to the collection
		playersCollection.players.Add (newPlayer);

		// Initialize the points
		updatePoints ((playersCollection.players.Count - 1), gameController.populationSettings.populationAtStart, true);

		// Update the alive player count
		alivePlayers++;

		return newPlayer;
	}

	/**
	 * Creates the player
	 * @param playerPrefab The prefab of the player
	 */
	public GameObject doCreatePlayer (GameObject playerPrefab) {
		// Create the player
		GameObject newPlayer = Instantiate (playerPrefab, Vector3.zero, Quaternion.identity) as GameObject;

		// Assign the parent
		newPlayer.transform.SetParent (GameObject.Find ("Players").transform);

		// Name the player
		newPlayer.name = string.Format ("Player {0}", (playersCollection.players.Count + 1));

		// Get the script and set the player number
		newPlayer.GetComponent<Player> ().generalSettings.playerNumber = playersCollection.players.Count;

		// Add the player to the collection
		playersCollection.players.Add (newPlayer);

		// Initialize the points
		updatePoints ((playersCollection.players.Count - 1), gameController.populationSettings.populationAtStart, true);

		// Update the alive player count
		alivePlayers++;

		return newPlayer;
	}
	#endregion

	#region Setters /// @name Setters
	/**
	 * Sets the new player
	 * @param index The array index of the new player
	 */
	public void setNewPlayer (int index) {
		// Set the new player's index
		currentPlayerIndex = index;

		// Get the new player game object
		currentPlayer = getPlayer (index);

		// Get the player's script
		currentPlayerScript = currentPlayer.GetComponent<Player> ();
	}
	#endregion

	#region Getters /// @name Getters
	/**
	 * Gets the player based on the player's number
	 * @param index The player's number
	 * @return The player
	 */
	public GameObject getPlayer (int index) {
		return playersCollection.players [index];
	}

	/**
	 * Gets all of the players
	 * @return The list of all players
	 */
	public List<GameObject> getPlayers () {
		return playersCollection.players;
	}

	/**
	 * Retrieves the number of players
	 */
	public int getNumPlayers () {
		return playersCollection.players.Count;
	}

	/**
	 * Gets a list of the units that belongs to a given player
	 * @param playerNumber The index number of the player
	 * @return The list of units that belongs to the player
	 */
	public List<int> getPlayersUnits (int playerNumber) {
		// Initialize the output
		List<int> output = new List<int> ();

		// Loop through the units
		foreach (KeyValuePair<int, GameObject> unit in unitsController.unitLocations) {
			// Check if the unit belongs to the player
			if (unit.Value.GetComponent<Unit> ().player == playerNumber) {
				// Add the unit's index to the output array
				output.Add (unit.Key);
			}
		}

		return output;
	}
	#endregion

	#region Select the faction /// @name Select the faction
	/**
	 * Function that handles the click of the faction select buttons
	 * @param faction The name of the faction that the player has selected
	 */
	public void doSelectFaction (string faction) {
		doSelectFaction (currentPlayerIndex, faction);
	}

	/**
	 * Function that handles the click of the faction select buttons
	 * @param playerNum The player's array index number
	 * @param faction The name of the faction that the player has selected
	 */
	public void doSelectFaction (int playerNum, string faction) {
		// Get the player's script
		Player player = getPlayer (playerNum).GetComponent<Player> ();

		// Assign the faction
		player.generalSettings.factionName = faction;

		if (!gameController.devTools.devMode) {
			// Move to next screen
			//			uiScript.showCanvas ("Units Select");
		}
	}
	#endregion

	#region updatePoints /// @name updatePoints
	/**
	 * Update the available points to build units
	 * @param playerNum The player's array index number
	 * @param value The number of points to add/subtract
	 * @param isAdd The bool representation of the action to take: true=add false=subtract
	 * @return The new value of the points remaining
	 */
	public int updatePoints (int playerNum, int value, bool isAdd) {
		// Get the player's script
		Player player = getPlayer (playerNum).GetComponent<Player> ();

		if (isAdd) {
			// Add the value
			player.remainingPoints += value;
		} else {
			// Subtract the value
			player.remainingPoints -= value;
		}

		return player.remainingPoints;
	}
	#endregion

	#region destroyPlayer /// @name destroyPlayer
	/**
	 * Destroys the player
	 */
	public void destroyPlayer () {
		// Destroy the GameObject
		Destroy (currentPlayer);

		// Update the alive player count
		alivePlayers--;
	}
	#endregion
}
