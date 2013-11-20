using UnityEngine;
using System.Collections;

public class RotateY : MonoBehaviour {
	public float speed = 1.0f;
	public float rotateSpeed = 3.0f;
	
	// Update is called once per frame
	void Update () 
	{
		//CharacterController controller = new GetComponent(CharacterController);
		transform.Rotate (0, Input.GetAxis("Horizontal") * rotateSpeed, 0);
	}
}
