using UnityEngine;
using System.Collections;

/**
 * Superclass of the tile types
 */
public class Tile : MonoBehaviour {

	public bool canMove = true; //!< Allows/disallows the unit from moving on to tile
	public float defenseBonus; //!< The bonus given to the unit currently residing on the tile
	public float movementCost; //!< The ammount taken away from the unit's movement ability
}
