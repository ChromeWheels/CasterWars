using UnityEngine;
using System.Collections;

public class City : Tile {

	public static City S;

	void Awake () {
		S = this;
	}
}
