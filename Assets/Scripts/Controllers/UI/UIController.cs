using System;
using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/**
 * Controller for the UI
 */
public class UIController : MonoBehaviour {

	public static UIController S = null;

	public GameObject[] canvasObjects = null; //!< Collection of the UI canvases
	public GameObject[] modalObjects = null; //!< Collection of modals (popups) for the UI
	public GameObject unitSelectConfirmModal = null; //!< Confirmation modal for the unit select panel

	private Dictionary<string, GameObject> canvases = null; //!< Associative array of the UI canvases
	private Dictionary<string, GameObject> modals = null; //!< Associative array of the UI modals
	private UnitsSelectPanel unitsSelectPanel = null; //!< Local reference to the UnitsSelectPanel

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;

		// Setup the canvases array
		canvases = new Dictionary<string, GameObject> ();
		foreach (GameObject canvas in canvasObjects) {
			canvases.Add (canvas.name, canvas);
		}

		// Setup the modals array
		modals = new Dictionary<string, GameObject> ();
		foreach (GameObject modal in modalObjects) {
			canvases.Add (modal.name, modal);
		}
	}

	/**
	 * Runs at load time
	 */
	void Start () {
	}

	/**
	 * Function that shows the requested canvas on the mobile phone
	 * @param canvas String name of the canvas
	 */
	public void showCanvas (string canvas) {
		GameObject hiddenCanvas = null;

		try {
			hideAllCanvases ();

			canvases.TryGetValue (canvas, out hiddenCanvas);
			hiddenCanvas.SetActive (true);

			switch (canvas) {
			case "Units Select":
				unitsSelectPanel = UnitsSelectPanel.S;
				unitsSelectPanel.construct ();
				break;
			}
		} catch (Exception e) {
			Debug.Log (string.Format ("canvas: {0} & error: {1}", hiddenCanvas, e));
		}
	}

	/**
	 * Function that hides all of the canvases
	 */
	public void hideAllCanvases () {
		foreach (KeyValuePair<string, GameObject> canvas in canvases) {
			if (canvas.Value != null) {
				canvas.Value.SetActive (false);	
			}
		}
	}
}
