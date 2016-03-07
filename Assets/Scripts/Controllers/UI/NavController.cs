﻿using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

/**
 * The controller for the navigation elements of the UI
 */
public class NavController : MonoBehaviour {

	public static NavController S = null;

	public GameObject[] buttons = null; //!< The list of buttons

	private Dictionary<string, GameObject> buttonsArray = null; //!< The associative array of the buttons
	private MapsController mapsController = null; //!< The local reference to the MapsController

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;

		// Initialize the buttons array
		buttonsArray = new Dictionary<string, GameObject> ();

		// Loop though the provided buttons
		foreach (GameObject button in buttons) {
			// Add the button to the array
			buttonsArray.Add (button.name, button);
		}
	}

	/**
	 * Runs at load time
	 */
	void Start () {
		mapsController = MapsController.S;
	}

	/**
	 * Show and hide the children game objects
	 * 
	 * This is due to an error thrown if the NavPanel is not active at the start
	 * @param isShown The boolean value of the shown status of the children
	 */
	public void showHideUI (bool isShown) {
		// Loop through the children
		foreach (Transform child in transform) {
			// Show/hide the child
			child.gameObject.SetActive (isShown);
		}
	}

	/**
	 * Toggles the enabled status of the directional buttons
	 * @param location The location of the current tile to start from
	 */
	public void toggleButtons (Vector2 location) {
		// Ensure that the buttons are shown
		showHideUI (true);

		// Get the availability of the directions
		Dictionary<string, bool> directions = mapsController.getMovePossibility (location);

		// Loop through the directions array
		foreach (KeyValuePair<string, bool> direction in directions) {
			// Prepare the button's GameObject
			GameObject button = null;

			// Get the button from the buttons array
			buttonsArray.TryGetValue (direction.Key, out button);

			// Only execute if the button is set
			if (button != null) {
				// Set the button's enabled availability
				button.GetComponent<Button> ().interactable = direction.Value;
			}
		}
	}
}