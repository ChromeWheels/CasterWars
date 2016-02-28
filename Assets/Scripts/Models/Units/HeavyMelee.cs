using UnityEngine;
using System.Collections;

/**
 * Superclass for all melee heavy units
 */
public class HeavyMelee : Unit {

	public static HeavyMelee S;

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}
}
