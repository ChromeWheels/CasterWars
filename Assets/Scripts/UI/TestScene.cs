using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TestScene : MonoBehaviour {
	public void getNeighbors () {
		_Level_01 s = _Level_01.S;
		List<Vector2> neighbors = s.getNeighbors (new Vector2 (16, 80), 3);
		s.highlightNeighbors (neighbors);
	}
}
