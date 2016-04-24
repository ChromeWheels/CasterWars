using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * The controller for the units
 */
public class UnitsController : MonoBehaviour {

	public AudioClip[] audioClip;
	public static UnitsController S = null;

	#region Variables /// @name vars
	public float unitMovementDuration = 0.5f; //!< The time that it takes to move the unit one tile
	public Dictionary<int, GameObject> unitLocations = null; //!< Associative array of units and their locations on the map

	[HideInInspector]
	public GameObject currentUnit = null; //!< The current unit's game object
	[HideInInspector]
	public int currentUnitNumber = 0; //!< The array index of the current unit
	[HideInInspector]
	public Unit currentUnitScript = null; //!< The script of the current unit

	private Dictionary<string, int>[] playerUnitCounts = null; //!< The stored array of unit counts
	private Vector3 oldPosition = Vector3.zero; //!< The old (original) position of the unit that is being moved
	private Vector3 newPosition = Vector3.zero; //!< The new (destination) position of the unit that is being moved
	private int minUnitCost = 100; //!< The minimum cost to create a new unit
	private int currentPlayer = 0; //!< The index of the player that the units are being created for
	#endregion

	#region Collection vars /// @name Collection vars
	private UnitTypes unitTypesCollection = null; //!< Local reference to the UnitTypes collection
	#endregion

	#region Controller vars /// @name Controller vars
	private GameController gameController = null; //!< The local reference to the game controller
	private MapsController mapsController = null; //!< The local reference to the maps controller
	private MovementController movementController = null; //!< The local reference to the movement's controller
	private PlayerController playerController = null; //!< The local reference to the player's controller
	private RemoteCamera remoteCamera = null; //!< The local reference to the remote camera's script
	#endregion

	#region Unity methods /// @name Unity methods
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

		playerUnitCounts = new Dictionary<string, int>[4];

