using UnityEngine;
using System.Collections;

/**
 * Tile class for the road tiles
 */
public class Road : Tile {

	public static Road S;

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}
}
