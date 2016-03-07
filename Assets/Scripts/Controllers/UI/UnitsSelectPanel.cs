using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

/**
 * Controller for the unit's select panel
 */
public class UnitsSelectPanel : MonoBehaviour {

	public static UnitsSelectPanel S = null;

	public GameObject pointsObject = null; //!< The object that holds the points available text
	public GameObject unitSelectPanelPrefab = null; //!< Template for the unit select panels
	public GameObject unitsSelectContent = null; //!< The content object that the select panels will be childs of
	public GameObject unitsObject = null; //!< The object that holds the units count text
	public Texture[] unitsTextures = null; //!< The raw collection of textures for the icons on the select panels

	[HideInInspector]
	public int QueuedPopulationDiff {
		get { return queuedPopulationDiff; }
		private set { queuedPopulationDiff = value; }
	} //!< Property method of int queuedPopulationDiff

	private int allowedPopulation = 0; //!< The local storage of the max allowed population size
	private List<GameObject> panels = null; //!< An array of the instantiated panels
	private Text pointsText = null; //!< The script of the points text
	private int queuedPopulation = 0; //!< The ammount of points that the currently queued population costs
	private int queuedPopulationDiff = 0; //!< The remaining points available after deducting queuedPopulation from allowedPopulation
	private int queueSize = 0; //!< The number of units that have been queued
	private Dictionary<string, int> unitPopulations = null; //!< Associative array that holds each unit type and the final count
	private Dictionary<string, Texture> unitTextures = null; //!< The associative array of unit textures from unitsTextures
	private UnitTypes unitTypesScript = null; //!< Local reference to the UnitsType script
	private Text unitsText = null; //!< The text script of the units object

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake () {
		S = this;

		panels = new List<GameObject> ();

		// Make the associative array of textures
		unitTextures = new Dictionary<string, Texture>();
		foreach (Texture unit in unitsTextures) {
			unitTextures.Add (unit.name, unit);
		}
	}

	/**
	 * The constructor function for the units select canvas
	 */
	public void construct () {
		// Initialize the script
		unitTypesScript = UnitTypes.S;
		Unit unitScript = null;

		// Get the initial allowed population
		Game gameScript = Game.S;
		allowedPopulation = gameScript.populationSettings.populationAtStart;

		// Set the initial population on the text
		pointsText = pointsObject.GetComponent<Text> ();
		pointsText.text = string.Format ("{0}", allowedPopulation);

		// Set the initial unit count on the text
		unitsText = unitsObject.GetComponent<Text> ();
		unitsText.text = string.Format ("{0}", queueSize);

		// Loop through all unit types
		foreach (KeyValuePair<string, GameObject> type in unitTypesScript.types) {
			unitScript = type.Value.GetComponent<Unit> ();

			// Limit the new panels to only the units that can be created
			if (unitScript.generalInformation.canCreate) {
				// Create the new panel
				GameObject newPanel = Instantiate (unitSelectPanelPrefab, Vector3.zero, Quaternion.identity) as GameObject;
				newPanel.transform.SetParent (unitsSelectContent.transform);
				newPanel.transform.localScale = new Vector3 (1, 1, 1);
				panels.Add (newPanel);

				// Call the contruction function for the new panel
				UnitPanelController tmpScript = newPanel.GetComponent<UnitPanelController> ();
				tmpScript.construct (gameScript.getCurrentPlayer ().generalSettings.factionName, type.Key);
			}
		} 
	}

	/**
	 * Destroys the unit select panels
	 */
	public void deconstruct () {
		// Loop through the current panels
		foreach (GameObject panel in panels) {
			Destroy (panel);
		}

		// Empty the panels array
		panels.Clear();

		// Reset the variables
		allowedPopulation = 0;
		queuedPopulation = 0;
		queuedPopulationDiff = 0;
		queueSize = 0;
	}

	/**
	 * Gets the queued counts from the unit panels and returns it in an associative array
	 * @param devMode Generates random unit counts if set to true
	 * @return An associative array of the queued units count
	 */
	public Dictionary<string, int> getUnitCounts (bool devMode) {
		// Initialize the array
		unitPopulations = new Dictionary<string, int> ();

		// Loop through the units
		foreach (GameObject unit in panels) {
			// Get the script
			UnitPanelController script = unit.GetComponent<UnitPanelController> ();

			// Add the unit to the population array
			unitPopulations.Add(script.name, (devMode) ? Random.Range (0, 3) : script.populationCount);
		}

		return unitPopulations;
	}

	/**
	 * Gets the provided texture
	 * @param textureName The filename of the texture without the extension
	 */
	public Texture  getTexture (string textureName) {
		Texture texture = null;
		unitTextures.TryGetValue (textureName, out texture);

		return texture;
	}
		
	/**
	 * Updates the panels and texts when a button is pressed
	 * @param size The amount to take away from the population cap
	 * @param direction The direct of the button clicked
	 */
	public void updatedCount (int size, string direction) {
		// Update the variables
		if (direction.CompareTo ("up") == 0) {
			queuedPopulation += size;
			queueSize++;
		} else {
			queuedPopulation -= size;
			queueSize--;
		}
		queuedPopulationDiff = allowedPopulation - queuedPopulation;

		// Update the available points text
		pointsText.text = string.Format("{0}", queuedPopulationDiff);

		// Update the units count text
		unitsText.text = string.Format("{0}", queueSize);

		// Loop through all of the select panels
		foreach (GameObject panel in panels) {
			// Call the contruction function for the new panel
			UnitPanelController tmpScript = panel.GetComponent<UnitPanelController> ();
			tmpScript.disableButtons (queuedPopulationDiff);
		}
	}
}
