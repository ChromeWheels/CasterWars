using UnityEngine;
using System.Collections;

/**
 * Child Tile class that holds the values for the variables
 */
public class Forest : Tile {

	public static Forest S;

	void Awake () {
		S = this;
	}
}
