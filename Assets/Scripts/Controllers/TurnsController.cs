using UnityEngine;
using System.Collections;

/**
 * The controller for player's turns
 */
public class TurnsController : MonoBehaviour {

	public static TurnsController S = null;

	#region Controller vars /// @name Controller vars
	private DisabledTileController disabledTileController = null; //!< The local reference to the disabled tile's controller
	private GameController gameController = null; //!< The local reference to the game controller
	private HighlightsController highlightsController = null; //!< The local reference to the highlight's controller
	private MapsController mapsController = null; //!< The local reference to the maps controller
	private MovementController movementController = null; //!< The local reference to the movement's controller
	private PlayerController playerController = null; //!< The local reference to the player's controller
	private ResourceTileController resourceTileController = null; //!< The local reference to the resource tile's controller
	private RemoteCamera remoteCamera = null; //!< The local reference to the remote camera's script
	private TilesController tilesController = null; //!< The local reference to the TilesController
	private UnitsController unitsController = null; //!< The local reference to the unit's controller
	#endregion

	#region Unity methods /// @name Unity methods
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
		disabledTileController = DisabledTileController.S;
		gameController = GameController.S;
		highlightsController = HighlightsController.S;
		mapsController = MapsController.S;
		movementController = MovementController.S;
		playerController = PlayerController.S;
		resourceTileController = ResourceTileController.S;
		remoteCamera = RemoteCamera.S;
		tilesController = TilesController.S;
		unitsController = UnitsController.S;
	}
	#endregion

	/**
	 * Starts the turn
	 * @param playerNumber The players collection index of the requested number
	 */
	public void startTurn (int playerNumber) {
		// Ensure that there are more than 1 player alive
		if (playerController.alivePlayers > 1) {
//			gameController.debug (string.Format ("Starting the turn for player {0}", (playerNumber + 1)));

			// Ensure that the player exists
			if (playerNumber < playerController.getNumPlayers ()) {
				// Get the new player
				playerController.setNewPlayer (playerNumber);

				// Verify that the commander is still alive
				if (!playerController.currentPlayerScript.commanderIsAlive) {
					// It is not, go to the next player
					startTurn (++playerController.currentPlayerIndex);
				}

				// Update the disabled tiles
				disabledTileController.updateDisabledTiles ();

				// Process the resources captured/capturing
				resourceTileController.processResources ();

				// Call the function to award the commander's bonus(es)
				applyCommanderBonus ();

				// Call the function to heal the units
				unitsController.healUnits ();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      

				// Start the turn off with the commander
				initUnitTurn (0);
			} else if (playerController.getNumPlayers () > 0) {
				// Requested playerNumber is out of bounds... reset to 0
				startTurn (0);
			} else {
				// There is no players left... exit the game
				gameController.doEndGame ();
			}
		} else {
			// There is no players left... exit the game
			gameController.doEndGame ();
		}
	}

	/**
	 * Initializes the turn
	 * @param unitNumber The index number of the initial unit to start with
	 */
	public void initUnitTurn (int unitNumber) {
//		Debug.Log (string.Format ("Starting the turn for unit {0} of {1}", (unitNumber + 1), playerController.currentPlayerScript.units.Count));

		// Ensure that the selected unit is inside the bounds
		if (unitNumber < playerController.currentPlayerScript.units.Count) {
			unitsController.setNewUnit (unitNumber);

			// Set the available movement alloted for this unit
			movementController.movementLeft = unitsController.currentUnitScript.turnSettings.movementAlloted;

			// Move the camera to the unit
			remoteCamera.moveTo (mapsController.convertLocation (unitsController.currentUnit.transform.position), true);
		} else {
			// The player is not in bounds... end the turn
//			endTurn ();
		}
	}

	public void endMoveCamera () {
		// Start the movement
		movementController.processMoves ();
	}

	/**
	 * Handles the stay put button
	 */
	public void doStayPut () {
		// Clear the map of highlights
		highlightsController.removeHighlights ();

		// Move to the next unit
		initUnitTurn (++unitsController.currentUnitNumber);
	}

	/**
	 * Ends the turn for the current player
	 */
	private void endTurn () {
		// Check that the user can create anymore units at this time
//		if (playerScript.remainingPoints > unitsController.getMinPopCost ()) {
			// Show the units select
//			uiController.showCanvas ("Units Select", true);

			// Get the panel's script
//			UnitsSelectPanel unitsSelectPanel = UnitsSelectPanel.S;
//		} else {
			// Turn is done, move to next player
		startTurn (++playerController.currentPlayerIndex);
//		}
	}

	/**
	 * Applies the bonus that is provided by the commander
	 */
	private void applyCommanderBonus () {
	}
}
