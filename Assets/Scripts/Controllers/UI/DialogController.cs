using UnityEngine;
using UnityEngine.UI;
using System;
using System.Collections;
using System.Collections.Generic;

/**
 * The controller for the ever needed dialog box
 */
public class DialogController : MonoBehaviour {

	public Text title = null; //!< The title text script
	public Text message = null; //!< The message text script
	public Button[] buttons = null; //!< An array of the buttons

	private Dictionary<string, Button> buttonsArray = null; //!< The dictionary of buttons
	private Dictionary<string, DialogActions> actions = null; //!< Array of actions to do when the buttons are pressed

	#region Controller vars/// @name Controller vars
	private GameController gameController = null; //!< The local reference to the game controller
	#endregion

	#region Unity methods /// @name Unity methods
	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		gameController = GameController.S;

		// Initialize the array
		buttonsArray = new Dictionary<string, Button> ();

		// Loop throught the buttons
		foreach (Button button in buttons) {
			// Add the button to the array
			buttonsArray.Add (button.gameObject.name, button);
		}
	}

	/**
	 * Runs at load time
	 */
	void Start () {
	}
	#endregion

	/**
	 * The constructor for the dialog
	 * @param title The title of the dialog
	 * @param message The message of the dialog
	 * @param buttons The buttons to show. The indices of these buttons is used the same as the param actions
	 * @param actions The actions that will be triggered. The indices of these actions is used the same as the param buttons
	 */
	public void construct (string title, string message, string[] buttons, DialogActions[] actions) {
		// Initialize the array
		this.actions = new Dictionary<string, DialogActions> ();

		// Set the title
		this.title.text = title;

		// Set the message
		this.message.text = message;

		// Loop for each param array entry
		for (int i = 0; i < Mathf.Min (buttonsArray.Count, buttons.Length, actions.Length); i++) {
			// Check if the button is available
			if (buttonsArray.ContainsKey (buttons [i])) {
				// Get the button
				Button button = null;
				buttonsArray.TryGetValue (buttons [i], out button);

				// Ensure the button is not already used
				// Show the button
				button.gameObject.SetActive (true);

				// Store the action
				this.actions.Add (buttons [i], actions [i]);
			}
		}
	}

	/**
	 * Deconstructs the dialog (i.e. hides the buttons)
	 */
	public void deconstruct () {
		// Loop through the buttons and hide them
		foreach (Button button in buttons) {
			button.gameObject.SetActive (false);
		}

		// Close the dialog
		gameObject.SetActive (false);
	}

	/**
	 * Method that handles the buttons being pressed
	 * @param button The button that was pressed
	 */
	public void doHandleButtons (string button) {
		// Initialize the variables that will be used
		DialogActions action = DialogActions.None;

		// Get the appropriate action based on the button
		actions.TryGetValue (button, out action);

		// Do the appropriate action based on the action
		switch (action) {
		case DialogActions.ResetCountdownClock:
			gameController.resetCountdown ();
			break;
		}

		// Deconstruct the dialog
		deconstruct ();
	}
}
