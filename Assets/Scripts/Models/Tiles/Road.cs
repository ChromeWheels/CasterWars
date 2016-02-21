using UnityEngine;
using System.Collections;

/**
 * Child Tile class that holds the values for the variables
 */
public class Road : Tile {

	public static Road S;

	void Awake () {
		S = this;
	}
}
