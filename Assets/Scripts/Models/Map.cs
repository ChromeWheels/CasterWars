using UnityEngine;
using LitJson;
using System;
using System.Collections;
using System.Collections.Generic;

public class Map : MonoBehaviour {

	public static Map S;

	public List<GameObject> tileTypes;

	private int mapWidth;
	private List<int> tileTypeIds;

	public void Awake () {

		S = this;

		tileTypeIds = new List<int> ();
	}

	public void createMap (JsonData jsonData, bool boolBuildMap) {
		mapWidth = int.Parse (jsonData ["width"].ToString ());

		for (int i = 0; i < jsonData ["tiles"].Count; i++) {
			tileTypeIds.Add (int.Parse (jsonData ["tiles"] [i] ["type"].ToString ()));
		}

		if (boolBuildMap) {
			StartCoroutine (waitToBuildMap ());
		}
	}

	public void buildMap () {
		int row = 0;
		int j = 0;
		int i = 0;

		try {
			for ( ; i < tileTypeIds.Count; i++) {
				Vector3 pos = new Vector3 (j, 0, (row * -1));
				GameObject tile = Instantiate (tileTypes [tileTypeIds [i] - 1], pos, Quaternion.identity) as GameObject;
				tile.transform.Rotate (0, 180, 0);
				tile.name = string.Format ("[{0},{1}] - {2}", j, row, tileTypes [tileTypeIds [i] - 1].name);
				tile.transform.parent = gameObject.transform;

				if (j >= (mapWidth - 1)) {
					j = 0;
					row++;
				} else {
					j++;
				}
			}
		} catch (Exception e) {
			Debug.Log (string.Format ("[{0}, {1}] - i: {2}, tileTypeIds: {3}", j, row, i, tileTypeIds.Count));
			Debug.Log (e.Message);
			Debug.Log (e.StackTrace);
		}
	}

	IEnumerator waitToBuildMap () {
		yield return new WaitForSeconds (5);
		buildMap ();
	}
}
