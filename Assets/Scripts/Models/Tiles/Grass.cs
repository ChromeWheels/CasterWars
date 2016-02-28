using UnityEngine;
using System.Collections;

/**
 * Tile class for the grass tiles
 */
public class Grass : Tile {

	public static Grass S;

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}
}
