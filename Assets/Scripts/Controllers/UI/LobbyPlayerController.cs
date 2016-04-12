using UnityEngine;
using UnityEngine.UI;
using System.Collections;

/**
 * The controller for the lobbly player
 */
public class LobbyPlayerController : MonoBehaviour {

	public Image playerPanel = null; //!< The panel that is behind the player
	public RawImage playerImage = null; //!< The image that is shown
	public Text playerName = null; //!< The Text object for the name of the player
	public GameObject readyText = null; //!< The ready text that is shown when... the player is ready

	private bool isHost = false; //!< The status of this player hosting the game

	/**
	 * Changes the player's name of the text box
	 * @param name The player's new name
	 */
	public void changePlayerName (string name) {
		playerName.text = name;
	}
}
