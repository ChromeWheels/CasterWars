using UnityEngine;
using System.Collections;

/**
 * Tile class for the mountains tiles
 */
public class Mountains : Tile {

	public static Mountains S;

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}
}
