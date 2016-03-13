﻿using UnityEngine;
using System.Collections;

/**
 * 2 player Map - testmap
 */
public class testmap : Map {

	/**
	 * Called when the script is loaded, before the game starts
	 */
	void Awake() {
		tiles = new int[20, 41] {
			{8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8},
			{8, 21, 7, 7, 7, 7, 7, 7, 7, 7, 24, 7, 7, 7, 7, 7, 7, 7, 7, 19, 8, 21, 7, 7, 7, 7, 7, 7, 7, 7, 24, 7, 7, 7, 7, 7, 7, 7, 7, 19, 8},
			{8, 18, 11, 11, 4, 4, 4, 11, 11, 11, 18, 11, 11, 11, 4, 4, 4, 11, 11, 18, 8, 18, 11, 11, 4, 4, 4, 11, 11, 11, 18, 11, 11, 11, 4, 4, 4, 11, 11, 18, 8},
			{8, 18, 11, 3, 3, 3, 3, 3, 11, 11, 18, 11, 11, 5, 5, 5, 5, 5, 11, 18, 8, 18, 11, 3, 3, 3, 3, 3, 11, 11, 18, 11, 11, 5, 5, 5, 5, 5, 11, 18, 8},
			{8, 18, 4, 3, 3, 3, 3, 3, 11, 11, 18, 11, 11, 5, 5, 5, 5, 5, 4, 18, 8, 18, 4, 3, 3, 3, 3, 3, 11, 11, 18, 11, 11, 5, 5, 5, 5, 5, 4, 18, 8},
			{8, 18, 4, 3, 3, 3, 3, 3, 4, 8, 25, 8, 4, 5, 5, 5, 5, 5, 4, 18, 8, 18, 4, 3, 3, 3, 3, 3, 4, 8, 25, 8, 4, 5, 5, 5, 5, 5, 4, 18, 8},
			{8, 18, 4, 3, 3, 3, 3, 3, 4, 8, 25, 8, 4, 5, 5, 5, 5, 5, 4, 18, 8, 18, 4, 3, 3, 3, 3, 3, 4, 8, 25, 8, 4, 5, 5, 5, 5, 5, 4, 18, 8},
			{8, 18, 11, 3, 3, 3, 3, 3, 4, 10, 10, 10, 4, 5, 5, 5, 5, 5, 11, 18, 8, 18, 11, 3, 3, 3, 3, 3, 4, 10, 10, 10, 4, 5, 5, 5, 5, 5, 11, 18, 8},
			{8, 18, 11, 11, 11, 4, 4, 4, 10, 10, 10, 10, 10, 4, 4, 4, 11, 11, 11, 23, 1, 22, 11, 11, 11, 4, 4, 4, 10, 10, 10, 10, 10, 4, 4, 4, 11, 11, 11, 18, 8},
			{8, 18, 11, 11, 11, 8, 8, 10, 10, 10, 10, 10, 10, 10, 8, 8, 11, 11, 11, 18, 8, 18, 11, 11, 11, 8, 8, 10, 10, 10, 10, 10, 10, 10, 8, 8, 11, 11, 11, 18, 8},
			{8, 23, 7, 7, 7, 1, 1, 10, 10, 10, 10, 10, 10, 10, 1, 1, 7, 7, 7, 22, 8, 23, 7, 7, 7, 1, 1, 10, 10, 10, 10, 10, 10, 10, 1, 1, 7, 7, 7, 22, 8},
			{8, 18, 6, 6, 6, 8, 8, 10, 10, 10, 10, 10, 10, 10, 8, 8, 6, 6, 6, 18, 8, 18, 6, 6, 6, 8, 8, 10, 10, 10, 10, 10, 10, 10, 8, 8, 6, 6, 6, 18, 8},
			{8, 18, 6, 6, 6, 4, 4, 4, 10, 10, 10, 10, 10, 4, 4, 4, 6, 6, 6, 23, 1, 22, 6, 6, 6, 4, 4, 4, 10, 10, 10, 10, 10, 4, 4, 4, 6, 6, 6, 18, 8},
			{8, 18, 6, 2, 2, 2, 2, 2, 4, 10, 10, 10, 4, 9, 9, 9, 9, 9, 6, 18, 8, 18, 6, 2, 2, 2, 2, 2, 4, 10, 10, 10, 4, 9, 9, 9, 9, 9, 6, 18, 8},
			{8, 18, 4, 2, 2, 2, 2, 2, 4, 8, 25, 8, 4, 9, 9, 9, 9, 9, 4, 18, 8, 18, 4, 2, 2, 2, 2, 2, 4, 8, 25, 8, 4, 9, 9, 9, 9, 9, 4, 18, 8},
			{8, 18, 4, 2, 2, 2, 2, 2, 4, 8, 25, 8, 4, 9, 9, 9, 9, 9, 4, 18, 8, 18, 4, 2, 2, 2, 2, 2, 4, 8, 25, 8, 4, 9, 9, 9, 9, 9, 4, 18, 8},
			{8, 18, 4, 2, 2, 2, 2, 2, 6, 6, 18, 6, 6, 9, 9, 9, 9, 9, 4, 18, 8, 18, 4, 2, 2, 2, 2, 2, 6, 6, 18, 6, 6, 9, 9, 9, 9, 9, 4, 18, 8},
			{8, 18, 6, 2, 2, 2, 2, 2, 6, 6, 18, 6, 6, 9, 9, 9, 9, 9, 6, 18, 8, 18, 6, 2, 2, 2, 2, 2, 6, 6, 18, 6, 6, 9, 9, 9, 9, 9, 6, 18, 8},
			{8, 18, 6, 6, 4, 4, 4, 6, 6, 6, 18, 6, 6, 6, 4, 4, 4, 6, 6, 18, 8, 18, 6, 6, 4, 4, 4, 6, 6, 6, 18, 6, 6, 6, 4, 4, 4, 6, 6, 18, 8},
			{8, 20, 7, 7, 7, 7, 7, 7, 7, 7, 15, 7, 7, 7, 7, 7, 7, 7, 7, 14, 8, 20, 7, 7, 7, 7, 7, 7, 7, 7, 15, 7, 7, 7, 7, 7, 7, 7, 7, 14, 8}
		};
	}
}