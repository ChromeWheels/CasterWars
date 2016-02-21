using UnityEngine;
using System.Collections;

/**
 * Child Tile class that holds the values for the variables
 */
public class City : Tile {

	public static City S;

	void Awake () {
		S = this;
	}
}
