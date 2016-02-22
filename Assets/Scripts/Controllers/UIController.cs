using UnityEngine;
using System.Collections;

public class UIController : MonoBehaviour {

	public GameObject buttons;
	public GameObject arrows;

	public void showHideButtons (bool doShow) {
		buttons.SetActive (doShow);
	}

	public void showHideArrows (bool doShow) {
		arrows.SetActive (doShow);
	}
}
