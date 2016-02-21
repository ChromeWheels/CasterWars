using UnityEngine;
using System.Collections;

public class Water : Tile {

	public static Water S;

	void Awake () {
		S = this;
	}
}
