using UnityEngine;
using System.Collections;

/**
 * The controller for the UI that is shown on the TV
 */
public class TVUIController : MonoBehaviour {

	public static TVUIController S = null;

	public GameObject lobby = null; //!< The lobby ui parent object

	#region Controller vars/// @name Controller vars
	private GameController gameController = null; //!< The local reference to the game controller
	private LobbyController lobbyController = null; //!< The local reference to the lobby controller
	#endregion

	#region Unity methods /// @name Unity methods
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
		gameController = GameController.S;
		lobbyController = LobbyController.S;
	}
	#endregion

	/**
	 * Shows the provided canvas of the tv ui
	 * @param canvas The canvas to show
	 */
	public void showUI (string canvas) {
		// Show the provided canvas if not already shown
		switch (canvas) {
		case "lobby":
			gameController.debug ("Showing the lobby");
			if (!lobby.activeInHierarchy) {
				lobby.SetActive (true);
			}
			break;
		}
	}
}
