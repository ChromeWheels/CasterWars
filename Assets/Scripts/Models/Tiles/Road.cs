using UnityEngine;
using System.Collections;

public class Road : Tile {

	public static Road S;

	void Awake () {
		S = this;
	}
}
