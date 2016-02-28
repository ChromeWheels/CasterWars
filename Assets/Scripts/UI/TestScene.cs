using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TestScene : MonoBehaviour {

	public void hightlightMove () {
		MapsController s = MapsController.S;
		s.setNeighbors (new Vector2 (16, 80), 3);
		s.highlightNeighbors (HighlightActions.Move);
	}

	public void moveCamera () {
		RemoteCamera s = RemoteCamera.S;
		s.moveTo (new Vector2 (16, 20));
	}

	public void removeNeighbors () {
		MapsController s = MapsController.S;
		s.removeHighlights ();
	}

	public void createUnits () {
		Tome s = Tome.S;
		s.createUnit ();
	}
}
