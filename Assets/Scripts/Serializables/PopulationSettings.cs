using UnityEngine;

/**
 * All of the settings related to the population
 */
[System.Serializable]
public class PopulationSettings {

	public bool canMoveThroughFriendlies = true; //!< Toggles the ability for units from the same player
	public int populationAtStart = 10; //!< The max population at the start of the game
}
