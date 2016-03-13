using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * The controller for the map tiles
 */
public class TilesController : MonoBehaviour {

	public static TilesController S = null;

	public GameObject bombCraterPrefab = null; //!< The prefab of the disabled tiles
	public float craterOffset = -0.59f; //!< The initial y position of the bomb craters

	[HideInInspector]
	public Dictionary<int, GameObject> disabledTiles = null; //!< An associative array of disabled tiles and the GameObject
	[HideInInspector]
	public Dictionary<int, int> remainingResources = null; //!< An associative array of remaining resources

	private Dictionary<int, GameObject> updatedDisabledTiles = null; //!< A temporary associative array of disabled tiles and the GameObject

	/**
	 * Controllers
	 */
	private MapsController mapsController = null; //!< Local reference to the MapsController
	private Tiles tilesCollection = null; //!< Local reference to the Tiles collection
	private TurnsController turnsController = null; //!< Local reference to the TurnsController

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;

		// Initialize the arrays
		disabledTiles = new Dictionary<int, GameObject> ();
		remainingResources = new Dictionary<int, int> ();
		updatedDisabledTiles = new Dictionary<int, GameObject> ();
	}

	/**
	 * Runs at load time
	 */
	void Start () {
		mapsController = MapsController.S;
		tilesCollection = Tiles.S;
		turnsController = TurnsController.S;
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
	 * @param index The int representation of the location as given by MapsController.convertToIndex (Vector2)
	 * @return Returns the boolean value that is set in the Unity inspector
	 */
	public bool getCanMove (int tileType, int index) {
		return (tilesCollection.tiles [tileType].GetComponents<Tile> () [0].canMove && !isDisabled (index));
	}

	/**
	 * Retrieves the ability to capture resources on the tile
	 * @param tileType The integer index in the tiles[] array
	 * @return Returns the boolean value that is set in the Unity inspector
	 */
	public bool getCanCapture (int tileType) {
		return tilesCollection.tiles [tileType].GetComponents<Tile> () [0].canCapture;
	}

	/**
	 * Checks if the tile at the given location has been initialized
	 * @param location The location of the tile
	 * @return The boolean value of if the tile is in the array
	 */
	public bool hasResources (Vector2 location) {
		// Get the index
		int index = mapsController.convertToIndex (location);

		return remainingResources.ContainsKey (index);
	}

	/**
	 * Checks if the tile at the given location has been initialized
	 * @see convertToIndex
	 * @param index The int representation of the location as given by MapsController.convertToIndex (Vector2)
	 * @return The boolean value of if the tile is in the array
	 */
	public bool hasResources (int index) {
		return remainingResources.ContainsKey (index);
	}

	/**
	 * Initializes the resources for the given tile
	 * @param location The location of the tile
	 */
	public void setResources (Vector2 location) {
		// Get the index
		int index = mapsController.convertToIndex (location);

		// Call the actual function that does the work
		setResources (index);
	}

	/**
	 * Initializes the resources for the given tile
	 * @see convertToIndex
	 * @param index The int representation of the location as given by MapsController.convertToIndex (Vector2)
	 */
	public void setResources (int index) {
		// Double check that the tile isn't already set in the array
		if (hasResources (index)) {
			// Set the initial value
			Resource resource = Resource.S;
			remainingResources.Add (index, resource.initialResources);
		}
	}

	/**
	 * Get the remaining resources for the tile at the given location
	 * @param location The location of the tile
	 */
	public int getResources (Vector2 location) {
		// Get the index
		int index = mapsController.convertToIndex (location);

		// If there is no resources for this tile, add it first
		if (!hasResources (index)) {
			setResources (index);
		}

		// Initialize the output
		int output = 0;

		// Get the remainingResources amount
		remainingResources.TryGetValue (index, out output);

		return output;
	}

	/**
	 * Disables the given location
	 * @param location The location of the tile to disable
	 * @param numOfTurns The number of turns to disable the tile for
	 */
	public void disableTile (Vector2 location, int numOfTurns) {
		// Get the index
		int index = mapsController.convertToIndex (location);

		// Ensure that the tile is not in the array
		if (!isDisabled (index)) {
			// Create the new position based on the location
			Vector3 pos = new Vector3 (location.x, craterOffset, mapsController.invertY (location.y));

			// Intantiate the prefab
			GameObject newTile = Instantiate (bombCraterPrefab, pos, Quaternion.identity) as GameObject;

			// Set the parent
			newTile.transform.SetParent (GameObject.Find ("Disabled Tiles").transform);

			// Get the script
			DisabledTile script = newTile.GetComponent<DisabledTile> ();

			// Set the player's number
			script.playerNumber = turnsController.getCurrentPlayerNumber ();

			// Set the amount of remaining turns
			script.turnsLeft = numOfTurns;

			// Set the new value
			disabledTiles.Add (index, newTile);
		}
	}

	/**
	 * Updates the remaining movement counts of tiles
	 */
	public void updateTiles () {
		// Initialize the temporary array
		updatedDisabledTiles = new Dictionary<int, GameObject> ();

		// Loop through the tiles in the array
		foreach (KeyValuePair<int, GameObject> tile in disabledTiles) {
			// Get the script
			DisabledTile script = tile.Value.GetComponent<DisabledTile> ();

			// Get the current movement count
			int currentCount = script.turnsLeft;

			// Update the count if the current player is the player that disabled the tile
			if (turnsController.getCurrentPlayerNumber () == script.playerNumber) {
				// Enable the tile if the wait is up
				if ((currentCount - 1) <= 0) {
					// Destroy the GameObject
					Destroy (tile.Value);
				} else {
					// Update the count
					script.turnsLeft--;
				}
			}

			// Add the tile to the updated array
			updatedDisabledTiles.Add (tile.Key, tile.Value);
		}

		// Replace the main array with the updated array
		disabledTiles = updatedDisabledTiles;

		// Reset the temporary array
		updatedDisabledTiles = null;
	}

	/**
	 * Get the boolean disabled status of the provided tile
	 * @param location The location of the tile to disable
	 * @return The disabled status of the given tile
	 */
	private bool isDisabled (Vector2 location) {
		// Get the index
		int index = mapsController.convertToIndex (location);

		return isDisabled (index);
	}


	/**
	 * Get the boolean disabled status of the provided tile
	 * @param index The integer representation of the tile's location
	 * @return The disabled status of the given tile
	 */
	private bool isDisabled (int index) {
		return disabledTiles.ContainsKey (index);
	}
}
