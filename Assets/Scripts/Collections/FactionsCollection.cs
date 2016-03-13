using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * The collections class for the factions
 */
public class FactionsCollection : MonoBehaviour {

	public static FactionsCollection S = null;

	public GameObject[] factions = null; //!< List of factions prefabs
	public Dictionary<string, GameObject> factionsArray = null; //!< Associative array of the units

	[HideInInspector]
	public List<string> factionNames = null; //!< List of faction names

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake() {
		S = this;

		// Create an associative array of the units by faction
		factionsArray = new Dictionary<string, GameObject>();
		foreach (GameObject faction in factions) {
			factionsArray.Add (faction.name, faction);
			factionNames.Add (faction.name);
		}
	}
}
