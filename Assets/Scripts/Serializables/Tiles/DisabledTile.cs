using UnityEngine;
using System.Collections;

/**
 * Helper class that holds the information for disabled tiles
 */
public class DisabledTile : MonoBehaviour {

	[HideInInspector]
	public int playerNumber = 0; //!< The player's number that caused the tile's disabling
	[HideInInspector]
	public int turnsLeft = 0; //!< The amount of turns left before the tile is re-enabled
}
