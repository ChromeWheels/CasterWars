using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * The controller that controlls the overall game
 */
public class GameController : MonoBehaviour {

	//TODO: unit creation during turn
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

	public static GameController S;

	public DevTools devTools = null; //!< Settings for dev testing. Only used if devMode is enabled
	public PopulationSettings populationSettings = null; //!< Class to hold the population settings

	/**
	 * Current Player
	 */
	private GameObject currentPlayer = null; //!< Local reference to the player object for the current player
	private Player currentPlayerScript = null; //!< Local reference to the Player script for the current player

	/**
	 * Controllers
	 */
	private PlayerController playerController = null; //!< Local reference to the Players collections script
	private TurnsController turnsController = null; //!< Local reference to the turns controller
	private UIController uiScript = null; //!< Local reference to the UIController script
	private UnitsController unitsController = null; //!< Local reference to the units controller

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
		playerController = PlayerController.S;
		turnsController = TurnsController.S;
		uiScript = UIController.S;
		unitsController = UnitsController.S;
	}


	/**
	 * Function that initilizes things once the phone has started a cast
	 */
	public void doCastScreen () {
		if (devTools.devMode) {
			FactionsCollection factionsCollection = FactionsCollection.S;

			for (int i = 0; i < devTools.numPlayers; i++) {
				GameObject newPlayer = playerController.doCreatePlayer ();
				Player playerScript = newPlayer.GetComponent<Player> ();

				string faction = factionsCollection.factionNames [i];
				playerController.doSelectFaction (i, faction);

				if (i == 0) {
					currentPlayer = newPlayer;
					currentPlayerScript = playerScript;
				}
			}

			doStartGame ();

			DisabledTileController disabledTileController = DisabledTileController.S;
			disabledTileController.disableTile (new Vector2 (19, 11), 3);

			uiScript.showCanvas ("Nav");
		} else {
			// Create the player
			currentPlayer = playerController.doCreatePlayer ();

			// Set the player script
			currentPlayerScript = currentPlayer.GetComponent<Player> ();

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
		case 4:
			mapsController.construct (0);
			break;
		}

		// Create the units
		unitsController.doCreateUnitsAtStart ();

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
}
