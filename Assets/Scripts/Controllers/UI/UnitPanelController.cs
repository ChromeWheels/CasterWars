using UnityEngine;
using UnityEngine.UI;
using System.Collections;

/**
 * Controller of the panel prefab for the units select panel
 */
public class UnitPanelController : MonoBehaviour {

	public static UnitPanelController S;

	public GameObject imageObj = null; //!< Reference to the raw image object
	public GameObject countObj = null; //!< Reference to the unit count text object
	public GameObject costObj = null; //!< Reference to the unit cost text object
	public GameObject nameObj = null; //!< Reference to the unit's name text object
	public GameObject upButton = null; //!< Reference to the up arrow button
	public GameObject downButton = null; //!< Reference to the down arrow button

	[HideInInspector]
	public int populationCount = 0; //!< Count of the population to build upon game start

	private UnitsSelectPanel unitsSelectPanel = null; //!< Local reference to the UnitsSelectPanel script
	private Text countTxt = null; //!< Reference to the count text object's script
	private int populationCost = 0; //!< Local copy of the cost per unit to the available population cap

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;
	}

	/**
	 * The constructor function for this panel
	 * @param factionName The name of the faction to load the units from
	 * @param unitName The name of the unit to load
	 */
	public void construct (string factionName, string unitName) {
		unitsSelectPanel = UnitsSelectPanel.S;

		// Get the text script for the count game object
		countTxt = countObj.GetComponent<Text> ();

		// Get the population cost for this unit type
		UnitsController unitsController = UnitsController.S;
		populationCost = unitsController.getUnitPopulationCost (unitName);

		// Set the name and unit cost text values
		costObj.GetComponent<Text> ().text = string.Format ("Cost: {0}", populationCost);
		nameObj.GetComponent<Text> ().text = unitName;
		name = unitName;

		// Load the RawImage
		string fileName = string.Format ("{0}_{1}", factionName.ToLower (), unitName.ToLower ().Replace (" ", "_"));

		// Set the image on the panel
		RawImage img = imageObj.GetComponent<RawImage>();
		img.texture = unitsSelectPanel.getTexture (fileName);

		// Disable the down button at start
		downButton.GetComponent<Button> ().interactable = false;
	}

	/**
	 * Handler for the up button to add units to the population queue
	 */
	public void addUnit () {
		if (upButton.GetComponent<Button> ().interactable) {
			populationCount++;
			updateCount ("up");
		}
	}

	/**
	 * Handler for the down button to remove units from the population queue
	 */
	public void subUnit () {
		if (downButton.GetComponent<Button> ().interactable) {
			populationCount--;
			updateCount ("down");
		}
	}

	/**
	 * Function that updates the text on the panel to reflect the new population count
	 * @param direction The direct of the button clicked
	 */
	private void updateCount (string direction) {
		countTxt.text = string.Format ("{0}", populationCount);

		unitsSelectPanel.updatedCount (populationCost, direction);
	}

	/**
	 * Disables/enables the up and down buttons when appropriate
	 * 
	 * Called from UnitsSelectPanel.updatedCount
	 * @see UnitsSelectPanel.updatedCount
	 * @see UnitsSelectPanel.queuedPopulationDiff
	 * @param queuedPopulationDiff see UnitsSelectPanel.queuedPopulationDiff
	 */
	public void disableButtons (int queuedPopulationDiff) {
		// Check if another unit can be added
		if ((queuedPopulationDiff - populationCost) < 0) {
			upButton.GetComponent<Button> ().interactable = false;
		} else {
			upButton.GetComponent<Button> ().interactable = true;
		}

		// Check if the unit count is 0
		if (populationCount == 0) {
			downButton.GetComponent<Button> ().interactable = false;
		} else {
			downButton.GetComponent<Button> ().interactable = true;
		}
	}
}
