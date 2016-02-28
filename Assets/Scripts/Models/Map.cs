using UnityEngine;
using System.Collections;

/**
 * Superclass of the map levels
 */
public class Map : MonoBehaviour {

	public Dimensions dimensions; //!< The dimensions of the map
	public Vector3[] startingLocations = null; //!< The list of pre-defined starting locations
											   //!< 
											   //!< This is set in the child classes
											   //!< 
											   //!< ~~~{.cs}
											   //!< void Awake() {
											   //!<		startingLocations = new Vector3[4] {
											   //!<			new Vector3 (x, y, z),
											   //!<			new Vector3 (x, y, z),
											   //!<			new Vector3 (x, y, z),
											   //!<			new Vector3 (x, y, z)
											   //!< 	};
											   //!< }
											   //!< ~~~ 

	[HideInInspector]
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
}