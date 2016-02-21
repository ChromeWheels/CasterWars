using UnityEngine;
using System.Collections;

/**
 * Child Tile class that holds the values for the variables
 */
public class Mountains : Tile {

	public static Mountains S;

	void Awake () {
		S = this;
	}
}
