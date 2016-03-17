using UnityEngine;
using System.Collections;

/**
 * Superclass for all units
 */
public class Unit : MonoBehaviour {

	public bool hasChanged = false; //!< If the setting has been changed, set this to true in order to propagate the setting to child classes
	public GeneralInformation generalInformation = null; //!< Local instance of the GeneralInformation settings
	public TurnSettings turnSettings = null; //!< Local instance of the TurnSettings settings

	[HideInInspector]
	public int player = 0; //!< The player that this unit belongs to
}
