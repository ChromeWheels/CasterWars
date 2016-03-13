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

	private GameObject currentUnit = null; //!< The unit that is currently being controlled
	private Vector3 oldPosition = Vector3.zero; //!< The old (original) position of the unit that is being moved
	private Vector3 newPosition = Vector3.zero; //!< The new (destination) position of the unit that is being moved
	private int minUnitCost = 100; //!< The minimum cost to create a new unit

	/**
	 * Controllers
	 */
	private Game gameController = null; //!< Local reference to the Game controller
	private MapsController mapsController = null; //!< Local reference to the MapsController
	private RemoteCamera remoteCamera = null; //!< Local reference to the RemoteCamera
	private TurnsController turnsController = null; //!< Local reference to the TurnsController

	/**
	 * Collections
	 */
	private Players playersCollection = null; //!< Local reference to the Players collection
	private UnitTypes unitTypesCollection = null; //!< Local reference to the UnitTypes collection

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
		gameController = Game.S;
		mapsController = MapsController.S;
		playersCollection = Players.S;
		remoteCamera = RemoteCamera.S;
		turnsController = TurnsController.S;
		unitTypesCollection = UnitTypes.S;

		// Copy the settings from the parent unit types to the faction units
		propagateOptions ();

		// Get the minimum points required to create a new unit

	}

	/**
	 * Create the units for all players at the start of the game
	 */
	public void doCreateUnitsAtStart () {
		// Loop through the players
		foreach (GameObject currPlayer in playersCollection.players) {
			// Get the unit counts
			Dictionary<string, int> unitCounts = getPlayerUnitCounts (currPlayer);

			// Create the units
			createUnits (currPlayer, unitCounts);
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
		mapsController.moveUnit (oldPosition, newPosition);

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
		mapsController.addUnitToArray(newUnit, startingPositions [0]);

		// Setup the index that will be used to retreive the starting position
		// This is used in reverse so that the first used units will be on the outside of the starting group
		int idx = (startingPositions.Count - 1);

		// Loop through the unit types and create the players
		foreach (KeyValuePair<string, int> type in unitCounts) {
			// Check if there has been any units queued for this type
			if (type.Value > 0) {
				// If the index is at zero for some weird reason then exit
				if (idx == 0) {
					break;
				}

				// Get the prefab from the unitTypes collection
				GameObject prefab = unitTypesCollection.getUnitPrefab(faction, type.Key);

				// Build the total units for this type
				for (int i = 0; i < type.Value; i++) {
					// Create the new unit
					newUnit = initUnit (faction, type.Key, startingPositions [idx], currentPlayer, prefab);

					// Add the unit to the units array
					units.Add (newUnit);

					// Add the unit to the map's location array
					mapsController.addUnitToArray(newUnit, startingPositions [idx]);

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
	 * @param currentPlayer The player to get the counts for
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
		turnsController.finishMovement ();
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
		GameObject prefab = unitTypesCollection.getUnitPrefab(faction, type);

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
		GameObject prefab = unitTypesCollection.getUnitPrefab(faction, type);

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

		// Set the parent
		newUnit.transform.SetParent (parent.transform);

		// Set the name
		newUnit.name = string.Format ("{0}: {1}", parent.name, prefab.name);

		return newUnit;
	}
}
