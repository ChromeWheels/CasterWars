using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * The controller for the maps
 */
public class MapsController : MonoBehaviour {

	public static MapsController S;
	
	public GameObject highlightAttackPrefab = null; //!< The GameObject that is used for highlighting the available tiles that can be attacked
	public GameObject highlightCapturePrefab = null; //!< The GameObject that is used for highlighting the available tiles that can be captured
	public GameObject highlightMovePrefab = null; //!< The GameObject that is used for highlighting the available tiles that can be moved to

	[HideInInspector]
	public List<Vector2> Neighbors {
		get { return neighbors; }
		private set { neighbors = value; }
	} //!< Property method of Vector2[] neighbors
	[HideInInspector]
	public Dimensions Dimensions {
		get { return dimensions; }
		private set { dimensions = value; }
	} //!< Property method of Dimensions dimensions

	private Dimensions dimensions = null; //!< Local copy of the map's dimensions
	private List<GameObject> highlightedTiles = null; //!< Temporary list of highlighted tiles
	private List<int> locationIndexes = null; //!< Temporary list of unique neighbor locations. Used to prevent duplicate locations in List<Vector2> locations
	private Map mapScript = null; //!< Local reference to the Map's script
	private List<Vector2> neighbors = null; //!< Temporary list of neighbors
	private Tiles tilesScript = null; //!< Local reference to the Tiles script instance
	private int startingIndex = 0; //!< Variable used when getting neighbors to prevent adding the starting tile to poosible neighbors
	private Dictionary<int, GameObject> unitLocations = null; //!< Associative array of units and their locations on the map

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;

