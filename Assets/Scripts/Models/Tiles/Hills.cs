using UnityEngine;
using System.Collections;

/**
 * Tile class for the hills tiles
 */
public class Hills : Tile {

	public static Hills S;

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}
}
