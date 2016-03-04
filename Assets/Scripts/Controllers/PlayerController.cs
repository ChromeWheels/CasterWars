using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * Controller for the players
 */
public class PlayerController : MonoBehaviour {

	public static PlayerController S = null;

	private Players playersCollection = null; //!< Local reference to the players collection
	private MapsController mapsController = null; //!< Local reference to the maps controller

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
		// Get the players collection controller
		playersCollection = Players.S;

		// Get the maps controller
		mapsController = MapsController.S;
	}

	/**
	 * Creates a new player
	 * @return Returns a reference to the new player's controller
	 */
	public GameObject createPlayer () {
		// Create the player
		GameObject newPlayer = new GameObject ();

		// Assign the parent
		newPlayer.transform.SetParent (transform);

		// Name the player
		newPlayer.name = string.Format ("Player {0}", (playersCollection.players.Count + 1));

		// Add a player script to the player
		newPlayer.AddComponent<Player> ();

		// Get the script and set the player number
		newPlayer.GetComponent<Player> ().generalSettings.playerNumber = playersCollection.players.Count;

		// Add the player to the collection
		playersCollection.players.Add (newPlayer);

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
	 * @param The player's number
	 * @return The player
	 */
	public GameObject getPlayer (int index) {
		return playersCollection.players [index];
	}
}
