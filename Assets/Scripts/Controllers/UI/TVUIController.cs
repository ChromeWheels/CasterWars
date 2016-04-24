using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

/**
 * The controller for the UI that is shown on the TV
 */
public class TVUIController : MonoBehaviour {

	public static TVUIController S = null;

	public GameObject[] panels = null; //!< The ui panels

	private Dictionary<string, GameObject> canvases = null; //!< The associative array of canvases

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

		// Initialize the array
		canvases = new Dictionary<string, GameObject> ();

		// Loop through the panels
		foreach (GameObject panel in panels) {
			// Add to the hash array
			canvases.Add (panel.name, panel);
		}
	}

	/**
	 * Runs at load time
	 */
	void Start () {
		gameController = GameController.S;
		lobbyController = LobbyController.S;
	}
	#endregion

	#region Canvas methods /// @name Canvas methods
	/**
	 * Shows the provided canvas of the tv ui
	 * @param canvas The canvas to show
	 */
	public void showUI (string canvas) {
		// Initialize the canvas to show
		GameObject hiddenCanvas = null;

		try {
			// Hide all of the canvases, this eleminates double showing
			hideAllCanvases ();

			// Get the wanted canvas
			canvases.TryGetValue (canvas, out hiddenCanvas);

			// Show the canvas
			hiddenCanvas.SetActive (true);

			// Choose what to do
//			switch (canvas) {
//			}
		} catch (Exception e) {
			Debug.Log (string.Format ("canvas: {0} & error: {1}", hiddenCanvas, e));
		}
	}

	/**
	 * Function that hides all of the canvases
	 */
	public void hideAllCanvases () {
		// Loop through the canvases
		foreach (KeyValuePair<string, GameObject> canvas in canvases) {
			// Ensure that the canvas exists
			if (canvas.Value != null) {
				// Hide the canvas
				canvas.Value.SetActive (false);	
			}
		}
	}
	#endregion
}
