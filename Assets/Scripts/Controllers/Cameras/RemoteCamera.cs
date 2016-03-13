using UnityEngine;
using System.Collections;

/**
 * Child Camera class to controll the remote camera (TV)
 */
public class RemoteCamera : Camera {

	public static RemoteCamera S = null;

	private float offset = 0; //!< The offset of the camera

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
		Dimensions dimensions = mapScript.Dimensions;

		// Get the y distance and ensure that it is not too close
		float y = (Mathf.Min (dimensions.width, dimensions.height) / 2);
		y = (y < 18) ? 18 : y;

		// Set the new position
		Vector3 cameraPosition = new Vector3 (((dimensions.width / 2) - offset), y, ((dimensions.height / 2) - offset));

		// Move the camera to be zoomed out at the start
		if (doScrollMove) {
			doScrollMove = false;
			moveTo (cameraPosition, true);
			doScrollMove = true;
		} else {
			moveTo (cameraPosition, true);
		}
	}
}
