using UnityEngine;

/**
 * Serializable class to hold the name and prefabs of the factions
 */
[System.Serializable]
public class FactionsList {

	public string factionName = ""; //!< The name of the faction
	public GameObject prefab = null; //!< The prefab of the unit
}
