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
	public float moveDurationPerTile; //!< The duration that the camera will take to scroll across the map
									  //!< 
									  //!< This is per tile needed to move so that the speed stays relatively the same no matter how far it has to travel
									  //!< 
									  //!< This is only used if doScrollMove is set to true

	public float duration; //!< This is used to store the duration for the camera to move
	private Vector3 target; //!< This is used to store the new location that the camera must move towards

	/**
	 * Move the camera to the given Vector3 coordinates
	 * @param target The coordinates for the camera to move to
	 */
	public void moveTo (Vector3 coords) {
		target = coords;

		setTransitionDuration ();

		StartCoroutine (Transition ());
	}

	/**
	* Move the camera to the given Vector2 coordinates using x and z
	* @param target The coordinates for the camera to move to
	*/
	public void moveTo (Vector2 coords) {
		if (doScrollMove) {
			target = new Vector3 (coords.x, transform.position.y, coords.y);

			setTransitionDuration ();

			StartCoroutine (Transition ());
		}
	}

	/**
	 * Aim the camera at the given Vector3 coordinates
	 * @param target The coordinates for the camera to aim at
	 */
	public void aimAt (Vector2 coords) {
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

	private void setTransitionDuration () {
		Vector3 start = transform.position;
		Vector3 end = target;

		float x = Mathf.Pow (start.x - end.x, 2);
		float y = Mathf.Pow (start.y - end.y, 2);

		duration = (moveDurationPerTile * Mathf.Sqrt (x + y));
	}
}