		unitLocations = new Dictionary<int, GameObject> ();
		highlightedTiles = new List<GameObject> ();
	}

	/**
	 * Runs at load time
	 */
	void Start () {
		// Get the tiles collection
		tilesScript = Tiles.S;
	}

	/**
	 * Constructs and loads the map from index
	 * @param index The index of the map from the list of maps
	 */
	public void construct (int index) {
		// Get the map from the collections
		Maps mapsCollection = Maps.S;
		GameObject mapPrefab = mapsCollection.maps [index];

		// Instantiate the new map
		GameObject map = Instantiate (mapPrefab, new Vector3 (0, -0.1f, 0), Quaternion.identity) as GameObject;

		// For some reason, the map is instatiated upside-down
		map.transform.Rotate (0, 180, 0);

		// Name the map a cool name
		map.name = "Map";

		// Set the parent
		map.transform.SetParent (transform);

		// Get the variables from the map
		mapScript = map.GetComponent<Map> ();

		// Get the dimensions
		dimensions = mapScript.dimensions;

		// Move the map into place
		map.transform.position = new Vector3 ((mapScript.dimensions.width / 2) - 0.5f, map.transform.position.y, (mapScript.dimensions.height / 2) - 0.5f);
	}

	/**
	 * Adds the provided unit to the array of units on the map
	 * @param unit Unit's game object
	 * @param location The location of the unit (location Y will be inverted)
	 */
	public void addUnitToArray (GameObject unit, Vector2 location) {
		// Since the location.Y is inverted, invert it back
		location.y = invertY (location.y);

		// Add the unit to the array
		unitLocations.Add (convertToIndex (location), unit);
	}

	/**
	 * Gets the unit at the provided Vector2 location
	 * 
	 * For protection, use getUnitAtPosition first
	 * @param position The position of the tile to get the unit at
	 * @return Returns the unit at the provided position
	 */
	public GameObject getUnitAtPosition (Vector2 position) {
		return new GameObject ();
	}

	/**
	 * Checks if the given position is occupied
	 * @param position The position to check for units
	 * @return True or not if the position is occupied
	 */
	private bool positionOccupied (Vector2 position) {
		return true;
	}

	/**
	 * Moves the unit at the old position to the new position
	 * @param oldPosition The original position that the unit resides in
	 * @param newPosition The position to move the unit to
	 */
	public void moveUnit (Vector2 oldPosition, Vector2 newPosition) {		
	}

	/**
	 * Removes the unit from the array at the given position
	 * @param position The position of the unit to be removed
	 */
	public void destroyUnitAtPosition (Vector2 position) {
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
	 * Gets all of the neighboring tiles within a movement range
	 * @param location Location of unit's current position
	 * @param range Amount that player can move current unit
	 * @return List of available neighbors
	 */
	public void setNeighbors (Vector2 location, float range) {
		locationIndexes = new List<int> ();
		neighbors = new List<Vector2> ();
		startingIndex = convertToIndex (location);

		traverseNeighbors (location, range);
	}

	/**
	 * Loops through the Vector2 array of locations that is generated by getNeightbors and creates highlighted tiles
	 * @see HighlightActions
	 * @param action The action that will take place. Used to show different tiles per what the player is about to do 
	 */
	public void highlightNeighbors (HighlightActions action) {
		GameObject newHighlight = null;

		foreach (Vector2 location in neighbors) {
			Vector3 pos = new Vector3 (location.x, -0.59f, invertY (location.y));

			switch (action) {
			case HighlightActions.Attack:
				newHighlight = Instantiate (highlightAttackPrefab, pos, Quaternion.identity) as GameObject;
				break;
			case HighlightActions.Capture:
				newHighlight = Instantiate (highlightCapturePrefab, pos, Quaternion.identity) as GameObject;
				break;
			case HighlightActions.Move:
				newHighlight = Instantiate (highlightMovePrefab, pos, Quaternion.identity) as GameObject;
				break;
			}

			newHighlight.transform.parent = transform;
			highlightedTiles.Add (newHighlight);
		}
	}

	/**
	 * Removes all currently highlighted tiles
	 */
	public void removeHighlights () {
		foreach (GameObject tile in highlightedTiles) {
			Destroy (tile);
		}

		highlightedTiles.Clear ();
	}

	/**
	 * Since the map is upside down, the axes needs to be flipped
	 * @param y The y location that needs to be inverted
	 * @return The fixed location
	 */
	private float invertY (float y) {
		return (dimensions.height - 1) - y;
	}

	/**
	 * A recursive function that moves over the neighboring tiles
	 * Runs a breadth first search of the neighboring tiles for all available movement possibilities.
	 * @param location Location of the starting point tile
	 * @param range Remaining movement left
	 */
	private void traverseNeighbors (Vector2 location, float range) {
		int index = convertToIndex (location);
		float movementCost = tilesScript.getMovementCost (getTileType (location));

		if (canMoveFrom (location, range, movementCost)) {
			range -= movementCost;

			// Go left
			if (canMoveTo (new Vector2 (location.x - 1, location.y))) {
				traverseNeighbors (new Vector2 (location.x - 1, location.y), range);
			}

			// Go down
			if (canMoveTo (new Vector2 (location.x, location.y + 1))) {
				traverseNeighbors (new Vector2 (location.x, location.y + 1), range);
			}

			// Go right
			if (canMoveTo (new Vector2 (location.x + 1, location.y))) {
				traverseNeighbors (new Vector2 (location.x + 1, location.y), range);
			}

			// Go up
			if (canMoveTo (new Vector2 (location.x, location.y - 1))) {
				traverseNeighbors (new Vector2 (location.x, location.y - 1), range);
			}
		}

		if (!locationIndexes.Contains (index) && index != startingIndex) {
			locationIndexes.Add (index);
			neighbors.Add (location);
		}
	}

	/**
	 * Generated a unique index to prevent duplicate array entries
	 * @param location Location of the tile
	 * @return A unique index integer
	 */
	private int convertToIndex (Vector2 location) {
		return (int) (location.x + (dimensions.width * location.y));
	}
	/**
	 * Generated a unique index to prevent duplicate array entries
	 * @param x Location of the tile along the x axis
	 * @param y Location of the tile along the y axis
	 * @return A unique index integer
	 */
	private int convertToIndex (float x, float y) {
		return (int) (x + (dimensions.width * y));
	}

	/**
	 * Check to see if the current unit can be moved. Along with canMovedTo
	 * @see canMoveTo
	 * @param location Location of current tile
	 * @param range Available movement left
	 * @param movementCost Cost of moving from current tile
	 * @return Boolean value of availability to move from current tile
	 */
	private bool canMoveFrom (Vector2 location, float range, float movementCost) {
		bool unitOnTile = false;

		return (!unitOnTile && (range - movementCost) >= 0);
	}

	/**
	 * Check to see if the current unit can be moved. Along with canMovedFrom
	 * @see canMoveFrom
	 * @param location Location of future tile
	 * @return Boolean value of availability to move to provided tile
	 */
	private bool canMoveTo (Vector2 location) {
		bool canMove = tilesScript.getCanMove (getTileType (location));
		bool unitOnTile = false;

		return (!unitOnTile && canMove);
	}

	/**
	 * Get the tile type if the provided tile location
	 * @param location Location of the tile to get the type
	 * @return The type of the provided tile
	 */
	private int getTileType (Vector2 location) {
		return mapScript.tiles [(int)location.y, (int)location.x] - 1;
	}
}
