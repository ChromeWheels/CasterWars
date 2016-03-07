using UnityEngine;
using System.Collections;

/**
 * Superclass for all units
 */
public class Unit : MonoBehaviour {

	public bool hasChanged = false; //!< If the setting has been changed, set this to true in order to propagate the setting to child classes
	public GeneralInformation generalInformation = null; //!< Local instance of the GeneralInformation settings
	public TurnSettings turnSettings = null; //!< Local instance of the TurnSettings settings

	private float capturePercent = 0; //!< Percentage of capture status
	private float healthPercent = 100; //!< The percentage of health remaining
	private bool hasCaptured = false; //!< Set to true after sucessfully captured a supply tile
}
