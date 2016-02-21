using UnityEngine;
using System.Collections;

public class Temple : Tile {

	public static Temple S;

	void Awake () {
		S = this;
	}
}
