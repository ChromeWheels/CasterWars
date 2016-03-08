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
	private bool trackMode = false; //!< The boolean setting that disables the calculation of duration if true

	/**
	 * The function that moves the camera
	 * 
	 * NOTE: Use one of the moveTo constructor overloads
	 */
	private void moveTo () {
		// Ensure that the camera stays in bounds
		target = keepInBounds (target);

		// Check if the camera gets scrolled or not
		if (doScrollMove) {
			// Check if the trackMode is off
			if (!trackMode) {
				// It is off, calculate the duration
				setTransitionDuration ();
			}

			// Start the function that moves it
			StartCoroutine (Transition ());
		} else {
			// Jump the camera over to the new location
			transform.position = target;
		}
	}

	/**
	 * Constructor overload of the moveTo function
	 * @param coords The coordinates for the camera to move to
	 */
	public void moveTo (Vector3 coords) {
		// Set the target to move the camera to
		target = coords;

		// Call the actual function to move the camera
		moveTo ();
	}

	/**
	 * Constructor overload of the moveTo function
	 * @param coords The coordinates for the camera to move to
	 */
	public void moveTo (Vector2 coords) {
		// Set the target to move the camera to
		target = new Vector3 (coords.x, targetY, coords.y);

		// Call the actual function to move the camera
		moveTo ();
	}

	/**
	 * Constructor overload of the moveTo function
	 * @param coords The coordinates for the camera to move to
	 * @param duration The duration that the unit will move. Used to keep pace with unit's movement
	 */
	public void moveTo (Vector2 coords, float unitMovementDuration) {
		// Set the target to move the camera to
		target = new Vector3 (coords.x, targetY, coords.y);

		// Turn trackMode on
		trackMode = true;

		// Set the duration
		duration = unitMovementDuration;

		// Call the actual function to move the camera
		moveTo ();
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

		// Ensure that the trackMode is always reset back to off after the movement is over
		trackMode = false;
	}

	/**
	 * Function that calculates the distance from the camera to the target.
	 */
	private void setTransitionDuration () {
		// Set the positions
		Vector3 start = transform.position;
		Vector3 end = target;

		// Calculate the distances
		float x = Mathf.Pow (start.x - end.x, 2);
		float y = Mathf.Pow (start.y - end.y, 2);

		// Set the duration
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