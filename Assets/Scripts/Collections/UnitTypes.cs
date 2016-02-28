using System;
using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * Collections holder of the available unit types
 */
public class UnitTypes : MonoBehaviour {

	public static UnitTypes S = null;

	public GameObject[] unitTypes = null; //!< The unit type objects

	public Dictionary<string, GameObject> types = null; //!< The associative array of unit types

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake() {
		S = this;

		types = new Dictionary<string, GameObject> ();
		foreach (GameObject type in unitTypes) {
			types.Add (type.name, type);
		}
	}

	/**
	 * Retrieves the unit's cost to the population
	 * @param unitType
	 */
	public int getUnitPopulationCost (string unitType) {
		GameObject obj = null;

		types.TryGetValue (unitType, out obj);

		Unit script = obj.GetComponent<Unit> ();

		return script.generalInformation.populationCost;
	}
}
