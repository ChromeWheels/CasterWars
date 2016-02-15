using UnityEngine;
using LitJson;
using System.Collections;
using System.Collections.Generic;

public class Maps : MonoBehaviour {

	public string jsonMapLocation;
	public GameObject mapModel;

	public List<GameObject> maps;

	IEnumerator Start() {
		if (jsonMapLocation != "") {
			// Load JSON data from a URL
			WWW www = new WWW(jsonMapLocation);

			// Load the data and yield (wait) till it's ready before we continue executing the rest of this method.
			yield return www;
			if (www.error == null) {
				processMaps(www.text);
			} else {
				Debug.Log("ERROR: " + www.error);
			}
		}
	}

	private void processMaps (string jsonString) {
		JsonData jsonMaps = JsonMapper.ToObject (jsonString);
		maps = new List<GameObject> ();
		Map map;
		Map mapScript;

		for (int i = 0; i < jsonMaps ["maps"].Count; i++) {
			GameObject newMap = Instantiate (mapModel, Vector3.zero, Quaternion.identity) as GameObject;
			newMap.transform.parent = gameObject.transform;

			mapScript = newMap.GetComponent<Map> ();
			mapScript.createMap (jsonMaps ["maps"] [i], (i == 0));

			maps.Add (newMap);
		}
	}
}
