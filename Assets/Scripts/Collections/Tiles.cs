using UnityEngine;
using System.Collections;

/**
 * The collection of tiles
 */
public class Tiles : MonoBehaviour {

	public static Tiles S = null;

	public GameObject[] tiles = null; //!< The collection of tile prefabs

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}
}