		// Copy the settings from the parent unit types to the faction units
		propagateOptions ();
	}
	#endregion

	#region Switch units /// @name Switch units
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
	#endregion

	#region Create units /// @name Create units
	/**
	 * Create the units for all players at the start of the game
	 */
	public void doCreateUnitsAtStart () {
		// Loop through the players
		foreach (GameObject currPlayer in playerController.getPlayers ()) {
			GameController.showDebug ("Creating units for player " + currPlayer.name);
			// Get the unit counts
			Dictionary<string, int> unitCounts = getPlayerUnitCounts (currPlayer);

			// Create the units
			createUnits (currPlayer, unitCounts);

			// Incriment the currentPlayer
			currentPlayer++;
		}
	}

	/**
	 * Once the turn is over, if there are more available points than the minimum cost for a unit, show the creation
	 */
	private void createNewUnits () {
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
		// Get the starting y of the prefab
		Unit prefabScript = prefab.GetComponent<Unit> ();

		// Instantiate the new unit
		GameObject newUnit = Instantiate (prefab, new Vector3(position.x, prefabScript.generalInformation.unitStartingY, position.y), rotation) as GameObject;

		// Set the scale if the default scale is not blank
		Vector3 defaultScale = prefabScript.generalInformation.defaultScale;
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
	#endregion

	#region Destroy unit /// @name Destroy unit
	/**
	 * Starts the process of destroying the supplied unit by checking if the unit is a commander or not
	 * @param unit The unit that will be destroyed
	 */
	public void doDestroyUnit (GameObject unit) {
		// Get the script of the unit
		Unit script = unit.GetComponent<Unit> ();

		// See if the unit is a commander
		if (script.generalInformation.isCommander) {
			// Clear the player's units from the board and kill the commander
			destroyPlayersUnits (script.player);
		} else {
			// Kill the one unit
			destroyUnit (unit, true);
		}
	}

	/**
	 * Destroys the provided unit
	 * 
	 * Use doDestroyUnit to call this function
	 * @see doDestroyUnit
	 * @param unit The GameObject of the unit to destroy
	 * @param removeFromPlayer If true, will remove the unit from the player's units array
	 */
	private void destroyUnit (GameObject unit, bool removeFromPlayer) {
		// Get the script of the unit
		Unit script = unit.GetComponent<Unit> ();

		// Get the location of the unit
		Vector3 pos = unit.transform.position;
		int index = mapsController.convertToIndex (pos.x, pos.z);

		// Remove the unit from the unit locations array
		unitLocations.Remove (index);

		// Remove the unit from the player unit's location array if removeFromPlayer is true
		if (removeFromPlayer) {
			playerController.currentPlayerScript.units.Remove (unit);
		}

		// Destroy the GameObject
		Destroy (unit);
	}

	/**
	 * Destroys all units that belong to the given player and sets the commander to dead
	 * @param playerNumber The aray index number of the player
	 */
	public void destroyPlayersUnits (int playerNumber) {
		// Get the player's script
		Player playerScript = playerController.getPlayer (playerNumber).GetComponent<Player> ();

		// Set the commander as dead
		playerScript.commanderIsAlive = false;

		// Loop through the player's units
		foreach (GameObject unit in playerController.currentPlayerScript.units) {
			// Kill the current unit
			destroyUnit (unit, false);
		}

		// Clear the array
		playerController.currentPlayerScript.units = new List<GameObject> ();

		// Update the number of alive players
		playerController.alivePlayers--;

		// End the game if this was the last commander
		if (playerController.alivePlayers <= 1) {
			gameController.doEndGame ();
		}
	}
	#endregion

	#region Move unit /// @name Move unit
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

		//Play the audio clip for the unit
		PlaySound(unit);

		// Start the co-routine to gracefully move the unit
		StartCoroutine (Transition ());

		// Move the remote camera to track the unit's movement
		remoteCamera.moveTo (newLocation, unitMovementDuration);
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
	#endregion

	#region Population cost /// @name Population cost
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
	 * Gets the minimum population cost
	 */
	public int getMinPopCost () {
		return minUnitCost;
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
	#endregion

	#region Copy options to childs /// @name Copy options to childs
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
					child.generalInformation = parent.generalInformation;
				}
			}
		}
	}
	#endregion

	#region Unit counts /// @name Unit counts
	/**
	 * Handler for the ok button on the unit's select UI
	 */
	public void doSetUnitCounts () {
		// Get the units panel
		UnitsSelectPanel unitsSelect = UnitsSelectPanel.S;

		// Cannot pass dictionaries over UNET so, need to convert to arrays
		// Get the unitCounts
		Dictionary<string, int> unitCounts = unitsSelect.getUnitCounts ();

		// Initialize these arrays to the size of the units count array
		string[] units = new string[unitCounts.Count];
		int[] counts = new int[unitCounts.Count];

		// Loop through the unitCounts array
		int i = 0;
		foreach (KeyValuePair<string, int> unit in unitCounts) {
			// set the values in the arrays
			units[i] = unit.Key;
			counts [i] = unit.Value;

			// Bump the counter
			i++;
		}

		// Call the multiplayer calling function
		NetworkController.GetMultiplayerController().doSetUnitCounts (units, counts);
	}

	/**
	 * Sets the unit counts for the provided user
	 * @param playerNumber The array index of the requesting player
	 * @param units The string array of units
	 * @param counts The matching int array of counts for the units
	 */
	public void doSetUnitCounts (int playerNumber, string[] units, int[] counts) {
		// Cannot pass dictionaries over UNET so, need to reconstruct it
		// Initialize the dictionary
		Dictionary<string, int> unitCounts = new Dictionary<string, int> ();

		// Loop through the arrays
		for (int i = 0; i < units.Length; i++) {
			// Add the unit and count to the dictionary
			unitCounts.Add (units[i], counts[i]);
		}

		// Store the unit counts for the provided user
		playerUnitCounts [playerNumber] = unitCounts;
	}

	/**
	 * Gets the counts for each unit type for the provided player
	 * @param player The player to get the counts for
	 * @return An associative array of unit types and counts
	 */
	private Dictionary<string, int> getPlayerUnitCounts (GameObject player) {
		return playerUnitCounts [player.GetComponent<Player> ().generalSettings.playerNumber];
	}
	#endregion

	#region Add to array /// @name Add to array
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
	#endregion

	#region Get unit /// @name Get unit
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
	#endregion


	#region Heal units /// @name Heal units
	/**
	 * Heal all of the units that are available to be healed
	 */
	public void healUnits () {
	}
	#endregion

	#region Play Sounds /// @name Play Sounds
	/** 
	 * This is the class to play what sound based on the unit type
	 */
	public void PlaySound(GameObject unit) {
		if (unit.generalInformation.factionName == "Bear" && unit.generalInformation.isCommander == true) {
			GetComponent<AudioSource>().clip = audioClip[6];
		}
		else if(unit.generalInformation.factionName == BearHeavyMelee){
			GetComponent<AudioSource>().clip = audioClip[2];
		}
		else if(unit.generalInformation.factionName == BearHeavyRanged){
			GetComponent<AudioSource>().clip = audioClip[3];
		}
		else if(unit.generalInformation.factionName == BearMelee){
			GetComponent<AudioSource>().clip = audioClip[0];
		}
		else if(unit.generalInformation.factionName == BearRanged){
			GetComponent<AudioSource>().clip = audioClip[1];
		}
		else if(unit.generalInformation.factionName == "Bear" && unit.generalInformation.isSpecial == true){
			GetComponent<AudioSource>().clip = audioClip[6];
		}
		else if(unit.generalInformation.factionName == "Vampire" && unit.generalInformation.isCommander == true){
			GetComponent<AudioSource>().clip = audioClip[5];
		}
		else if(unit.generalInformation.factionName == VampireHeavyMelee){
			GetComponent<AudioSource>().clip = audioClip[2];
		}
		else if(unit.generalInformation.factionName == VampireHeavyRanged){
			GetComponent<AudioSource>().clip = audioClip[3];
		}
		else if(unit.generalInformation.factionName == VampireMelee){
			GetComponent<AudioSource>().clip = audioClip[0];
		}
		else if(unit.generalInformation.factionName == VampireRanged){
			GetComponent<AudioSource>().clip = audioClip[1];
		}
		else if(unit.generalInformation.factionName == "Vampire" && unit.generalInformation.isSpecial == true){
			GetComponent<AudioSource>().clip = audioClip[4];
		}
		else if(unit.generalInformation.factionName == "Mushroom" && unit.generalInformation.isCommander == true){
			GetComponent<AudioSource>().clip = audioClip[11];
		}
		else if(unit.generalInformation.factionName == MushroomHeavyMelee){
			GetComponent<AudioSource>().clip = audioClip[2];
		}
		else if(unit.generalInformation.factionName == MushroomHeavyRanged){
			GetComponent<AudioSource>().clip = audioClip[3];
		}
		else if(unit.generalInformation.factionName == MushroomMelee){
			GetComponent<AudioSource>().clip = audioClip[0];
		}
		else if(unit.generalInformation.factionName == MushroomRanged){
			GetComponent<AudioSource>().clip = audioClip[1];
		}
		else if(unit.generalInformation.factionName == "Mushroom" && unit.generalInformation.isSpecial == true){
			GetComponent<AudioSource>().clip = audioClip[10];
		}
		else if(unit.generalInformation.factionName == "Tome" && unit.generalInformation.isCommander == true){
			GetComponent<AudioSource>().clip = audioClip[9];
		}
		else if(unit.generalInformation.factionName == TomeHeavyMelee){
			GetComponent<AudioSource>().clip = audioClip[2];
		}
		else if(unit.generalInformation.factionName == TomeHeavyRanged){
			GetComponent<AudioSource>().clip = audioClip[3];
		}
		else if(unit.generalInformation.factionName == TomeMelee){
			GetComponent<AudioSource>().clip = audioClip[0];
		}
		else if(unit.generalInformation.factionName == TomeRanged){
			GetComponent<AudioSource>().clip = audioClip[1];
		}
		else if(unit.generalInformation.factionName == "Tome" && unit.generalInformation.isSpecial == true){
			GetComponent<AudioSource>().clip = audioClip[8];
		}
		//Actuallys plays the clip
		GetComponent<AudioSource>().Play();

	}
	#endregion
}
