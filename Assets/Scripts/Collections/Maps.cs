using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * The collection of maps
 */
public class Maps : MonoBehaviour {

	public static Maps S;

	public GameObject[] maps; //!< The collection of map prefabs

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}

	/**
	 * Runs at load time
	 */
	void Start() {
		Vector3 pos = new Vector3 (0, -0.1f, 0);
		GameObject map = Instantiate (maps [0], pos, Quaternion.identity) as GameObject;
		map.transform.Rotate (0, 180, 0);
		map.name = "Map";
		map.transform.parent = transform;
	}
}
