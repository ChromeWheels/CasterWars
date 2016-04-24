using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

/**
 * The collection of maps
 */
public class Maps : MonoBehaviour {

	public static Maps S = null;

	public MapHolder[] maps = null; //!< The collection of map holders

	private List<GameObject>[] mapsBySize = null; //!< A multi-dimensional array of the maps sorted by size

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;

		// Initialize the maps array
		mapsBySize = new List<GameObject>[5] {
			null, // Not used as there will be no 0 player maps
			new List<GameObject> (),
			new List<GameObject> (),
			new List<GameObject> (),
			new List<GameObject> ()
		};

		parseMaps ();
	}

	/**
	 * Transforms the maps array into a multi-dimensional array based on the number of players alloted
	 */
	private void parseMaps () {
		// Loop through the map holders array
		foreach (MapHolder map in maps) {
			// Add the map to the mapsBySize array in the index by player amount
			mapsBySize [map.players].Add (map.prefab);
		}
	}

	/**
	 * Gives a random map for the requested amount of players
	 * @param players The number of players in this game
	 * @return The GameObject prefab of the map
	 */
	public GameObject getRandomMap (int players) {
		// Get a random number for the map's index from 0-n
		// Where n is the number of maps available for the number of players
		int index = Mathf.RoundToInt (UnityEngine.Random.Range (0, (mapsBySize [players].Count - 1)));

		GameController.showDebug (string.Format ("Getting {0} player map at index {1}", players, index));

		// Return the map at the random range
		return mapsBySize [players] [index];
	}
}
