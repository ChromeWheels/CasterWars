﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * Superclass of the map levels
 */
public class Map : MonoBehaviour {

	public Dimensions dimensions; //!< The dimensions of the map
	public GameObject highlightPrefab; //!< The GameObject that is used for highlighting the tiles

	[HideInInspector]
	public int[,] tiles; //!< The multidemensional array of what tiles are where on the map
						 //!< 
						 //!< This is set in the child classes
						 //!< 
						 //!< Example of using this:
						 //!< 
						 //!< NOTE: _the height is the map height minus 1_
						 //!< ~~~{.cs}
						 //!< void Awake() {
						 //!< 	tiles = new int[<width>, <height>] {
						 //!< 	{<tileType>, <tileType>},
						 //!< 	{<tileType>, <tileType>}
						 //!< }
						 //!< ~~~ 

	private List<GameObject> highlightedTiles; //!< Temporary list of highlighted tiles
	private List<int> locationIndexes; //!< Temporary list of unique neighbor locations. Used to prevent duplicate locations in List<Vector2> locations
	private List<Vector2> locations; //!< Temporary list of neighbors
	private Tiles tilesScript; //!< Local reference to the Tiles script instance
	private int startingIndex; //!< Variable used when getting neighbors to prevent adding the starting tile to poosible neighbors

	/**
	 * Called when the script is loaded, before the game starts
	 */
	public void Awake () {
		highlightedTiles = new List<GameObject> ();
		tilesScript = Tiles.S;

		Vector3 pos = new Vector3 ((dimensions.height / 2) - 0.5f, transform.position.y, (dimensions.height / 2) - 0.5f);
		transform.position = pos;
	}

	/** 
	 * Gets all of the neighboring tiles within a movement range
	 * @param location Location of unit's current position
	 * @param range Amount that player can move current unit
	 * @return List of available neighbors
	 */
	public List<Vector2> getNeighbors (Vector2 location, float range) {
		locationIndexes = new List<int> ();
		locations = new List<Vector2> ();
		startingIndex = convertToIndex (location);

		traverseNeighbors (location, range);

		return locations;
	}

	/**
	 * Loops through the provided Vector2 array of locations and created highlighted tiles
	 * @param locations List of locations to highlight
	 */
	public void highlightNeighbors (List<Vector2> locations) {
		foreach (Vector2 location in locations) {
			Vector3 pos = new Vector3 (location.x, -0.59f, (dimensions.height - location.y));
			GameObject newHighlight = Instantiate (highlightPrefab, pos, Quaternion.identity) as GameObject;
			highlightedTiles.Add (newHighlight);
		}
	}

	/**
	 * Removes all currently highlighted tiles
	 */
	public void removeHighlights () {
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
			locations.Add (location);
		}
	}

	/**
	 * Generated a unique index to prevent duplicate array entries by traverseNeighbors
	 * @see traverseNeighbors
	 * @param location Location of the tile
	 * @return A unique index integer
	 */
	private int convertToIndex (Vector2 location) {
		return (int) (location.x + (dimensions.width * location.y));
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
		return tiles [(int)location.y, (int)location.x] - 1;
	}
}