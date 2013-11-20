using UnityEngine;
using System.Collections;

public class LimitedPivot : MonoBehaviour {
	public float speed = 1f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		float h = Input.GetAxis("Vertical"); // use the same axis that move back/forth
		float v = Input.GetAxis("Horizontal"); // use the same axis that turns left/right
	}
	
	void LateUpdate(){
		//enemy.GetComponent(Constant Speed).speed;
		float h = Input.GetAxis("Vertical"); // use the same axis that move back/forth
		float v = Input.GetAxis("Horizontal"); // use the same axis that turns left/right
		
		 //transform.localEulerAngles =  new Vector3(h*45f,0,-v*60f); // forth/back banking and left/right!
		
		float y = transform.localEulerAngles.y;
		
		transform.localEulerAngles =  new Vector3(h*45f,y,-v*60f); // forth/back banking and left/right!
		
	    //transform.localEulerAngles.z =  -v*60; // forth/back banking first!
	   	//transform.localEulerAngles.x =   h*45;  // left/right
	   	
	    float angle = h*45;
	}
}
