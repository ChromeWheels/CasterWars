using UnityEngine;
using System.Collections;

/**
 * Child Tile class that holds the values for the variables
 */
public class Temple : Tile {

	public static Temple S;

	void Awake () {
		S = this;
	}
}
