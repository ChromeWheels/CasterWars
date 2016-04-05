using UnityEngine;

/**
 * All of the general information related to the Unit
 */
[System.Serializable]
public class GeneralInformation {
	
	public bool canCreate = true; //!< Ability to create the unit after the start of the game
	public bool isCommander = false; //!< Sets if this unit is a commander or not
	public bool isSpecial = false; //!< Used to tell if the unit is a special type
	public int populationCost = 0; //!< The cost per unit to the available population cap
	public float unitStartingY = -0.51f; //!< The default starting y position of the units
	public Vector3 defaultScale = Vector3.one; //!< The default scale of the unit
	public Quaternion defaultRotation = Quaternion.identity; //!< The default rotation of the unit
}
