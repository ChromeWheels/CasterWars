using UnityEngine;

/**
 * Helper class for the general setting for the players
 */
[System.Serializable]
public class GeneralSettings {

	[HideInInspector]
	public string factionName = null; //!< The chosen faction for the player
	[HideInInspector]
	public int playerNumber = 0; //!< The player's number in terms of the players collection
}
