using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * Controller for the players
 */
public class PlayerController : MonoBehaviour {

	public static PlayerController S = null;

	private Players playersScript = null;

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;

		playersScript = Players.S;
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
		newPlayer.name = string.Format ("Player {0}", (playersScript.players.Count + 1));

		// Add a player script to the player
		newPlayer.AddComponent<Player> ();

		// Add the player to the collection
		playersScript.players.Add (newPlayer);

		return newPlayer;
	}

	/**
	 * Creates the new units and assigns them to the provided player
	 * @param currentPlayer The player to add the units to
	 * @param unitCounts Associative array of which units to build and how many of them 
	 */
	public void createUnits (Player currentPlayer, Dictionary<string, int> unitCounts) {
		
	}
}
