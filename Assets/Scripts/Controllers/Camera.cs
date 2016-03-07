using UnityEngine;
using System.Collections;

/**
 * Superclass of the camera controllers
 */
public class Camera : MonoBehaviour {

	public bool doScrollMove = true; //!< The boolean of whether or not to scroll the movement of the camera
									 //!< 
									 //!< - Values
									 //!<   + _true_: The camera will scroll across the map from one point to another based on the speed assigned by moveSpeed
									 //!<   + _false_: The camera will instantly move to the next coordinates
	public float moveDurationPerTile = 0; //!< The duration that the camera will take to scroll across the map
										  //!< 
										  //!< This is per tile needed to move so that the speed stays relatively the same no matter how far it has to travel
										  //!< 
										  //!< This is only used if doScrollMove is set to true
	public float targetY = 10.0f; //!< This is the y position that the camera will take after initial load

	[HideInInspector]
	public Dimensions mapDimension = null; //!< Local copy of the map's dimensions

	private float duration = 0; //!< This is used to store the duration for the camera to move
	private Vector3 target = Vector3.zero; //!< This is used to store the new location that the camera must move towards

	/**
	 * Move the camera to the given Vector3 coordinates
	 * @param coords The coordinates for the camera to move to
	 */
	public void moveTo (Vector3 coords) {
		target = keepInBounds (coords);

		if (doScrollMove) {
			setTransitionDuration ();

			StartCoroutine (Transition ());
		} else {
			transform.position = target;
		}
	}

	/**
	* Move the camera to the given Vector2 coordinates using x and z
	* @param coords The coordinates for the camera to move to
	*/
	public void moveTo (Vector2 coords) {
		target = keepInBounds (new Vector3 (coords.x, targetY, coords.y));

		if (doScrollMove) {
			setTransitionDuration ();

			StartCoroutine (Transition ());
		} else {
			transform.position = target;
		}
	}

	/**
	 * Function that transitions the camera to the new position
	 */
	private IEnumerator Transition () {
		float t = 0.0f;
		Vector3 startingPos = transform.position;

		while (t < 1.0f) {
			t += Time.deltaTime * (Time.timeScale / duration);

			transform.position = Vector3.Lerp (startingPos, target, t);
			yield return 0;
		}
	}

	/**
	 * Function that calculates the distance from the camera to the target.
	 */
	private void setTransitionDuration () {
		Vector3 start = transform.position;
		Vector3 end = target;

		float x = Mathf.Pow (start.x - end.x, 2);
		float y = Mathf.Pow (start.y - end.y, 2);

		duration = (moveDurationPerTile * Mathf.Sqrt (x + y));
	}

	/**
	 * Changes the x and z of the target to ensure that the camera will not run off of the map
	 * @param location The Vector3 coordinates of the target
	 * @return The adjusted Vector3 coordinates of the target
	 */
	private Vector3 keepInBounds (Vector3 location) {
		// Generate the min/max x and z distance
		float minX = ((1.022f * location.y) + (-0.36f)); // y = mx+b Where m=1.022, x=location.y, b=-0.36
		float minZ = ((0.57f * location.y) + (-0.37f)); // y = mx+b Where m=0.57, x=location.y, b=-0.37

		// Adjust the x distance if it is outside the bounds
		if (location.x < minX) {
			location.x = minX;
		} else if (location.x > (mapDimension.width - minX)) {
			location.x = (mapDimension.width - minX);
		}

		// Adjust the z distance if it is outside the bounds
		if (location.z < minZ) {
			location.z = minZ;
		} else if (location.z > (mapDimension.height - minZ)) {
			location.z = (mapDimension.height - minZ);
		}

		return location;
	}
}