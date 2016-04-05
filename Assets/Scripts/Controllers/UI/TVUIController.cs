using UnityEngine;
using System.Collections;

public class TVUIController : MonoBehaviour {

	public static TVUIController S = null;

	public GameObject lobby = null; //!< The lobby ui parent object

	#region Controller vars/// @name Controller vars
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
		lobbyController = LobbyController.S;
	}
	#endregion

	public void initializeUI (string playerName) {
		// Show the lobby
		lobby.SetActive (true);

		// Initialize the lobby
		lobbyController.doCreateLobby (playerName);
	}
}
