using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * Collections holder of the available factions for the units
 */
public class UnitFactions : MonoBehaviour {

	public FactionsList[] factions = null; //!< List of factions names and prefabs
	public Dictionary<string, GameObject> units = null; //!< Associative array of the units

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake() {
		// Create an associative array of the units by faction
		units = new Dictionary<string, GameObject>();
		foreach (FactionsList faction in factions) {
			units.Add (faction.factionName, faction.prefab);
		}
	}
}
