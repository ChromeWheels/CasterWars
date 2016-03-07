/**
 * Helper class that holds the settings for when in devMode
 */
[System.Serializable]
public class DevTools {
	
	public bool devMode = false; //!< Bypasses startup menus if set to true
	public int numUnits = 0; //!< The number of units per type that will be created at start
}
