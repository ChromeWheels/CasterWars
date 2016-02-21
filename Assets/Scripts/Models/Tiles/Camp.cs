using UnityEngine;
using System.Collections;

public class Camp : Tile {
	
	public static Camp S;

	void Awake () {
		S = this;
	}
}
