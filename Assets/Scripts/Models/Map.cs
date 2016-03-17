using UnityEngine;
using System.Collections;
using System.Collections.Generic;

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
								//!< NOTE: _the height is the map height minus 1_
								//!< 
								//!< Example of using this:
								//!< ~~~{.cs}
								//!< void Awake() {
								//!< 	tiles = new int[<width>, <height>] {
								//!< 	{<tileType>, <tileType>},
								//!< 	{<tileType>, <tileType>}
								//!< }
								//!< ~~~ 
	public Dictionary<int, Vector2> resourceTile = null; //!< The dictionary of resource tile locations
														 //!< 
														 //!< This is set in the child classes
														 //!< 
														 //!< NOTE: _The index is the generated integer representation of the Vector2 location_
														 //!< 
														 //!< NOTE: _The map's child class needs to import System.Collections.Generic in order to use Dictionaries_
														 //!< 
														 //!< Example of using this:
														 //!< ~~~{.cs}
														 //!< void Awake() {
														 //!< 	resourceTile = new Dictionary<int, Vector2> () {
														 //!< 	{<index>, new Vector2 (<x>, <y>)},
														 //!< 	{<index>, new Vector2 (<x>, <y>)}
														 //!< }
														 //!< ~~~ 
														 //!< @see MapsController.convertToIndex
	public Vector2[] startingLocations = null; //!< The list of pre-defined starting locations
}