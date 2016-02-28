using UnityEngine;
using System.Collections;

/**
 * Tile class for the resources tiles
 */
public class Resource : Tile {

	public static Resource S;

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}
}
