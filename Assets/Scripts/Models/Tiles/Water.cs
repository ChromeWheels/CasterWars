using UnityEngine;
using System.Collections;

/**
 * Child Tile class that holds the values for the variables
 */
public class Water : Tile {

	public static Water S;

	void Awake () {
		S = this;
	}
}
