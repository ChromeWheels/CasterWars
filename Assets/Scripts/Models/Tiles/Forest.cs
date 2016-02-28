using UnityEngine;
using System.Collections;

/**
 * Tile class for the forest tiles
 */
public class Forest : Tile {

	public static Forest S;

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}
}
