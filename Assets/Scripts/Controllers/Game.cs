using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * The controller that controlls the overall game
 */
public class Game : MonoBehaviour {

	//TODO: unit creation during turn
	//TODO: Unit movement
	//TODO: Unit attack
	//TODO: Commander ability
	//TODO: Specials
	//TODO: Health system
	//TODO: Healing in towns
	//TODO: Resource capturing
	//TODO: Resource usage
	//TODO: Unit destruction
	//TODO: Multiplayer
	//TODO: Battle scene
	//TODO-Stretch: Draw distance
	//TODO-Stretch: Persistance
	//TODO-Stretch: Final stats

	public static Game S;

	public DevTools devTools = null; //!< Settings for dev testing. Only used if devMode is enabled
	public PopulationSettings populationSettings = null; //!< Class to hold the population settings

	private GameObject currentPlayer = null; //!< Local reference to the player object for the current player
	private Player currentPlayerScript = null; //!< Local reference to the Player script for the current player
	private PlayerController playerController = null; //!< Local reference to the Players collections script
	private UIController uiScript = null; //!< Local reference to the UIController script
	private UnitsController unitsController = null; //!< Local reference to the units controller
	private TurnsController turnsController = null; //!< Local reference to the turns controller

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
		unitsController = UnitsController.S;
		uiScript = UIController.S;
		playerController = PlayerController.S;
		turnsController = TurnsController.S;
	}


	/**
	 * Function that initilizes things once the phone has started a cast
	 */
	public void doCastScreen () {
		// Create the player
		doCreatePlayer ();

		if (devTools.devMode) {
			doSelectFaction ("Bear");
			doStartGame ();
			uiScript.showCanvas ("Nav");
		} else {
			// Change to the next step on the phone
			uiScript.showCanvas ("Factions Select");
		}
	}

	/**
	 * Function that takes out the trash once the casting is done
	 */
	public void doEndCast () {
		if (uiScript != null) {
			uiScript.hideAllCanvases ();
		}
	}

	/**
	 * Function the gets the game underway
	 */
	public void doStartGame () {
		// Get the maps controller
		MapsController mapsController = MapsController.S;

		// Choose the map based on the number of players
		switch (playerController.getNumPlayers ()) {
		case 2:
			mapsController.construct (1);
			break;
		case 3:
			mapsController.construct (2);
			break;
		case 1:
		case 4:
			mapsController.construct (0);
			break;
		}

		// Create the units
		doCreateUnitsAtStart ();

		// Move the camera to the map, wait for 2 seconds and then start player 1's turn
		RemoteCamera cam = RemoteCamera.S;
		cam.moveToMap ();

		// Start the game with player1's turn
		turnsController.startTurn (0);
	}

	/**
	 * Ends the game
	 */
	public void doEndGame () {
	}

	/**
	 * Creates the player
	 */
	public void doCreatePlayer () {
		currentPlayer = playerController.createPlayer ();
		currentPlayerScript = currentPlayer.GetComponent<Player> ();
	}

	/**
	 * Destroys the player
	 */
	public void doDestroyPlayer () {
		Destroy (currentPlayer);
	}

	/**
	 * Function that handles the click of the faction select buttons
	 * @param faction The name of the faction that the player has selected
	 */
	public void doSelectFaction (string faction) {
		// Assign the faction
		currentPlayerScript.generalSettings.factionName = faction;

		if (!devTools.devMode) {
			// Move to next screen
			uiScript.showCanvas ("Units Select");
		}
	}

	/**
	 * Creates the appropriate functions and slaps them on the map in the correct positions
	 */
	public void doCreateUnitsAtStart () {
		// Initialize the returned vector
		Vector2 initLocation = Vector2.zero;

		// Initialize the unitCounts array
		Dictionary<string, int> unitCounts = null;

		// Do this only if devMode is enabled
		if (devTools.devMode) {
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

				unitCounts.Add (type.Key, devTools.numUnits);
			}
		} else {
			// Get the unit counts
			UnitsSelectPanel unitsSelect = UnitsSelectPanel.S;
			unitCounts = unitsSelect.getUnitCounts (devTools.devMode);
		}

		// Send the array to the units controller to create the units and return the returned vector
		unitsController.createUnits (currentPlayer, unitCounts);
	}

	/**
	 * Get the current player script
	 * @return The current player's script
	 */
	public Player getCurrentPlayer () {
		return currentPlayerScript;
	}
}
