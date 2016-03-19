using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * The controller for disabled tiles
 */
public class DisabledTileController : MonoBehaviour {

	public static DisabledTileController S = null;

	public GameObject bombCraterPrefab = null; //!< The prefab of the disabled tiles
	public float craterOffset = -0.59f; //!< The initial y position of the bomb craters

	private Dictionary<int, GameObject> disabledTiles = null; //!< An associative array of disabled tiles and the GameObject
	private Dictionary<int, GameObject> updatedDisabledTiles = null; //!< A temporary associative array of disabled tiles and the GameObject

	#region /// @name Controller vars
	private MapsController mapsController = null; //!< The local reference to the maps controller
	private PlayerController playerController = null; //!< The local reference to the player's controller
	private TurnsController turnsController = null; //!< Local reference to the TurnsController
	#endregion

	#region /// @name Unity methods
	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;

		disabledTiles = new Dictionary<int, GameObject> ();
		updatedDisabledTiles = new Dictionary<int, GameObject> ();
	}

	/**
	 * Runs at load time
	 */
	void Start () {
		mapsController = MapsController.S;
		playerController = PlayerController.S;
		turnsController = TurnsController.S;
	}
	#endregion

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
			script.playerNumber = playerController.currentPlayerIndex;

			// Set the amount of remaining turns
			script.turnsLeft = numOfTurns;

			// Set the new value
			disabledTiles.Add (index, newTile);
		}
	}

	/**
	 * Updates the remaining movement counts of tiles
	 */
	public void updateDisabledTiles () {
		// Initialize the temporary array
		updatedDisabledTiles = new Dictionary<int, GameObject> ();

		// Loop through the tiles in the array
		foreach (KeyValuePair<int, GameObject> tile in disabledTiles) {
			// Get the script
			DisabledTile script = tile.Value.GetComponent<DisabledTile> ();

			// Get the current movement count
			int currentCount = script.turnsLeft;

			// Update the count if the current player is the player that disabled the tile
			if (playerController.currentPlayerIndex == script.playerNumber) {
				// Enable the tile if the wait is up
				if ((currentCount - 1) <= 0) {
					// Destroy the GameObject
					Destroy (tile.Value);
				} else {
					// Update the count
					script.turnsLeft--;

					// Add the tile to the updated array
					updatedDisabledTiles.Add (tile.Key, tile.Value);
				}
			} else {
				// Add the tile to the updated array
				updatedDisabledTiles.Add (tile.Key, tile.Value);
			}
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
	public bool isDisabled (Vector2 location) {
		// Get the index
		int index = mapsController.convertToIndex (location);

		return isDisabled (index);
	}


	/**
	 * Get the boolean disabled status of the provided tile
	 * @param index The integer representation of the tile's location
	 * @return The disabled status of the given tile
	 */
	public bool isDisabled (int index) {
		return disabledTiles.ContainsKey (index);
	}
}
