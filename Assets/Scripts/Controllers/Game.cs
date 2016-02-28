using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * The controller that controlls the overall game
 */
public class Game : MonoBehaviour {

	//TODO: Finish unit creation
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

	public bool devMode = false; //!< Bypasses startup menus if set to true
	public PopulationSettings populationSettings = null; //!< Class to hold the population settings

	private GameObject currentPlayer = null; //!< Local reference to the player object for the current player
	private Player currentPlayerScript = null; //!< Local reference to the Player script for the current player
	private PlayerController playerController = null; //!< Local reference to the Players collections script
	private UIController uiScript = null; //!< Local reference to the UIController script

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}

	/**
	 * Function that initilizes things once the phone has started a cast
	 */
	public void doCastScreen () {
		// Get the local vars
		uiScript = UIController.S;
		playerController = PlayerController.S;

		// Create the player
		doCreatePlayer ();

		// Create the map
		MapsController mapsController = MapsController.S;
		mapsController.construct (0);

		if (devMode) {
			doSelectFaction ("Bear");
			doCreateUnitsAtStart ();
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

		// Move to next screen
		uiScript.showCanvas ("Units Select");
	}

	/**
	 * Creates the appropriate functions and slaps them on the map in the correct positions
	 */
	public void doCreateUnitsAtStart () {
		// Get the unit counts
		UnitsSelectPanel unitsSelect = UnitsSelectPanel.S;
		Dictionary<string, int> unitCounts = unitsSelect.getUnitCounts (devMode);

		// Send the array to the players controller to create the units

	}

	/**
	 * Get the current player script
	 * @return The current player's script
	 */
	public Player getCurrentPlayer () {
		return currentPlayerScript;
	}
}
