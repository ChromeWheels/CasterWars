using UnityEngine;
using UnityEngine.UI;
using System.Collections;

/**
 * Controller for the loading screens
 */
public class LoadingScreenController : MonoBehaviour {

	public RectTransform emptyProgressBar = null; //!< The empty progress bar
	public RectTransform fullProgressBar = null; //!< The loading progress bar
	public Text messageText = null; //!< The text object that holds the messages
	public float duration = 3; //!< The duration in seconds to load for
	public float wait = 0.5f; //!< The wait between steps
	public bool showMessages = true; //!< The bool setting to show the messages
	public string[] messages = null; //!< The messages to choose from

	private float width = 0; //!< The width of the full bars
	private float loaded = 0; //!< The 0.0 - 1.0 percentage of loading
	private float step = 0; //!< The amount to add to the loading % each step

	#region Unity methods /// @name Unity methods
	/**
	 * Runs at load time
	 */
	void Start () {
		// Caclulate the size of the steps
		step = (100 / (duration / wait)) / 100;

		// Calculate the size of the bars
		width = (Screen.width * 0.75f);

		// Calculate the x location of the bars
		float left = (Screen.width - width) / 2;

		// Set the x location of the bars
		emptyProgressBar.transform.Translate (new Vector3 (left, 0, 0));
		fullProgressBar.transform.Translate (new Vector3 (left, 0, 0));

		// Set the width of the bars
		setWidth ("e", width);
		setWidth ("f", 0);

		GameController gameController = GameController.S;
		if (gameController.devTools.devMode) {
			MultiplayerController controller = NetworkController.GetMultiplayerController ();
			controller.doLoaded ();

			// Hide the loading screen
			gameObject.SetActive (false);
		} else {
			// Start the stepping
			StartCoroutine (updateLoadProgress ());
		}
	}
	#endregion

	/**
	 * Updates the amount loaded
	 */
	private IEnumerator updateLoadProgress () {
		// Wait the prescribed amount of time
		yield return new WaitForSeconds (wait);

		// Check if loaded or not
		if (loaded < 1.0f) {
			// Update the loaded bar's width
			setWidth ("f", (width * loaded));

			// Update the loaded %
			loaded += step;

			// Check if there are messages and it is set to show them
			if (showMessages && messages.Length > 0) {
				// Get a random message
				int index = Mathf.RoundToInt (Random.Range (0, messages.Length));

				// Show the message
				messageText.text = messages [index];
			}

			// Call this function to stepp again
			StartCoroutine (updateLoadProgress ());
		} else {
			// Update the loaded bar's width
			setWidth ("f", width);

			MultiplayerController controller = NetworkController.GetMultiplayerController ();
			controller.doLoaded ();

			// Hide the loading screen
			gameObject.SetActive (false);
		}
	}

	/**
	 * Sets the width of the progress bars
	 * @param bar The letter code of the bar to set the width of
	 * @param width The width to set the bar to
	 */
	private void setWidth (string bar, float width) {
		// Choose which bar to change
		switch (bar) {
		case "e":
			emptyProgressBar.sizeDelta = new Vector2 (width, 50);
			break;
		case "f":
			fullProgressBar.sizeDelta = new Vector2 (width, 50);
			break;
		}
	}
}