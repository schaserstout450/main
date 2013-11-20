using UnityEngine;
using System.Collections;

public class SoftBounds : MonoBehaviour {
	
	[SerializeField] private GameObject bounds;
	
	private Vector3 min;
	private Vector3 max;
	
	void Start() {
		Vector3 size = bounds.collider.bounds.size;
		Vector3 halfSize = new Vector3(size.x * .5f, size.y * .5f, size.z * .5f);
		Vector3 position = bounds.transform.position;
		
		min = position - halfSize;
		max = position + halfSize;
		Destroy(bounds);
	}
	
	// Update is called once per frame
	void Update () {
		
		bool outOfBounds = false;
		
		float x = this.transform.position.x;
		float y = this.transform.position.y;
		float z = this.transform.position.z;
		
		if (x < min.x){
			x = min.x;
			outOfBounds = true;
		}else if (x > max.x){
			x = max.x;
			outOfBounds = true;
		}
		
		if (y < min.y){
			y = min.y;
			outOfBounds = true;
		}else if (y > max.y) {
			y = max.y;
			outOfBounds = true;
		}
		
		if(z < min.z){
			z = min.z;
			outOfBounds = true;
			this.transform.Rotate(-.5f,0,0);
		}else if (z > max.z){
			z = max.z;
			outOfBounds = true;
			this.transform.Rotate(.5f,0,0);
		}
		
		if(outOfBounds){
			this.transform.position.Set(x,y,z);
			this.transform.Rotate(0,.5f,0);
			//print ("Colliding");
		}
		//print(this.transform.rotation.y);
		Debug.DrawLine(min,max);
	}
}
