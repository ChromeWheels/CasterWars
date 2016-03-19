using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * The controller for the units
 */
public class UnitsController : MonoBehaviour {

	public static UnitsController S = null;

	public float unitStartingY = -0.51f; //!< The default starting y position of the units
	public float unitMovementDuration = 0.5f; //!< The time that it takes to move the unit one tile
	public Dictionary<int, GameObject> unitLocations = null; //!< Associative array of units and their locations on the map

	[HideInInspector]
	public GameObject currentUnit = null; //!< The current unit's game object
	[HideInInspector]
	public int currentUnitNumber = 0; //!< The array index of the current unit
	[HideInInspector]
	public Unit currentUnitScript = null; //!< The script of the current unit

	private Vector3 oldPosition = Vector3.zero; //!< The old (original) position of the unit that is being moved
	private Vector3 newPosition = Vector3.zero; //!< The new (destination) position of the unit that is being moved
	private int minUnitCost = 100; //!< The minimum cost to create a new unit
	private int currentPlayer = 0; //!< The index of the player that the units are being created for

	private UnitTypes unitTypesCollection = null; //!< Local reference to the UnitTypes collection

	#region /// @name Controller vars
	private GameController gameController = null; //!< The local reference to the game controller
	private MapsController mapsController = null; //!< The local reference to the maps controller
	private MovementController movementController = null; //!< The local reference to the movement's controller
	private PlayerController playerController = null; //!< The local reference to the player's controller
	private RemoteCamera remoteCamera = null; //!< The local reference to the remote camera's script
	#endregion

	#region /// @name Unity methods
	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;

