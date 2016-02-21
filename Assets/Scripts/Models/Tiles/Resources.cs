using UnityEngine;
using System.Collections;

/**
 * Child Tile class that holds the values for the variables
 */
public class Resources : Tile {

	public static Resources S;

	void Awake () {
		S = this;
	}
}
