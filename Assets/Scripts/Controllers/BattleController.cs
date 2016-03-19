using UnityEngine;
using System.Collections;

/**
 * The controller for the battle action
 */
public class BattleController : MonoBehaviour {

	public static BattleController S = null;

	#region /// @name Controller vars
	private MapsController mapsController = null; //!< Local reference to the MapsController
	private TilesController tilesController = null; //!< The local reference to the TilesController
	private UnitsController unitsController = null; //!< The local reference to the unit's controller
	#endregion

	#region /// @name Unity methods
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
		tilesController = TilesController.S;
		unitsController = UnitsController.S;
	}
	#endregion

	/**
	 * The function that starts the battle sequence
	 * @param attackerPos The location of the attacker
	 * @param defenderPos The location of the defender
	 */
	public void doBattle (int attackerPos, int defenderPos) {
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
//		Tile attackerTileScript = 
	}
}