		unitLocations = new Dictionary<int, GameObject> ();
	}

	/**
	 * Runs at load time
	 */
	void Start () {
		gameController = GameController.S;
		mapsController = MapsController.S;
		movementController = MovementController.S;
		playerController = PlayerController.S;
		remoteCamera = RemoteCamera.S;

		unitTypesCollection = UnitTypes.S;

		// Copy the settings from the parent unit types to the faction units
		propagateOptions ();
	}
	#endregion

	/**
	 * Sets the new unit as provided in the param
	 * @param index The array index of the new unit
	 */
	public void setNewUnit (int index) {
		// Set the current unit's number
		currentUnitNumber = index;

		// Get the unit
		currentUnit = playerController.currentPlayerScript.units [index];

		// Get the script
		currentUnitScript = currentUnit.GetComponent<Unit> ();
	}

	/**
	 * Create the units for all players at the start of the game
	 */
	public void doCreateUnitsAtStart () {
		// Loop through the players
		foreach (GameObject currPlayer in playerController.getPlayers ()) {
			// Get the unit counts
			Dictionary<string, int> unitCounts = getPlayerUnitCounts (currPlayer);

			// Create the units
			createUnits (currPlayer, unitCounts);

			// Incriment the currentPlayer
			currentPlayer++;
		}
	}

	/**
	 * Physically move the unit on the map
	 * @param unit The unit's game object
	 * @param newLocation The new location that the unit will move to
	 */
	public void moveUnit (GameObject unit, Vector2 newLocation) {
		// Set the unit's positions
		oldPosition = unit.transform.position;
		newPosition = new Vector3 (newLocation.x, oldPosition.y, newLocation.y);

		// Set the current unit
		currentUnit = unit;

		// Move the unit's location in the map array
		moveUnit (oldPosition, newPosition);

		// Start the co-routine to gracefully move the unit
		StartCoroutine (Transition ());

		// Move the remote camera to track the unit's movement
		remoteCamera.moveTo (newLocation, unitMovementDuration);
	}

	/**
	 * Retrieves the unit's cost to the population
	 * @param unitType
	 */
	public int getUnitPopulationCost (string unitType) {
		// Initialize the output
		GameObject obj = null;

		// Get the unitType
		unitTypesCollection.types.TryGetValue (unitType, out obj);

		// Get the script
		Unit script = obj.GetComponent<Unit> ();

		return script.generalInformation.populationCost;
	}

	/**
	 * Copies the settings from the parent unit types to the faction units
	 */
	public void propagateOptions () {
		// Loop through the unit types
		foreach (GameObject type in unitTypesCollection.unitTypes) {
			// Get the attached scripts
			Unit parent = type.GetComponent<Unit> ();
			UnitFactions factions = type.GetComponent<UnitFactions> ();

			// Loop throught the factions
			foreach (FactionsList faction in factions.factions) {
				// Get the attached script
				Unit child = faction.prefab.GetComponent<Unit> ();

				// Copy the settings iff hasChanged is false on the child class
				if (!child.hasChanged) {
					// Copy the settings
					child.turnSettings = parent.turnSettings;
				}
			}
		}
	}

	/**
	 * Gets the minimum population cost
	 */
	public int getMinPopCost () {
		return minUnitCost;
	}

	/**
	 * Creates the new units and assigns them to the provided player
	 * @param currentPlayer The player to add the units to
	 * @param unitCounts Associative array of which units to build and how many of them 
	 */
	private void createUnits (GameObject currentPlayer, Dictionary<string, int> unitCounts) {
		// Initialize the variables
		GameObject newUnit = null;
		List<GameObject> units = new List<GameObject> ();
		Player playerScript = currentPlayer.GetComponent<Player> ();
		string faction = playerScript.generalSettings.factionName;

		// Get the total count of the units to create
		int totalCount = 0;
		foreach (KeyValuePair<string, int> type in unitCounts) {
			totalCount += type.Value;
		}

		// Get the starting positions for the new units
		List<Vector2> startingPositions = mapsController.getStartingGrid (totalCount, playerScript.generalSettings.playerNumber);

		// Create and add the commander
		newUnit = initUnit (faction, "Commander", startingPositions[0], currentPlayer);

		// Add the commander to the units array
		units.Add (newUnit);

		// Add the commander to the map's location array
		addUnitToArray(newUnit, startingPositions [0]);

		// Setup the index that will be used to retreive the starting position
		// This is used in reverse so that the first used units will be on the outside of the starting group
		int idx = (startingPositions.Count - 1);

		// Loop through the unit types and create the units
		foreach (KeyValuePair<string, int> type in unitCounts) {
			// Check if there has been any units queued for this type
			if (type.Value > 0) {
				// If the index is at zero for some weird reason then exit
				if (idx == 0) {
					break;
				}

				// Get the prefab from the unitTypes collection
				GameObject prefab = getUnitPrefab(faction, type.Key);

				// Build the total units for this type
				for (int i = 0; i < type.Value; i++) {
					// Create the new unit
					newUnit = initUnit (faction, type.Key, startingPositions [idx], currentPlayer, prefab);

					// Add the unit to the units array
					units.Add (newUnit);

					// Add the unit to the map's location array
					addUnitToArray(newUnit, startingPositions [idx]);

					// Decriment the index
					idx--;
				}
			}
		}

		// Add the new units to the player
		playerScript.units = units;
	}

	/**
	 * Sets the minimum population cost
	 */
	private void setMinPopCost () {
		// Loop through the unit types
		foreach (GameObject type in unitTypesCollection.unitTypes) {
			// Get the population cost from the tile
			int cost = type.GetComponent<Unit> ().generalInformation.populationCost;

			// Set the lower of the current minCost and this unit's cost
			minUnitCost = Mathf.Min (minUnitCost, cost);
		}
	}

	/**
	 * Gets the counts for each unit type for the provided player
	 * @param player The player to get the counts for
	 * @return An associative array of unit types and counts
	 */
	private Dictionary<string, int> getPlayerUnitCounts (GameObject player) {
		// Initialize the returned vector
		Vector2 initLocation = Vector2.zero;

		// Initialize the unitCounts array
		Dictionary<string, int> unitCounts = null;

		// Get the player's number
		int playerNumber = player.GetComponent<Player> ().generalSettings.playerNumber;

		// Do this only if devMode is enabled
		if (gameController.devTools.devMode) {
			// Get the UnitTypes script and grab the unit types array
			Dictionary<string, GameObject> unitTypes = UnitTypes.S.types;

			// Reset the array
			unitCounts = new Dictionary<string, int> ();

			// Loop through the unitTypes and set a population count
			foreach (KeyValuePair<string, GameObject> type in unitTypes) {
				// Skip the commander type
				if (type.Key.CompareTo ("Commander") == 0) {
					continue;
				}

				player.GetComponent<Player> ().remainingPoints -= (type.Value.GetComponent<Unit> ().generalInformation.populationCost * gameController.devTools.numUnits);
				unitCounts.Add (type.Key, gameController.devTools.numUnits);
			}
		} else {
			// Get the unit counts
			UnitsSelectPanel unitsSelect = UnitsSelectPanel.S;
			unitCounts = unitsSelect.getUnitCounts (playerNumber);
		}

		return unitCounts;
	}

	/**
	 * The co-routine that gracefully moves the units around the map
	 */
	private IEnumerator Transition () {
		float t = 0.0f;

		while (t < 1.0f) {
			t += Time.deltaTime * (Time.timeScale / unitMovementDuration);

			currentUnit.transform.position = Vector3.Lerp (oldPosition, newPosition, t);
			yield return 0;
		}

		// Tell the TurnsController that it is done moving
		movementController.finishMovement ();
	}

	/**
	 * Instantiates and initializes a new unit from the given parameters
	 * @param faction The faction that the new unit belongs to
	 * @param type The type of unit to create
	 * @param position The starting position to place the unit
	 * @param parent The parent GameObject of the unit
	 * @return The created unit from initUnit (string, string, Vector2, GameObject, Quaternion, GameObject)
	 */
	private GameObject initUnit (string faction, string type, Vector2 position, GameObject parent) {
		// Get the prefab from the unitTypes collection
		GameObject prefab = getUnitPrefab(faction, type);

		// Get default rotation from the prefab
		Quaternion rotation = prefab.GetComponent<Unit> ().generalInformation.defaultRotation;

		return initUnit (faction, type, position, parent, rotation, prefab);
	}

	/**
	 * Instantiates and initializes a new unit from the given parameters
	 * @param faction The faction that the new unit belongs to
	 * @param type The type of unit to create
	 * @param position The starting position to place the unit
	 * @param parent The parent GameObject of the unit
	 * @param rotation The starting rotation of the unit
	 * @return The created unit from initUnit (string, string, Vector2, GameObject, Quaternion, GameObject)
	 */
	private GameObject initUnit (string faction, string type, Vector2 position, GameObject parent, Quaternion rotation) {
		// Get the prefab from the unitTypes collection
		GameObject prefab = getUnitPrefab(faction, type);

		return initUnit (faction, type, position, parent, rotation, prefab);
	}

	/**
	 * Instantiates and initializes a new unit from the given parameters
	 * @param faction The faction that the new unit belongs to
	 * @param type The type of unit to create
	 * @param position The starting position to place the unit
	 * @param parent The parent GameObject of the unit
	 * @param prefab The prefab to create the unit from
	 * @return The created unit from initUnit (string, string, Vector2, GameObject, Quaternion, GameObject)
	 */
	private GameObject initUnit (string faction, string type, Vector2 position, GameObject parent, GameObject prefab) {
		// Get default rotation from the prefab
		Quaternion rotation = prefab.GetComponent<Unit> ().generalInformation.defaultRotation;

		return initUnit (faction, type, position, parent, rotation, prefab);
	}

	/**
	 * Instantiates and initializes a new unit from the given parameters
	 * @param faction The faction that the new unit belongs to
	 * @param type The type of unit to create
	 * @param position The starting position to place the unit
	 * @param parent The parent GameObject of the unit
	 * @param rotation The starting rotation of the unit
	 * @param prefab The prefab to create the unit from
	 * @return The created unit
	 */
	private GameObject initUnit (string faction, string type, Vector2 position, GameObject parent, Quaternion rotation, GameObject prefab) {
		// Instantiate the new unit
		GameObject newUnit = Instantiate (prefab, new Vector3(position.x, unitStartingY, position.y), rotation) as GameObject;

		// Set the scale if the default scale is not blank
		Vector3 defaultScale = prefab.GetComponent<Unit> ().generalInformation.defaultScale;
		if (defaultScale == Vector3.zero) {
			newUnit.transform.localScale = Vector3.one;
		} else {
			newUnit.transform.localScale = defaultScale;
		}

		// Set the parent
		newUnit.transform.SetParent (parent.transform);

		// Set the name
		newUnit.name = string.Format ("{0}: {1}", parent.name, prefab.name);

		// Set the owner
		newUnit.GetComponent<Unit> ().player = currentPlayer;

		return newUnit;
	}


	/**
	 * Adds the provided unit to the array of units on the map
	 * @param unit Unit's game object
	 * @param location The location of the unit (location Y will be inverted)
	 */
	public void addUnitToArray (GameObject unit, Vector2 location) {
		// Since the location.Y is inverted, invert it back
		location.y = mapsController.invertY (location.y);

		// Add the unit to the array
		unitLocations.Add (mapsController.convertToIndex (location), unit);
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
		unitLocations.TryGetValue (mapsController.convertToIndex (position), out unit);

		return unit;
	}

	/**
	 * Gets the unit at the provided int index
	 * 
	 * For protection, use getUnitAtPosition first
	 * @param index The integer index representation of the Vector2 location
	 * @return Returns the unit at the provided position
	 */
	public GameObject getUnitAtPosition (int index) {
		// Initialize the output
		GameObject unit = null;

		// Get the unit
		unitLocations.TryGetValue (index, out unit);

		return unit;
	}

	/**
	 * Moves the unit at the old position to the new position
	 * @param oldPosition The original position that the unit resides in
	 * @param newPosition The position to move the unit to
	 */
	public void moveUnit (Vector3 oldPosition, Vector3 newPosition) {
		// Initialize the temp GameObject
		GameObject tmp = null;

		// Convert the positions
		oldPosition = mapsController.convertLocation (oldPosition);
		newPosition = mapsController.convertLocation (newPosition);

		// Invert the ys
		oldPosition.y = mapsController.invertY (oldPosition.y);
		newPosition.y = mapsController.invertY (newPosition.y);

		// Get the indices
		int oldIndex = mapsController.convertToIndex (oldPosition);
		int newIndex = mapsController.convertToIndex (newPosition);

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
		unitLocations.Remove (mapsController.convertToIndex (position));
	}

	/**
	 * Heal all of the units that are available to be healed
	 */
	public void healUnits () {
	}

	/**
	 * Once the turn is over, if there are more available points than the minimum cost for a unit, show the creation
	 */
	private void createNewUnits () {
	}

	/**
	 * Gets the prefab of supplied unit type and faction
	 * @param faction The name of the faction
	 * @param unitType The type of unit
	 * @return The prefab of the requested unit
	 */
	public GameObject getUnitPrefab (string faction, string unitType) {
		// Initialize the variables
		GameObject unitHolder = null;
		GameObject unitPrefab = null;

		// Get the unit type
		unitTypesCollection.types.TryGetValue(unitType, out unitHolder);

		// Get the unit prefab from the faction
		unitHolder.GetComponent<UnitFactions> ().units.TryGetValue (faction, out unitPrefab);

		return unitPrefab;
	}

}
