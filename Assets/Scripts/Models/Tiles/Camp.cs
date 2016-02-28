using UnityEngine;
using System.Collections;

/**
 * Tile class for the camp tiles
 */
public class Camp : Tile {
	
	public static Camp S;

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}
}
