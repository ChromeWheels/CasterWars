using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * Controller for the players
 */
public class PlayerController : MonoBehaviour {

	public static PlayerController S = null;

	/**
	 * Controllers
	 */
	private Game gameController = null; //!< Local reference to the game controller
	private MapsController mapsController = null; //!< Local reference to the maps controller
	private Players playersCollection = null; //!< Local reference to the players collection

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
		gameController = Game.S;
		mapsController = MapsController.S;
		playersCollection = Players.S;
	}

	/**
	 * Creates a new player
	 * @return Returns a reference to the new player's controller
	 */
	public GameObject createPlayer () {
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

		return newPlayer;
	}

	/**
	 * Retrieves the number of players
	 */
	public int getNumPlayers () {
		return playersCollection.players.Count;
	}

	/**
	 * Gets the player based on the player's number
	 * @param index The player's number
	 * @return The player
	 */
	public GameObject getPlayer (int index) {
		return playersCollection.players [index];
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
}
