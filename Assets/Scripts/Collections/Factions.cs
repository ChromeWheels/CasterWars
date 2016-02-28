using UnityEngine;
using System.Collections;

/**
 * Collections holder of the available factions
 */
public class Factions : MonoBehaviour {

	public static Factions S = null;

	public FactionsList[] factions = null; //!< List of factions names and prefabs

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake() {
		S = this;

//		foreach (FactionsList faction in factions) {
//			Instantiate (faction.prefab, Vector3.zero, Quaternion.identity);
//		}
	}
}
