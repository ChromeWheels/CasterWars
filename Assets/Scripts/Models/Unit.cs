using UnityEngine;
using System.Collections;

/**
 * Superclass for all units
 */
public class Unit : MonoBehaviour {

	public GeneralInformation generalInformation = null; //!< Local instance of the GeneralInformation settings
	public TurnSettings turnSettings = null; //!< Local instance of the TurnSettings settings

	private float capturePercent = 0; //!< Percentage of capture status
	private float healthPercent = 100; //!< The percentage of health remaining
	private bool hasCaptured = false; //!< Set to true after sucessfully captured a supply tile

	/**
	 * Create the new unit and initalize the variables
	 * @param location The location to place the new unit
	 * @param faction The faction of the new unit
	 */
	public void createUnit (Vector3 location, Faction faction) {
		Factions factions = GetComponent<Factions> ();
//		GameObject unitPrefab = factions[faction].
//		Debug.Log(factions[faction]);
	}

}
