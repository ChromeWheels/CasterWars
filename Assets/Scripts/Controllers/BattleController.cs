using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * The controller for the battle action
 */
public class BattleController : MonoBehaviour {

	public static BattleController S = null;

	#region Vars
	public float deathRoundingThreshold = 0.5f; //!< The amount of health to consider the unit dead
	public bool simultaneousAttack = false; //!< If enabled both units will attack before health is deducted
											//!< If disabled the attack will happen and if the defending unit is still alive then counter-attack
	public float slope = 0.125f; //!< One of the variables in the formula for the battle
	public float yIntercept = 0.5f; //!< One of the variables in the formula for the battle
	#endregion 

	#region Controller vars /// @name Controller vars
//	private DisabledTileController disabledTileController = null; //!< The local reference to the disabled tile's controller
//	private GameController gameController = null; //!< The local reference to the game controller
//	private HighlightsController highlightsController = null; //!< The local reference to the highlight's controller
	private MapsController mapsController = null; //!< The local reference to the maps controller
//	private MovementController movementController = null; //!< The local reference to the movement's controller
//	private NavController navController = null; //!< The local reference to the nav controller
//	private PlayerController playerController = null; //!< The local reference to the player's controller
//	private ResourceTileController resourceTileController = null; //!< The local reference to the resource tile's controller
//	private RemoteCamera remoteCamera = null; //!< The local reference to the remote camera's script
	private TilesController tilesController = null; //!< The local reference to the TilesController
//	private TurnsController turnsController = null; //!< The local reference to the TurnsController
//	private UIController uiController = null; //!< The local reference to the UIController
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
//		disabledTileController = DisabledTileController.S;
//		gameController = GameController.S;
//		highlightsController = HighlightsController.S;
		mapsController = MapsController.S;
//		movementController = MovementController.S;
//		navController = NavController.S;
//		playerController = PlayerController.S;
//		resourceTileController = ResourceTileController.S;
//		remoteCamera = RemoteCamera.S;
		tilesController = TilesController.S;
//		turnsController = TurnsController.S;
//		uiController = UIController.S;
		unitsController = UnitsController.S;
	}
	#endregion

	#region Start the battle
	/**
	 * The function that starts the battle sequence
	 * @param attackerPos The location of the attacker
	 * @param defenderPos The location of the defender
	 * @return The boolean value of if the attacker was killed or not
	 */
	public bool doBattle (int attackerPos, int defenderPos) {
		// Initialize the output
		bool output = false;

		// Get the units
		GameObject attacker = unitsController.getUnitAtPosition (attackerPos);
		GameObject defender = unitsController.getUnitAtPosition (defenderPos);

		// Get the scripts
		Unit attackerScript = attacker.GetComponent<Unit> ();
		Unit defenderScript = defender.GetComponent<Unit> ();

		// Get the tile types
		int attackerTile = tilesController.getTileType (attackerPos);
		int defenderTile = tilesController.getTileType (defenderPos);

		// Get the scripts for the tiles
		Tile attackerTileScript = tilesController.getTile (attackerTile).GetComponent<Tile> ();
		Tile defenderTileScript = tilesController.getTile (defenderTile).GetComponent<Tile> ();

		// Load the battle scene

		// Calculate and subtract the health from the defending unit
		defenderScript.turnSettings.healthPercent -= calculateHealthReduction (
			attackerScript.turnSettings.attackPower,
			defenderScript.turnSettings.defensePower,
			defenderTileScript.defenseBonus
		);

		// If simultaneous attack is enabled or if the defending unit is still alive
		if (simultaneousAttack || defenderScript.turnSettings.healthPercent > deathRoundingThreshold) {
			// Calculate and subtract the health from the attacking unit for the counter-attack
			attackerScript.turnSettings.healthPercent -= calculateHealthReduction (
				defenderScript.turnSettings.attackPower,
				attackerScript.turnSettings.defensePower,
				attackerTileScript.defenseBonus
			);
		}

		// Destroy the defending unit if their health is depleted
		if (defenderScript.turnSettings.healthPercent <= deathRoundingThreshold) {
			// Call the function to remove this unit
			unitsController.doDestroyUnit (defender);
		}

		// Destroy the attacking unit if their health is depleted
		if (attackerScript.turnSettings.healthPercent <= deathRoundingThreshold) {
			// Call the function to remove this unit
			unitsController.doDestroyUnit (attacker);

			// Set the output to show that the attaker was killed
			output = true;
		}

		return output;
	}
	#endregion

	#region Calculate the health depletion
	/**
	 * Calculates health reduction based on a formula
	 * 
	 * Uses the following formula:
	 * Where \f$a\f$ = Attacking unit's power, \f$d\f$ = Defending unit's power, \f$t\f$ = Defending unit's tile defense bonus
	 * \f[
	 *    h = clope \times (a - d \times t) + yIntercept
	 * \f]
	 * @param attack The power of the attacking unit
	 * @param defense The power of the defending unit
	 * @param tile The defensive bonus of the tile that the defending unit is on
	 * @return The amount of health to take away from the defending unit
	 */
	private float calculateHealthReduction (float attack, float defense, float tile) {
		// Calculate the health depletion based on the given algorithm
		float output = (slope * (attack - (defense * tile)) + yIntercept);

		return output * 100;
	}
	#endregion
}
