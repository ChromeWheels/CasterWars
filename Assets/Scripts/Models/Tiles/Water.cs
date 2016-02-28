using UnityEngine;
using System.Collections;

/**
 * Tile class for the water tiles
 */
public class Water : Tile {

	public static Water S;

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}
}
