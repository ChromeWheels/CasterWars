﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * The controller for the units
 */
public class UnitsController : MonoBehaviour {

	public static UnitsController S = null;

	public float unitStartingY = -0.51f; //!< The default starting y position of the units

	private MapsController mapsController = null; //!< Local reference to the maps controller
	private UnitTypes unitTypesController = null; //!< Local reference to the UnitTypes collection controller

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
		unitTypesController = UnitTypes.S;
		mapsController = MapsController.S;

		// Copy the settings from the parent unit types to the faction units
		propagateOptions ();
	}

	/**
	 * Retrieves the unit's cost to the population
	 * @param unitType
	 */
	public int getUnitPopulationCost (string unitType) {
		// Initialize the output
		GameObject obj = null;

		// Get the unitType
		unitTypesController.types.TryGetValue (unitType, out obj);

		// Get the script
		Unit script = obj.GetComponent<Unit> ();

		return script.generalInformation.populationCost;
	}

	/**
	 * Copies the settings from the parent unit types to the faction units
	 */
	public void propagateOptions () {
		// Loop through the unit types
		foreach (GameObject type in unitTypesController.unitTypes) {
			// Get the attached scripts
			Unit parent = type.GetComponent<Unit> ();
			Factions factions = type.GetComponent<Factions> ();

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
	 * Creates the new units and assigns them to the provided player
	 * @param currentPlayer The player to add the units to
	 * @param unitCounts Associative array of which units to build and how many of them 
	 */
	public void createUnits (GameObject currentPlayer, Dictionary<string, int> unitCounts) {
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
				GameObject prefab = unitTypesController.getUnitPrefab(faction, type.Key);

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
	 * Instantiates and initializes a new unit from the given parameters
	 * @param faction The faction that the new unit belongs to
	 * @param type The type of unit to create
	 * @param position The starting position to place the unit
	 * @param parent The parent GameObject of the unit
	 * @return The created unit from initUnit (string, string, Vector2, GameObject, Quaternion, GameObject)
	 */
		private GameObject initUnit (string faction, string type, Vector2 position, GameObject parent) {
		// Get the prefab from the unitTypes collection
		GameObject prefab = unitTypesController.getUnitPrefab(faction, type);

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
		GameObject prefab = unitTypesController.getUnitPrefab(faction, type);

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