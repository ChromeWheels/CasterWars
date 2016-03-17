using UnityEngine;

/**
 * Helper class that holds the information about a captured/capturing tile
 */
public class CapturedTile {

	public bool isCaptured = false; //!< The captured status of tile
	public bool isCapturing = false; //!< The capturing status of the tile
	public bool isEmpty = false; //!< The empty status of the tile
	public bool isVacating = false; //!< The vacating status of the tile
	public Vector2 location = Vector2.zero; //!< The Vector2 location of the tile
	public int owner = 100; //!< The player that is/has captured this tile
	public float remainingResources = 0; //!< The amount of resources that is left
	public int turnsLeft = 0; //!< The turns left to capture/lose the tile

	/**
	 * Constructs the newly instantiated class
	 * @param loc The value of the Vector2 location
	 * @param remaining The value of the float remainingResources
	 * @param turns The value of the int turnsLeft
	 */
	public void construct (Vector2 loc, float remaining, int turns) {
		location = loc;
		remainingResources = remaining;
		turnsLeft = turns;
	}
}
