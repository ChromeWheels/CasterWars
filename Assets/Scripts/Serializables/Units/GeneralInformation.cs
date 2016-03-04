using UnityEngine;

/**
 * All of the general information related to the Unit
 */
[System.Serializable]
public class GeneralInformation {
	
	public string Name = ""; //!< The name of the unit
	public string description = ""; //!< A description of the unit
	public bool canCreate = true; //!< Ability to create the unit after the start of the game
	public bool isSpecial = false; //!< Used to tell if the unit is a special type
	public int populationCost = 0; //!< The cost per unit to the available population cap
	public Quaternion defaultRotation = Quaternion.identity; //!< The default rotation of the unit
}
