using UnityEngine;
using System.Collections;

/**
 * Child Tile class that holds the values for the variables
 */
public class Camp : Tile {
	
	public static Camp S;

	void Awake () {
		S = this;
	}
}
