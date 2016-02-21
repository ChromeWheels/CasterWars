using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Maps : MonoBehaviour {

	public static Maps S;

	public GameObject[] maps;

	void Awake () {
		S = this;
	}

	void Start() {
		Vector3 pos = new Vector3 (0, -0.1f, 0);
		GameObject map = Instantiate (maps [0], pos, Quaternion.identity) as GameObject;
		map.transform.Rotate (0, 180, 0);
		map.name = "Map";
	}
}
