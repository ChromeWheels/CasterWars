using UnityEngine;
using System.Collections;

/**
 * The model that holds the individual player's information
 */
public class Player : MonoBehaviour {

	public static Player S;

	public GeneralSettings generalSettings; //!< Holder for the general settings helper class

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;

		generalSettings = new GeneralSettings ();
	}
}
