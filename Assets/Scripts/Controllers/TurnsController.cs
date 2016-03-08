using UnityEngine;
using System.Collections;

/**
 * The controller for player's turns
 */
public class TurnsController : MonoBehaviour {

	public static TurnsController S = null;

	private float movementLeft = 0; //!< The amount of movement that is left for the current unit

	/**
	 * The Current Player
	 */
	private GameObject currentPlayer = null; //!< Local copy of the current player
	private Player playerScript = null; //!< The script of the current player
	private int currentPlayerIndex = 0; //!< The array index of the current player

	/**
	 * The Current Unit
	 */
	private GameObject currentUnit = null; //!< The current unit's game object
	private int currentUnitNumber = 0; //!< The array index of the current unit
	private Unit unitScript = null; //!< The script of the current unit

	/**
	 * Controllers
	 */
	private MapsController mapsController = null; //!< The local reference to the maps controller
	private NavController navController = null; //!< The local reference to the nav controller
	private PlayerController playerController = null; //!< The local reference to the player's controller
	private RemoteCamera remoteCamera = null; //!< The local reference to the remote camera's script
	private UnitsController unitsController = null; //!< The local reference to the unit's controller

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
		mapsController = MapsController.S;
		navController = NavController.S;
		playerController = PlayerController.S;
		remoteCamera = RemoteCamera.S;
		unitsController = UnitsController.S;
	}

	/**
	 * Gets the current player
	 * @return the GameObject of the current player
	 */
	public GameObject getCurrentPlayer () {
		return currentPlayer;
	}

	/**
	 * Starts the turn
	 * @param playerNumber The players collection index of the requested number
	 */
	public void startTurn (int playerNumber) {
		// Ensure that the player exists
		if (playerController.getNumPlayers () >= playerNumber) {
			// Set the new player's index
			currentPlayerIndex = playerNumber;

			// Get the player and send to startTurn (GameObject)
			startTurn (playerController.getPlayer (playerNumber));
		} else if (playerController.getNumPlayers () > 0) {
			// Set the new player's index
			currentPlayerIndex = 0;

			// Requested playerNumber is out of bounds... reset to 0
			startTurn (playerController.getPlayer (0));
		} else {
			// There is no players left... exit the game
			Game gameController = Game.S;
			gameController.doEndGame ();
		}
	}

	/**
	 * Starts the turn
	 * @param player The GameObject of the new player
	 */
	public void startTurn (GameObject player) {
		// Ensure that the player's object exists
		if (player != null) {
			// Set the current player
			currentPlayer = player;

			// Get the player's script
			playerScript = player.GetComponent<Player> ();

			// Verify that the commander is still alive
			if (!playerScript.commanderIsAlive) {
				// It is not, go to the next player
				startTurn (++currentPlayerIndex);
			}

			// Process the resources captured/capturing
			processResources ();

			// Call the function to award the commander's bonus(es)
			applyCommanderBonus ();

			// Call the function to heal the units
			healUnits ();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      

			// Start the turn off with the commander
			initUnitTurn (0);
		} else {
			// Try to get the player again
			startTurn (currentPlayerIndex);
		}
	}

	/**
	 * Initializes the turn
	 * @param unitNumber The index number of the initial unit to start with
	 */
	public void initUnitTurn (int unitNumber) {
		// Ensure that the selected unit is inside the bounds
		if (unitNumber < playerScript.units.Count) {
			// Set the current unit's number
			currentUnitNumber = unitNumber;

			// Get the unit and it's script
			currentUnit = playerScript.units [unitNumber];
			unitScript = currentUnit.GetComponent<Unit> ();

			// Move the camera to the unit
			remoteCamera.moveTo (convertLocation (currentUnit.transform.position));

			// Get the movement alloted for this unit
			movementLeft = unitScript.turnSettings.movementAlloted;

			// Start the movement
			processMoves ();
		} else {
			// The player is not in bounds... end the turn
			endTurn ();
		}
	}

	/**
	 * Handles the navigation menu clicks
	 * @param direction The direction to move the unit
	 */
	public void doMoveCurrentUnit (string direction) {
		// Clear the map of highlights
		mapsController.removeHighlights ();

		// Get the current location
		Vector2 currLocation = convertLocation (currentUnit.transform.position);

		// Set the movement factor
		Vector3 movementFactor = Vector3.zero;
		switch (direction) {
		case "Left":
			movementFactor = Vector3.left;
			break;
		case "Right":
			movementFactor = Vector3.right;
			break;
		case "Up":
			movementFactor = Vector3.forward;
			break;
		case "Down":
			movementFactor = Vector3.back;
			break;
		}

		// Get the coords of the tile that will be the new location
		Vector2 newLocation = convertLocation (currentUnit.transform.position + movementFactor);

		// Get the action before we move
		HighlightActions action = mapsController.getTileAction (newLocation);

		// Do the appropriate action
		switch (action) {
		case HighlightActions.Attack:
			break;
		case HighlightActions.Capture:
			break;
		case HighlightActions.Move:
			// Subtract the cost of the just finished move
			movementLeft -= mapsController.getMovementCost (newLocation);
				
			// Move the unit
			unitsController.moveUnit (currentUnit, newLocation);
			break;
		}
	}

	/**
	 * Function that finishes the movement logic for the unit
	 */
	public void finishMovement () {
		// Start the movement
		processMoves ();
	}

	/**
	 * Ends the turn for the current player
	 */
	private void endTurn () {
	}

	/**
	 * Logic for getting and processing available moves
	 */
	private void processMoves () {
		// Get the availability of possible moves
		if (!mapsController.getPossibleMoves (convertLocation (currentUnit.transform.position), movementLeft)) {
			// No moves available, move to the next unit
			initUnitTurn (++currentUnitNumber);
		}

		// Highlight the possible moves
		mapsController.highlightPossibleMoves ();

		// Tell the NavController to toggle the availability of the direction buttons
		navController.toggleButtons (convertLocation (currentUnit.transform.position));
	}

	/**
	 * Converts a Vector3 location to a Vector2 location
	 * @param location The Vector3 location
	 * @return Returns the Vector2 conversion of the provided location
	 */
	private Vector2 convertLocation (Vector3 location) {
		return new Vector2 (location.x, location.z);
	}

	/**
	 * Applies the captured resources and attempts to capture the ones that are available
	 */
	private void processResources () {		
	}

	/**
	 * Applies the bonus that is provided by the commander
	 */
	private void applyCommanderBonus () {
	}

	/**
	 * Heal all of the units that are available to be healed
	 */
	private void healUnits () {
	}
}
