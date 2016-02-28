using UnityEngine;
using System.Collections;

/**
 * Child Camera class to controll the remote camera (TV)
 */
public class RemoteCamera : Camera {

	public static RemoteCamera S = null;

	/**
	 * Called when the script is loaded, before the game starts
	 */
	public void Awake () {
		S = this;
	}
}
