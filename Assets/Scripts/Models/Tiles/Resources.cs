using UnityEngine;
using System.Collections;

public class Resources : Tile {

	public static Resources S;

	void Awake () {
		S = this;
	}
}
