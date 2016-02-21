using UnityEngine;
using System.Collections;

public class Forest : Tile {

	public static Forest S;

	void Awake () {
		S = this;
	}
}
