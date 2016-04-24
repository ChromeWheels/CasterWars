using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

/**
 * The controller for the maps
 */
public class MapsController : MonoBehaviour {

	public static MapsController S;

	[HideInInspector]
	public List<int> locationIndexes = null; //!< Temporary list of unique neighbor locations. Used to prevent duplicate locations in List<Vector2> locations
//	[HideInInspector]
	public Map mapScript = null; //!< Local reference to the Map's script
	[HideInInspector]
	public Dimensions dimensions = null; //!< Local copy of the map's dimensions

	private float offset = 0; //!< The offset of the map

	#region /// @name Controller vars
	private MovementController movementController = null; //!< The local reference to the movement's controller
	private ResourceTileController resourceTileController = null; //!< The local reference to the resource tile's controller
	private TilesController tilesController = null; //!< The local reference to the TilesController
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
		movementController = MovementController.S;
		resourceTileController = ResourceTileController.S;
		tilesController = TilesController.S;


	}
	#endregion

	/**
	 * Constructs and loads the map
	 * @param players The number of players in the game
	 */
	public void construct (int players) {
		// Get a map from the collections
		Maps mapsCollection = Maps.S;
		GameObject mapPrefab = mapsCollection.getRandomMap (players);
		GameController.showDebug ("map: " + mapPrefab.name);

		// Instantiate the new map
		GameObject map = Instantiate (mapPrefab, new Vector3 (0, -0.1f, 0), Quaternion.identity) as GameObject;

		// For some reason, the map is instatiated upside-down
		map.transform.Rotate (0, 180, 0);

		// Name the map a cool name
		map.name = "Map";

		// Set the parent
		map.transform.SetParent (GameObject.Find ("Maps").transform);

		// Get the variables from the map
		mapScript = map.GetComponent<Map> ();

		// Get the dimensions
		dimensions = mapScript.dimensions;

		// Resize the map
		map.transform.localScale = new Vector3 ((dimensions.width * 0.10f), 1, (dimensions.height * 0.10f));

		// Move the map into place
		map.transform.position = new Vector3 (((mapScript.dimensions.width / 2) - offset), map.transform.position.y, ((mapScript.dimensions.height / 2) - offset));

		// Setup the resources
		resourceTileController.initResources (mapScript.resourceTile);
	}

	/**
	 * Gets an array of places to place the new unit(s) based on the provided size
	 * @param size The number of new unit(s) that need to be created
	 * @param playerNumber The number of the player... used to get the starting location
	 * @return The array of starting places
	 */
	public List<Vector2> getStartingGrid (int size, int playerNumber) {
		// Initialize the array
		List<Vector2> startingPositions = new List<Vector2> ();

		// Get the starting position based on the player
		Vector3 startingLocation = mapScript.startingLocations[playerNumber];

		// Reasign the x and y locations
		float x = startingLocation.x;
		float y = invertY (startingLocation.y);

		// Add the commander's tile
		Vector2 commaderStartingLocation = mapScript.commanderStartingLocations[playerNumber];
		startingPositions.Add (new Vector2 (commaderStartingLocation.x, invertY (commaderStartingLocation.y)));

		// Temporary variables that will be used
		float xDiff = 0;
		float yDiff = 0;

		// Add the other postitions by running through a loop
		// This is not the best approach, but it will work right now
		for (int i = 0; i < size; i++) {
			// Reset the differences
			xDiff = 0;
			yDiff = 0;

			// set the location in the circle based on the index
			switch (i) {
			case 1: // + top
				yDiff = 1;
				break;
			case 2: // + left
				xDiff = -1;
				break;
			case 3: // + bottom
				yDiff = -1;
				break;
			case 4: // + right
				xDiff = 1;
				break;
			case 5: // x top-left
				xDiff = -1;
				yDiff = 1;
				break;
			case 6: // x bottom-left
				xDiff = -1;
				yDiff = -1;
				break;
			case 7: // x bottom-right
				xDiff = 1;
				yDiff = -1;
				break;
			case 8: // x top-right
				xDiff = 1;
				yDiff = 1;
				break;
			case 9: // 2nd layer + top
				yDiff = 2;
				break;
			case 10: // 2nd layer + left
				xDiff = -2;
				break;
			case 11: // 2nd layer + down
				yDiff = -2;
				break;
			case 12: // 2nd layer + right
				xDiff = 2;
				break;
			case 13: // 2nd layer top-left-top
				xDiff = -1;
				yDiff = 2;
				break;
			case 14: // 2nd layer left-top-left
				xDiff = -2;
				yDiff = 1;
				break;
			case 15: // 2nd layer left-botom-left
				xDiff = -2;
				yDiff = -1;
				break;
			case 16: // 2nd layer bottom-left-bottom
				xDiff = -1;
				yDiff = -2;
				break;
			case 17: // 2nd layer bottom-right-bottom
				xDiff = 1;
				yDiff = -2;
				break;
			case 18: // 2nd layer right-bottom-right
				xDiff = 2;
				yDiff = -1;
				break;
			case 19: // 2nd layer right-top-right
				xDiff = 1;
				yDiff = 1;
				break;
			case 20: // 2nd layer top-right-top
				xDiff = 1;
				yDiff = 2;
				break;
			}

			// Set the position and add to array
			startingPositions.Add (new Vector2 ((x + xDiff), (y + yDiff)));
		}

		return startingPositions;
	}

	/**
	 * Converts a Vector3 location to a Vector2 location
	 * @param location The Vector3 location
	 * @return Returns the Vector2 conversion of the provided location
	 */
	public Vector2 convertLocation (Vector3 location) {
		return new Vector2 (location.x, location.z);
	}

	/**
	 * Generated a unique index to prevent duplicate array entries
	 * @param location Location of the tile
	 * @return A unique index integer
	 */
	public int convertToIndex (Vector2 location) {
		return (int) (location.x + (dimensions.width * location.y));
	}

	/**
	 * Generated a unique index to prevent duplicate array entries
	 * @param x Location of the tile along the x axis
	 * @param y Location of the tile along the y axis
	 * @return A unique index integer
	 */
	public int convertToIndex (float x, float y) {
		return (int) (x + (dimensions.width * y));
	}

	/**
	 * Since the map is upside down, the y axis needs to be flipped
	 * @param y The y location that needs to be inverted
	 * @return The fixed location
	 */
	public float invertY (float y) {
		return (dimensions.height - 1) - y;
	}

	/**
	 * A recursive function that moves over the neighboring tiles
	 * Runs a breadth first search of the neighboring tiles for all available movement possibilities.
	 * @param location Location of the starting point tile
	 * @param range Remaining movement left
	 */
	public void traverseNeighbors (Vector2 location, float range) {
		// Get the index of the current location
		int index = convertToIndex (location);

		// Get the movement cost to move out of the current location
		float movementCost = movementController.getMovementCost (location);

		// Recursively move to the next tile if you can
		if (movementController.canMoveFrom (location, range, movementCost)) {
			// Take away the cost to move away from the current location
			range -= movementCost;

			// Go left
			if (movementController.canMoveTo (new Vector2 (location.x - 1, location.y))) {
				traverseNeighbors (new Vector2 (location.x - 1, location.y), range);
			}

			// Go down
			if (movementController.canMoveTo (new Vector2 (location.x, location.y + 1))) {
				traverseNeighbors (new Vector2 (location.x, location.y + 1), range);
			}

			// Go right
			if (movementController.canMoveTo (new Vector2 (location.x + 1, location.y))) {
				traverseNeighbors (new Vector2 (location.x + 1, location.y), range);
			}

			// Go up
			if (movementController.canMoveTo (new Vector2 (location.x, location.y - 1))) {
				traverseNeighbors (new Vector2 (location.x, location.y - 1), range);
			}
		}

		// If the current location is not already in the locations array and is not the starting spot, then add it
		if (!locationIndexes.Contains (index) && index != movementController.startingIndex) {
			locationIndexes.Add (index);
			movementController.addMove (location, tilesController.getTileAction (location, index));
		}
	}
}
