﻿using UnityEngine;
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
	public Dictionary<Vector2, HighlightActions> Moves {
		get { return moves; }
		private set { moves = value; }
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
	private Dictionary<Vector2, HighlightActions> moves = null; //!< Temporary list of possible moves
	private TilesController tilesController = null; //!< Local reference to the TilesController
	private int startingIndex = 0; //!< Variable used when getting neighbors to prevent adding the starting tile to poosible neighbors
	private Dictionary<int, GameObject> unitLocations = null; //!< Associative array of units and their locations on the map
	private TurnsController turnsController = null; //!< Local reference to the turns controller
	private Game gameController = null; //!< Local reference to the game's controller

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
		tilesController = TilesController.S;
		turnsController = TurnsController.S;
		gameController = Game.S;
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
		map.transform.SetParent (GameObject.Find ("Maps").transform);

		// Get the variables from the map
		mapScript = map.GetComponent<Map> ();

		// Get the dimensions
		dimensions = mapScript.dimensions;

		// Move the map into place
		map.transform.position = new Vector3 ((mapScript.dimensions.width / 2) - 0.5f, map.transform.position.y, (mapScript.dimensions.height / 2) - 0.5f);

		// Give the map's dimensions to the remote camera
		RemoteCamera rCamera = RemoteCamera.S;
		rCamera.mapDimension = dimensions;
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
		// Initialize the output
		GameObject unit = null;

		// Get the unit
		unitLocations.TryGetValue (convertToIndex (position), out unit);

		return unit;
	}

	/**
	 * Moves the unit at the old position to the new position
	 * @param oldPosition The original position that the unit resides in
	 * @param newPosition The position to move the unit to
	 */
	public void moveUnit (Vector2 oldPosition, Vector2 newPosition) {
		// Initialize the temp GameObject
		GameObject tmp = null;

		// Get the indices
		int oldIndex = convertToIndex (oldPosition);
		int newIndex = convertToIndex (newPosition);

		// Retreive the unit from the array
		unitLocations.TryGetValue (oldIndex, out tmp);

		// Remove the old value from the array
		unitLocations.Remove (oldIndex);

		// Add the new value
		unitLocations.Add (newIndex, tmp);
	}

	/**
	 * Removes the unit from the array at the given position
	 * @param position The position of the unit to be removed
	 */
	public void destroyUnitAtPosition (Vector2 position) {
		unitLocations.Remove (convertToIndex (position));
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
	 * @return Boolean value of if moves are available
	 */
	public bool getPossibleMoves (Vector2 location, float range) {
		// Initialize the variables
		locationIndexes = new List<int> ();
		moves = new Dictionary<Vector2, HighlightActions> ();

		// Un-invert the location
		location.y = invertY (location.y);

		// Set the starting index so that it won't be highlighted
		startingIndex = convertToIndex (location);

		// Recursively check all of the neighbors
		traverseNeighbors (location, range);

		return (moves.Count > 0);
	}

	/**
	 * Loops through the Vector2 array of locations that is generated by getPossibleMoves and creates highlighted tiles
	 */
	public void highlightPossibleMoves () {
		// Initialize the new highlight for use in the loop
		GameObject newHighlight = null;

		// Get the highlight's collection object
		GameObject highlightsCollection = GameObject.Find ("Highlights");

		// Loop through the neighborring locations and create the highlights
		foreach (KeyValuePair<Vector2, HighlightActions> tile in moves) {
			// Create the new position
			Vector3 pos = new Vector3 (tile.Key.x, 0, invertY (tile.Key.y));

			// Instantiate the correct tile
			switch (tile.Value) {
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

			// Set the parent of the highlight
			newHighlight.transform.SetParent (highlightsCollection.transform);

			// Add the highlight to the collection array
			highlightedTiles.Add (newHighlight);
		}
	}

	/**
	 * Removes all currently highlighted tiles
	 */
	public void removeHighlights () {
		// Destroy all of the highlighted tiles
		foreach (GameObject tile in highlightedTiles) {
			Destroy (tile);
		}

		// Clear the array
		highlightedTiles.Clear ();
	}

	/**
	 * Gets the HighlightActions for the provided location
	 * @param location The Vector2 location of the tile
	 * @return The action of the provided tile from getTileAction (Vector2, int)
	 */
	public HighlightActions getTileAction (Vector2 location) {
		return getTileAction (location, convertToIndex (location));
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
		if (unitLocations.ContainsKey (index) && !gameController.populationSettings.canMoveThroughFriendlies) {
			action = HighlightActions.Attack;
		}

		// Check if tile can be captured
		if (tilesController.getCanCapture (getTileType (location))) {
			action = HighlightActions.Capture;
		}

		return action;
	}

	/**
	 * Gets the availability of lateral moves for the nav UI
	 * @param location The location of square one
	 * @return An associative array of the direction-boolean results for the directions
	 */
	public Dictionary<string, bool> getMovePossibility (Vector2 location) {
		// Set the movement factor
		Vector2 movementFactor = Vector2.zero;

		// Invert the y of the provided location
		location.y = invertY (location.y);

		// Initialize the output
		Dictionary<string, bool> output = new Dictionary<string, bool>();

		// Create an array to loop through in order to get the directions
		List<string> directions = new List<string> {"Left", "Right", "Up", "Down"};

		// Loop through the directions array
		foreach (string direction in directions) {
			// Get the movement factor
			switch (direction) {
			case "Left":
				movementFactor = Vector2.left;
				break;
			case "Right":
				movementFactor = Vector2.right;
				break;
			case "Up":
				movementFactor = Vector2.up;
				break;
			case "Down":
				movementFactor = Vector2.down;
				break;
			}

			// Check if there is a movement possibility for the new location
			bool canMove = locationIndexes.Contains (convertToIndex (location + movementFactor));

			// Add the result to the output array
			output.Add (direction, canMove);
		}

		return output;
	}

	/**
	 * Since the map is upside down, the y axis needs to be flipped
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
		// Get the index of the current location
		int index = convertToIndex (location);

		// Get the movement cost to move out of the current location
		float movementCost = tilesController.getMovementCost (getTileType (location));

		// Initialize the highlight action
		HighlightActions action = HighlightActions.Move;

		// Recursively move to the next tile if you can
		if (canMoveFrom (location, range, movementCost)) {
			// Take away the cost to move away from the current location
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

		// If the current location is not already in the locations array and is not the starting spot, then add it
		if (!locationIndexes.Contains (index) && index != startingIndex) {
			locationIndexes.Add (index);
			moves.Add (location, getTileAction (location, index));
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
	 * @return Boolean value of availability to move from provided tile
	 */
	private bool canMoveFrom (Vector2 location, float range, float movementCost) {
		// Initialize the variables
		bool unitOnTile = false;
		int index = convertToIndex (location);

		// Check if the current tile has a unit on it
		if (unitLocations.ContainsKey (index)) {
			// Cross check with the current unit
			if (index != startingIndex) {
				// Cannot move past enemy
				unitOnTile = true;
			}
		}

		return (!unitOnTile && (range - movementCost) >= 0);
	}

	/**
	 * Check to see if the current unit can be moved. Along with canMovedFrom
	 * @see canMoveFrom
	 * @param location Location of future tile
	 * @return Boolean value of availability to move from provided tile
	 */
	private bool canMoveTo (Vector2 location) {
		// Check if tile can be moved to
		bool canMoveTo = (tilesController.getCanMove (getTileType (location)));

		// Check if the tile has a unit on it
		bool unitOnTile = false;
		if (unitLocations.ContainsKey (convertToIndex (location))) {
			// Cross check the player and if ability to move through friendlies
			if (getUnitAtPosition (location).transform.parent.gameObject == turnsController.currentPlayer && !gameController.populationSettings.canMoveThroughFriendlies) {
				// Cannot move through friendlies
				unitOnTile = true;
			}
		}

		return (!unitOnTile && canMoveTo);
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