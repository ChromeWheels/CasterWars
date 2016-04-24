using UnityEngine;

/**
 * The serializable class that holds the information about a map
 */
[System.Serializable]
public class MapHolder {

	[Range (2, 4)]
	public int players = 2; //!< The number of players on this map
	public GameObject prefab = null; //!< The collection of map prefabs
}
