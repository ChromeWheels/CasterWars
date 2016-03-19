using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

/**
 * The controller for the map tiles
 */
public class TilesController : MonoBehaviour {

	public static TilesController S = null;

	private Tiles tilesCollection = null; //!< Local reference to the Tiles collection

	#region /// @name Controller vars
	private GameController gameController = null; //!< The local reference to the game controller
	private MapsController mapsController = null; //!< The local reference to the maps controller
	private ResourceTileController resourceTileController = null; //!< The local reference to the resource tile's controller
	private UnitsController unitsController = null; //!< The local reference to the unit's controller
	#endregion

	#region /// @name Unity methods
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
		gameController = GameController.S;
		mapsController = MapsController.S;
		resourceTileController = ResourceTileController.S;
		unitsController = UnitsController.S;

		tilesCollection = Tiles.S;
	}
	#endregion

	/**
	 * Gets the game object of the tile type
	 * @param tileType The array index of the tile's type
	 * @return The GameObject of the tile
	 */
	public GameObject getTile (int tileType) {
		return tilesCollection.tiles [tileType];
	}

	#region /// @name Tile types
	/**
	 * Get the tile type if the provided tile location
	 * @param location Location of the tile to get the type
	 * @return The type of the provided tile
	 */
	public int getTileType (Vector2 location) {
		try {
			return mapsController.mapScript.tiles [(int)location.y, (int)location.x] - 1;
		} catch (Exception e) {
			Debug.Log (location);
			Debug.Log (e.ToString ());
			return 0;
		}
	}

	/**
	 * Get the tile type if the provided tile location
	 * @param index The integer index representation of the Vector2 location
	 * @return The type of the provided tile
	 */
	public int getTileType (int index) {
		try {
			// Get the tile at the index
			GameObject tile = null;
			unitsController.unitLocations.TryGetValue (index, out tile);

			// Send back the tile type
			return mapsController.mapScript.tiles [(int)tile.transform.position.z, (int)tile.transform.position.x] - 1;
		} catch (Exception e) {
			Debug.Log (index);
			Debug.Log (e.ToString ());
			return 0;
		}
	}
	#endregion

	#region /// @name Tile actions
	/**
	 * Gets the HighlightActions for the provided location
	 * @param location The Vector2 location of the tile
	 * @return The action of the provided tile from getTileAction (Vector2, int)
	 */
	public HighlightActions getTileAction (Vector2 location) {
		return getTileAction (location, mapsController.convertToIndex (location));
	}

	/**
	 * Gets the HighlightActions for the provided location
	 * @param location The Vector2 location of the tile
	 * @param index The integer index representation of the Vector2 location
	 * @return The action of the provided tile
	 */
	public HighlightActions getTileAction (Vector2 location, int index) {
		// Initialize the output
		HighlightActions action = HighlightActions.Move;

		// Check if there is a unit on the current tile
		if (unitsController.unitLocations.ContainsKey (index) && !gameController.populationSettings.canMoveThroughFriendlies) {
			action = HighlightActions.Attack;
		}

		// Check if tile can be captured
		if (resourceTileController.getCanCapture (getTileType (location))) {
			action = HighlightActions.Capture;
		}

		return action;
	}
	#endregion
}
