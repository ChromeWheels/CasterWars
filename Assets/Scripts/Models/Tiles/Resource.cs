using UnityEngine;
using System.Collections;

/**
 * Tile class for the resources tiles
 */
public class Resource : Tile {

	public static Resource S;

	public float initialResources = 5; //!< The initial amount of resources that the tiles have
	public bool persistantResourceTileOwnership = false; //!< The ability to capture a tile and then move on while still earning
														 //!<
														 //!< True: Once captured, the tile will earn the player resources regardless of unit's location
														 //!< False: In order to earn resources, there must always have a unit on the tile
	public int resourcesPerTurn = 1; //!< The amount of resources awarded per turn
	public int turnsToCapture = 3; //!< The number of turns it takes to capture a tile
	public int turnsToLose = 3; //!< The number of turns it takes to lose a tile if persistantResourceTileOwnership is off

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}
}
