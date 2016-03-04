using UnityEngine;
using System.Collections;

/**
 * Child Camera class to controll the remote camera (TV)
 */
public class RemoteCamera : Camera {

	public static RemoteCamera S = null;

	/**
	 * Called when the script is loaded, before the game starts
	 */
	public void Awake () {
		S = this;
	}

	/**
	 * The camera starts off in the middle of nowhere and needs to be moved to the map when it is loaded
	 */
	public void moveToMap () {
		// Get the map's dimensions
		MapsController mapScript = MapsController.S;

		// Move the camera to be zoomed out at the start
		Vector3 cameraPosition = new Vector3 ((mapScript.Dimensions.height / 2), (Mathf.Min (mapScript.Dimensions.width, mapScript.Dimensions.height) / 2), (mapScript.Dimensions.height / 2));
		if (doScrollMove) {
			doScrollMove = false;
			moveTo (cameraPosition);
			doScrollMove = true;
		} else {
			moveTo (cameraPosition);
		}
	}
}
