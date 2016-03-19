using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * The controller for movement on the map
 */
public class MovementController : MonoBehaviour {

	public static MovementController S = null;

	public Dictionary<Vector2, HighlightActions> moves = null; //!< Temporary list of possible moves

	[HideInInspector]
	public int startingIndex = 0; //!< Variable used when getting neighbors to prevent adding the starting tile to poosible neighbors
	[HideInInspector]
	public float movementLeft = 0; //!< The amount of movement that is left for the current unit

	#region /// @name Controller vars
	private DisabledTileController disabledTileController = null; //!< The local reference to the disabled tile's controller
	private GameController gameController = null; //!< The local reference to the game controller
	private HighlightsController highlightsController = null; //!< The local reference to the highlight's controller
	private MapsController mapsController = null; //!< The local reference to the maps controller
	private MovementController movementController = null; //!< The local reference to the movement's controller
	private NavController navController = null; //!< The local reference to the nav controller
	private PlayerController playerController = null; //!< The local reference to the player's controller
	private ResourceTileController resourceTileController = null; //!< The local reference to the resource tile's controller
	private TilesController tilesController = null; //!< The local reference to the TilesController
	private TurnsController turnsController = null; //!< The local reference to the TurnsController
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
		disabledTileController = DisabledTileController.S;
		gameController = GameController.S;
		highlightsController = HighlightsController.S;
		mapsController = MapsController.S;
		movementController = MovementController.S;
		navController = NavController.S;
		playerController = PlayerController.S;
		resourceTileController = ResourceTileController.S;
		tilesController = TilesController.S;
		turnsController = TurnsController.S;
		unitsController = UnitsController.S;
	}
	#endregion

	/**
	 * Adds the provided move to the array
	 * @param location The location of the tile
	 * @param action The HighlightActions action for the tile
	 */
	public void addMove (Vector2 location, HighlightActions action) {
		moves.Add (location, action);
	}

	/** 
	 * Gets all of the neighboring tiles within a movement range
	 * @param location Location of unit's current position
	 * @param range Amount that player can move current unit
	 * @return Boolean value of if moves are available
	 */
	public bool getPossibleMoves (Vector2 location, float range) {
		// Initialize the variables
		mapsController.locationIndexes = new List<int> ();
		moves = new Dictionary<Vector2, HighlightActions> ();

		// Un-invert the location
		location.y = mapsController.invertY (location.y);

		// Set the starting index so that it won't be highlighted
		startingIndex = mapsController.convertToIndex (location);

		// Recursively check all of the neighbors
		mapsController.traverseNeighbors (location, range);

		return (moves.Count > 0);
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
		location.y = mapsController.invertY (location.y);

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
				movementFactor = Vector2.down; // Needs to be inverted due to inversion of map
				break;
			case "Down":
				movementFactor = Vector2.up; // Needs to be inverted due to inversion of map
				break;
			}

			// Check if there is a movement possibility for the new location
			bool canMove = mapsController.locationIndexes.Contains (mapsController.convertToIndex (location + movementFactor));

			// Add the result to the output array
			output.Add (direction, canMove);
		}

		return output;
	}
		
	/**
	 * Retrieves the ability to move onto the tile with the provided tile type
	 * @param tileType The integer index in the tiles[] array
	 * @param index The int representation of the location as given by MapsController.convertToIndex (Vector2)
	 * @return Returns the boolean value that is set in the Unity inspector
	 */
	public bool getCanMove (int tileType, int index) {
		return (tilesController.getTile (tileType).GetComponents<Tile> () [0].canMove && !disabledTileController.isDisabled (index));
	}

	/**
	 * Retrieves the movement cost from the tile with the provided tile type
	 * @param tileType The integer index in the tiles[] array
	 * @return Returns a float float value of the movement cost
	 */
	public float getMovementCost (int tileType) {
		return tilesController.getTile (tileType).GetComponents<Tile> () [0].movementCost;
	}

	/**
	 * Get the movement cost of the tile at the provided location
	 * @param location Location of the requested tile
	 * @return The movement cost of the tile
	 */
	public float getMovementCost (Vector3 location) {
		// Adjust the location
		location.z = mapsController.invertY (location.z);

		return getMovementCost (tilesController.getTileType (mapsController.convertLocation (location)));
	}

	/**
	 * Get the movement cost of the tile at the provided location
	 * @param location Location of the requested tile
	 * @return The movement cost of the tile
	 */
	public float getMovementCost (Vector2 location) {
		// Adjust the location
		location.y = mapsController.invertY (location.y);

		return getMovementCost (tilesController.getTileType (location));
	}
		
	/**
	 * Check to see if the current unit can be moved. Along with canMovedTo
	 * @see canMoveTo
	 * @param location Location of current tile
	 * @param range Available movement left
	 * @param movementCost Cost of moving from current tile
	 * @return Boolean value of availability to move from provided tile
	 */
	public bool canMoveFrom (Vector2 location, float range, float movementCost) {
		// Initialize the variables
		bool unitOnTile = false;
		int index = mapsController.convertToIndex (location);

		// Check if the current tile has a unit on it
		if (unitsController.unitLocations.ContainsKey (index)) {
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
	public bool canMoveTo (Vector2 location) {
		// Initialize the output
		bool canMoveTo = false;
		bool unitOnTile = false;

		// Ensure that the current tile is in bounds
		if (
			(location.x >= 0) // Check that the x is not less than 0
			&& (location.x < (mapsController.dimensions.width - 1))// Check that the x is not greater than the map's width
			&& (location.y >= 0) // Check that the y is not less than 0
			&& (location.y < (mapsController.dimensions.height - 1)) // Check that the y is not greater than the map's height
		) {
			// Get the index of the tile
			int index = mapsController.convertToIndex (location);

			// Check if tile can be moved to
			canMoveTo = (getCanMove (tilesController.getTileType (location), index));

			// Check if the tile has a unit on it
			if (unitsController.unitLocations.ContainsKey (index)) {
				// Cross check the player and if ability to move through friendlies
				if (unitsController.getUnitAtPosition (location).transform.parent.gameObject == playerController.currentPlayer && !gameController.populationSettings.canMoveThroughFriendlies) {
					// Cannot move through friendlies
					unitOnTile = true;
				}
			}
		}

		return (!unitOnTile && canMoveTo);
	}

	/**
	 * Handles the navigation menu clicks
	 * @param direction The direction to move the unit
	 */
	public void doMoveCurrentUnit (string direction) {
		// Clear the map of highlights
		highlightsController.removeHighlights ();

		// Disable the buttons to prevent multiple presses
		navController.disableButtons ();

		// Get the current location
		Vector2 currLocation = mapsController.convertLocation (unitsController.currentUnit.transform.position);

		// Set the movement factor
		Vector3 movementFactor = Vector3.zero;
		switch (direction) {
		case "Left":
			movementFactor = Vector3.left;
			break;
		case "Right":
			movementFactor = Vector3.right;
			break;
		case "Up":
			movementFactor = Vector3.forward;
			break;
		case "Down":
			movementFactor = Vector3.back;
			break;
		}

		// Get the coords of the tile that will be the new location
		Vector2 newLocation = mapsController.convertLocation (unitsController.currentUnit.transform.position + movementFactor);

		// Get an inverted version of the new location
		Vector2 invertedNewLocation = newLocation;
		invertedNewLocation.y = mapsController.invertY (invertedNewLocation.y);

		// Get the action before we move
		HighlightActions action = tilesController.getTileAction (invertedNewLocation);

		// Do the appropriate action
		switch (action) {
		case HighlightActions.Attack:
			break;
		case HighlightActions.Capture:
			// Capture the tile
			resourceTileController.captureTile (mapsController.convertToIndex (invertedNewLocation));

			// Subtract the cost of the just finished move
			movementLeft -= movementController.getMovementCost (newLocation);

			// Move the unit
			unitsController.moveUnit (unitsController.currentUnit, newLocation);
			break;
		case HighlightActions.Move:
			// Subtract the cost of the just finished move
			movementLeft -= movementController.getMovementCost (newLocation);

			// Move the unit
			unitsController.moveUnit (unitsController.currentUnit, newLocation);
			break;
		}
	}

	/**
	 * Function that finishes the movement logic for the unit
	 */
	public void finishMovement () {
		// Check if can be infinite movement
		if (gameController.devTools.devMode && gameController.devTools.infiniteTurn) {
			// Keep the count at 3 - infinite movement
			movementLeft = 3;
		}

		// Start the next movement
		processMoves ();
	}

	/**
	 * Logic for getting and processing available moves
	 */
	public void processMoves () {
		// Get the availability of possible moves
		if (!getPossibleMoves (mapsController.convertLocation (unitsController.currentUnit.transform.position), movementLeft)) {
			// No moves available, move to the next unit
			turnsController.initUnitTurn (++unitsController.currentUnitNumber);
		}

		// Highlight the possible moves
		highlightsController.highlightPossibleMoves ();

		// Tell the NavController to toggle the availability of the direction buttons
		navController.toggleButtons (mapsController.convertLocation (unitsController.currentUnit.transform.position));
	}

}
