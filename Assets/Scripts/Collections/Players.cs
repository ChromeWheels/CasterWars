using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * Collection of players
 */
public class Players : MonoBehaviour {

	public static Players S = null;

	[HideInInspector]
	public List<GameObject> players = null; //!< Holder of the players

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;

		players = new List<GameObject> ();
	}
}
