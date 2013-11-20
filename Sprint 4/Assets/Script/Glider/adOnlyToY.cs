using UnityEngine;
using System.Collections;

public class adOnlyToY : MonoBehaviour {
	public int speed = 50;
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKey(KeyCode.A))
    	transform.Rotate(-Vector3.up * speed * Time.deltaTime);
 
 		if (Input.GetKey(KeyCode.D))
    	transform.Rotate(Vector3.up * speed * Time.deltaTime);
	}
}
