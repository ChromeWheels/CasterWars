using UnityEngine;
using System.Collections;

/**
 * The controller for player's turns
 */
public class TurnsController : MonoBehaviour {

	public static TurnsController S = null;

	private Player playerScript = null;
	private GameObject currentUnit = null;
	private RemoteCamera remoteCamera = null;

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}

	/**
	 * Runs at load time
	 */
	void Start () {
		remoteCamera = RemoteCamera.S;
	}

	public void startTurn (int playerNumber) {
		// Get the player's controller
		PlayerController controller = PlayerController.S;

		// Get the player and send to startTurn (GameObject)
		startTurn (controller.getPlayer (playerNumber));
	}

	public void startTurn (GameObject player) {
		// Get the player's script
		playerScript = player.GetComponent<Player> ();

		Debug.Log (playerScript.units.Count);

		// Get the commander
		currentUnit = playerScript.units [0];

		// Move the camera to the commander
		remoteCamera.moveTo (convertLocation (currentUnit.transform.position));
	}

	private Vector2 convertLocation (Vector3 location) {
		return new Vector2 (location.x, location.z);
	}
}
