using UnityEngine;
using System.Collections;

/**
 * Child Tile class that holds the values for the variables
 */
public class Hills : Tile {

	public static Hills S;

	void Awake () {
		S = this;
	}
}
