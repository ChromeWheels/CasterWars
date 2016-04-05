using UnityEngine;
using UnityEngine.UI;
using System.Collections;

/**
 * The controller for the lobbly player
 */
public class LobbyPlayerController : MonoBehaviour {

	public Text playerName = null; //!< The Text object for the name of the player

	private bool isHost = false; //!< The status of this player hosting the game

	/**
	 * Changes the player's name of the text box
	 * @param name The player's new name
	 */
	public void changePlayerName (string name) {
		playerName.text = name;
	}
}
