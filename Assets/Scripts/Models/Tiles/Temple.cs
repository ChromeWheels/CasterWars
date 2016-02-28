using UnityEngine;
using System.Collections;

/**
 * Tile class for the temple tiles
 */
public class Temple : Tile {

	public static Temple S;

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}
}
