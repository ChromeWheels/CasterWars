using UnityEngine;
using LitJson;
using System.Collections;
using System.Collections.Generic;

public class Map : MonoBehaviour {

	public static Map S;

	public List<GameObject> tileTypes;

	private int mapWidth;
	private List<int> tileRotations;
	private List<int> tileTypeIds;

	public void Awake () {

		S = this;

		tileRotations = new List<int> ();
		tileTypeIds = new List<int> ();
	}

	public void createMap (JsonData jsonData, bool boolBuildMap) {
		Debug.Log (jsonData [1].ToString());
		mapWidth = int.Parse (jsonData ["width"].ToString ());

		for (int i = 0; i < jsonData ["tiles"].Count; i++) {
			tileRotations.Add (int.Parse (jsonData ["tiles"] [i] ["rotateY"].ToString ()));
			tileTypeIds.Add (int.Parse (jsonData ["tiles"] [i] ["type"].ToString ()));
		}

		if (boolBuildMap) {
			StartCoroutine (waitToBuildMap ());
		}
	}

	public void buildMap () {
		int row = 0;
		int j = 0;

		for (int i = 0; i < Mathf.Min(tileRotations.Count, tileTypeIds.Count); i++) {
			Vector3 pos = new Vector3 (j, 0, (row * -1));
			GameObject tile = Instantiate (tileTypes [tileTypeIds [i] - 1], pos, Quaternion.identity) as GameObject;
			tile.name = string.Format ("[{0},{1}] - {2}", j, row, tileTypes [tileTypeIds [i] - 1].name);
			tile.transform.Rotate (0, (180 + tileRotations [i]), 0);
			tile.transform.parent = gameObject.transform;

			if (j >= (mapWidth - 1)) {
				j = 0;
				row++;
			} else {
				j++;
			}
		}
	}

	IEnumerator waitToBuildMap () {
		yield return new WaitForSeconds (5);
		buildMap ();
	}
}
