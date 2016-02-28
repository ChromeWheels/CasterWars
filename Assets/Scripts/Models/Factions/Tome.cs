using UnityEngine;
using System.Collections;

/**
 * Tome faction
 */
public class Tome : Faction {

	public static Tome S;

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake() {
		S = this;
	}
}
