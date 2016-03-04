using UnityEngine;
using System.Collections;

/**
 * Superclass of the map levels
 */
public class Map : MonoBehaviour {

	public Vector2 campRadius = Vector2.zero; //!< The radius (minus the starting point) of the camp in x and y
	public Vector2[] commanderStartingLocations = null; //!< The list of pre-defined starting locations for the commanders
	public Dimensions dimensions; //!< The dimensions of the map
	public int[,] tiles = null; //!< The multidemensional array of what tiles are where on the map
								//!< 
								//!< This is set in the child classes
								//!< 
								//!< Example of using this:
								//!< 
								//!< NOTE: _the height is the map height minus 1_
								//!< ~~~{.cs}
								//!< void Awake() {
								//!< 	tiles = new int[<width>, <height>] {
								//!< 	{<tileType>, <tileType>},
								//!< 	{<tileType>, <tileType>}
								//!< }
								//!< ~~~ 
	public Vector2[] startingLocations = null; //!< The list of pre-defined starting locations
}