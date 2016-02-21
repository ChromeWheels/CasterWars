using UnityEngine;
using System.Collections;

public class Grass : Tile {

	public static Grass S;

	void Awake () {
		S = this;
	}
}
