using UnityEngine;
using System.Collections;

/**
 * The controller for the map tiles
 */
public class TilesController : MonoBehaviour {

	public static TilesController S = null;

	private Tiles tilesCollection = null; //!< Local reference to the tiles collection

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}

	/**
	 * Runs at load time
	 */
	void Start () {
		tilesCollection = Tiles.S;
	}

	/**
	 * Retrieves the movement cost from the tile with the provided tile type
	 * @see Tile.movementCost
	 * @param tileType The integer index in the tiles[] array
	 * @return Returns a float float value of the movement cost
	 */
	public float getMovementCost (int tileType) {
		return tilesCollection.tiles [tileType].GetComponents<Tile> () [0].movementCost;
	}

	/**
	 * Retrieves the ability to move onto the tile with the provided tile type
	 * @see Tile.canMove
	 * @param tileType The integer index in the tiles[] array
	 * @return Returns the boolean value that is set in the Unity inspector
	 */
	public bool getCanMove (int tileType) {
		return tilesCollection.tiles [tileType].GetComponents<Tile> () [0].canMove;
	}

	/**
	 * Retrieves the ability to capture resources on the tile
	 * @param tileType The integer index in the tiles[] array
	 * @return Returns the boolean value that is set in the Unity inspector
	 */
	public bool getCanCapture (int tileType) {
		return tilesCollection.tiles [tileType].GetComponents<Tile> () [0].canCapture;
	}
}
