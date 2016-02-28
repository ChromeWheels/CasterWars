using UnityEngine;
using System.Collections;

/**
 * The collection of maps
 */
public class Maps : MonoBehaviour {

	public static Maps S = null;

	public GameObject[] maps = null; //!< The collection of map prefabs

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}
}
