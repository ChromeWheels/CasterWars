using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * The controller for resource tiles
 */
public class ResourceTileController : MonoBehaviour {

	public static ResourceTileController S = null;

	private Dictionary<int, CapturedTile> capturedTiles = null; //!< An associative array of captured tiles and their statuses
	private Resource resourceTile = null; //!< A local reference to the Resource tile

	#region /// @name Controller vars
	private PlayerController playerController = null; //!< The local reference to the player's controller
	private TilesController tilesController = null; //!< The local reference to the TilesController
	#endregion

	#region /// @name Unity methods
	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;

		capturedTiles = new Dictionary<int, CapturedTile> ();
	}

	/**
	 * Runs at load time
	 */
	void Start () {
		playerController = PlayerController.S;
		tilesController = TilesController.S;

		resourceTile = Resource.S;
	}
	#endregion

	/**
	 * Applies the captured resources and attempts to capture the ones that are available
	 */
	public void processResources () {
		// Update the amount of points from the updated resources array
		playerController.currentPlayerScript.remainingPoints += updateCaptured ();
	}

	/**
	 * Build the resources array
	 * @param tiles The array of resource tile locations
	 */
	public void initResources (Dictionary<int, Vector2> tiles) {
		// Loop through the array
		foreach (KeyValuePair<int, Vector2> tile in tiles) {
			// Create a new CapturedTile script
			CapturedTile newCapture = new CapturedTile ();

			// Initialize the variables
			newCapture.construct (tile.Value, resourceTile.initialResources, resourceTile.turnsToCapture);

			// Add the newly captured tile to the collection
			capturedTiles.Add (tile.Key, newCapture);
		}
	}

	/**
	 * Retrieves the ability to capture resources on the tile
	 * @param tileType The integer index in the tiles[] array
	 * @return Returns the boolean value that is set in the Unity inspector
	 */
	public bool getCanCapture (int tileType) {
		return tilesController.getTile (tileType).GetComponents<Tile> () [0].canCapture;
	}

	/**
	 * Updates the captured tiles and returns the points earned this turn by the current player
	 * @return The points earned by the current player for this turn
	 */
	public int updateCaptured () {
		// Get the current player's number
		int currentPlayerNumber = playerController.currentPlayerIndex;

		// Get the indices of the units
		List<int> units = playerController.getPlayersUnits (currentPlayerNumber);

		// Exit the function if there are no units
		if (units == null || units.Count == 0) {
			return 0;
		}

		// Initialize the output
		int output = 0;

		// Loop through the capturable tiles
		foreach (KeyValuePair<int, CapturedTile> tile in capturedTiles) {
			// Get the status of the presence of a unit on this tile
			bool hasUnit = units.Contains (tile.Key);

			// Check if the tile is captured by the player or one of the player's units are on it
			if (tile.Value.owner == currentPlayerNumber || hasUnit) {
				// Update the captured status if in process of capturing or vacating
				if (tile.Value.isCapturing || tile.Value.isVacating) {
					updateCaptured (tile.Value, hasUnit);
				}

				// Capture if not captured
				if (tile.Value.isCaptured && hasUnit) {
					captureTile (tile.Value);
				}

				// Remove ownership if persistant ownership is off and the tile is vacant
				if (tile.Value.isCaptured && !hasUnit && resourceTile.persistantResourceTileOwnership) {
					vacateTile (tile.Value);
				}

				// Get the resource if captured and is not empty
				if (tile.Value.isCaptured && !tile.Value.isEmpty) {
					output += drainResource (tile.Value);
				}
			}
		}

		return output;
	}

	/**
	 * Takes off the resources for the tile if the tile is captured by the current player and is not empty.
	 * @param tile The script of the tile
	 * @return The amount that the player recieves from the tile
	 */
	private int drainResource (CapturedTile tile) {
		// Initialize the output
		int output = 0;

		// Get the amount to leach for the turn
		int leach = resourceTile.resourcesPerTurn;

		// Set the output
		output = leach;

		// Use this turn's ammount
		tile.remainingResources -= leach;

		// Check if the tile is now depleted
		if (tile.remainingResources <= 0) {
			// Empty the tile
			tile.isEmpty = true;

			// Change the tile to the empty prefab
			//TODO

			// Erase the owner
			tile.owner = 100;
		}

		return output;
	}

	/**
	 * Updates the capturing/vacating status of a tile
	 * @param tile The CapturedTile script for this tile
	 * @param hasUnit The status of a unit on this tile
	 */
	private void updateCaptured (CapturedTile tile, bool hasUnit) {
		// Get the current captured status and minus 1 for this turn
		int turnsLeft = (tile.turnsLeft - 1);

		// Shorten the variable
		bool persistant = resourceTile.persistantResourceTileOwnership;

		if (tile.isCapturing && !tile.isVacating && (persistant || (!persistant && hasUnit))) {
			// Continue capturing

			// Check if the tile will be caputed this turn
			if (turnsLeft == 0) {
				// Capture the tile
				tile.isCaptured = true;

				// Clear the capturing
				tile.isCapturing = false;
			}

			// Set the new turnsLeft
			tile.turnsLeft = (turnsLeft >= 0) ? turnsLeft : 0;

		} else if (tile.isCapturing && !tile.isVacating && !hasUnit && !persistant) {
			// Stop capturing and vacate immediately

			// Clear the capturing flag
			tile.isCapturing = false;

			// Clear the owner
			tile.owner = 100;

		} else if (tile.isVacating) {
			// Continue vacating

			// Check if the tile will be vacated this turn
			if (turnsLeft == 0) {
				// Vacate the tile
				tile.isCaptured = false;

				// Clear the vacating
				tile.isVacating = false;
			}

			// Set the new turnsLeft
			tile.turnsLeft = (turnsLeft >= 0) ? turnsLeft : 0;
		}
	}

	public void captureTile (int index) {
		// Initialize the script
		CapturedTile script = null;

		// Get the CapturedTile script for this tile
		capturedTiles.TryGetValue (index, out script);

		// Call the captureTile (CapturedTile) function to capture the tile
		captureTile (script);
	}

	/**
	 * Captures the tile if instant capture (resourceTile.turnsToCapture == 0) or else starts the capturing
	 * @param tile The CapturedTile script for this tile
	 */
	private void captureTile (CapturedTile tile) {
		// Check if the turns to capture is 0 (instant)
		if (resourceTile.turnsToCapture == 0) {
			// Capture the tile completely
			tile.isCaptured = true;
		} else {
			// Set the turns to capture
			tile.turnsLeft = resourceTile.turnsToCapture;

			// Set the flag for capturing
			tile.isCapturing = true;
		}

		// Set the owner
		tile.owner = playerController.currentPlayerIndex;
	}

	/**
	 * Vacates the tile if instant vacating (resourceTile.turnsToLose == 0) or else starts the vacating
	 * @param tile The CapturedTile script for this tile
	 */
	private void vacateTile (CapturedTile tile) {
		// Check if the turns to vacate is 0 (instant)
		if (resourceTile.turnsToLose == 0) {
			// Vacate the tile completely
			tile.isCaptured = false;

			// Reset the owner
			tile.owner = 100;
		} else {
			// Set the turns to vacate
			tile.turnsLeft = resourceTile.turnsToLose;

			// Set the flag for vacating
			tile.isVacating = true;
		}
	}
}
