using UnityEngine;
using System.Collections;

/**
 * The collection of tiles
 */
public class Tiles : MonoBehaviour {

	public static Tiles S = null;

	public GameObject[] tiles = null; //!< The collection of tile prefabs

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}

	/**
	 * Retrieves the movement cost from the tile with the provided tile type
	 * @see Tile.movementCost
	 * @param tileType The integer index in the tiles[] array
	 * @return Returns a float float value of the movement cost
	 */
	public float getMovementCost (int tileType) {
		return tiles [tileType].GetComponents<Tile> () [0].movementCost;
	}

	/**
	 * Retrieves the ability to move onto the tile with the provided tile type
	 * @see Tile.canMove
	 * @param tileType The integer index in the tiles[] array
	 * @return Returns the boolean value that is set in the Unity inspector
	 */
		public bool getCanMove (int tileType) {
		return tiles [tileType].GetComponents<Tile> () [0].canMove;
	}
}
