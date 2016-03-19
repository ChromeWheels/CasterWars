using UnityEngine;
using System.Collections;

/**
 * Child Camera class to controll the remote camera (TV)
 */
public class RemoteCamera : Camera {

	public static RemoteCamera S = null;

	private float offset = 0; //!< The offset of the camera

	#region /// @name Unity methods
	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}
	#endregion

	/**
	 * The camera starts off in the middle of nowhere and needs to be moved to the map when it is loaded
	 */
	public void moveToMap () {
		// Get the y distance and ensure that it is not too close
		float y = (Mathf.Min (mapsController.dimensions.width, mapsController.dimensions.height) / 2);
		y = (y < 18) ? 18 : y;

		// Set the new position
		Vector3 cameraPosition = new Vector3 (((mapsController.dimensions.width / 2) - offset), y, ((mapsController.dimensions.height / 2) - offset));

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
