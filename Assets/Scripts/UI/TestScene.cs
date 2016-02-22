using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TestScene : MonoBehaviour {

	public void hightlightNeighbors () {
		_Level_01 s = _Level_01.S;
		s.setNeighbors (new Vector2 (16, 80), 3);
		s.highlightNeighbors ();
	}

	public void moveCamera () {
		RemoteCamera s = RemoteCamera.S;
		s.moveTo (new Vector2 (16, 20));
	}

	public void removeNeighbors () {
		_Level_01 s = _Level_01.S;
		s.removeHighlights ();
	}
}
