/**
 * Helper class that holds the settings for when in devMode
 */
[System.Serializable]
public class DevTools {
	
	public bool devMode = false; //!< Bypasses startup menus if set to true
	public bool infiniteTurn = false; //!< If set, the units never run out of moves
	public int numUnits = 0; //!< The number of units per type that will be created at start
	public int numPlayers = 0; //!< The numbers of players to create at start
}
