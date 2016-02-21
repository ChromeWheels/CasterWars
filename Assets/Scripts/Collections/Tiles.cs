using UnityEngine;
using System.Collections;

public class Tiles : MonoBehaviour {

	public static Tiles S;

	public GameObject[] tiles;

	void Awake () {
		S = this;
	}

	public int getMovementCost (int tileType) {
		return tiles [tileType].GetComponents<Tile> () [0].movementCost;
	}

	public bool getCanMove (int tileType) {
		return tiles [tileType].GetComponents<Tile> () [0].canMove;
	}
}
