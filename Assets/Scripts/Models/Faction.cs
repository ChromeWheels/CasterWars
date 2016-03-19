using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * Superclass for the factions
 */
public class Faction : MonoBehaviour {

	private UnitTypes unitTypeScript = null; //!< Local reference to the UnitTypes script
	private List<Unit> units = null; //!< List containing spawned units
	private Vector3 homeCamp = Vector3.zero; //!< Location of the home camp (Where the new units will spawn)

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		units = new List<Unit> ();

		unitTypeScript = UnitTypes.S;
	}
}
