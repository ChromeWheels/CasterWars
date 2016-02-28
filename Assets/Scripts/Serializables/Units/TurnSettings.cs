/**
 * All of the settings related to the Unit's turn
 */
[System.Serializable]
public class TurnSettings {
	
	public float attackPower = 0; //!< The amount of damage that the unit deals
	public float attackRange = 1; //!< The range that a unit can attack from
	public float movementAlloted = 0; //!< The maximum number of tiles that the unit can travel in a single turn
}
