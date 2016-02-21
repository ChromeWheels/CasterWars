using UnityEngine;
using System.Collections;

/**
 * Child Tile class that holds the values for the variables
 */
public class Grass : Tile {

	public static Grass S;

	void Awake () {
		S = this;
	}
}
