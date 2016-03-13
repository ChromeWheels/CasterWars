using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * The model that holds the individual player's information
 */
public class Player : MonoBehaviour {

	public static Player S;

	public GeneralSettings generalSettings; //!< Holder for the general settings helper class

	[HideInInspector]
	public List<GameObject> units = null; //!< The array of units that belongs to the player
	[HideInInspector]
	public bool commanderIsAlive = true; //!< Boolean value of if the commander is alive or not
	[HideInInspector]
	public int remainingPoints = 0; //!< The current points available for the player to build units

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;

		generalSettings = new GeneralSettings ();

		units = new List<GameObject> ();
	}
}
