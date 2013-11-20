using UnityEngine;
using System.Collections;

public class PlayerBounds : MonoBehaviour {
	
	public bool outOfBounds;
	
	
	private Quaternion startingRotation;
	private Quaternion desiredRotation;
	private float outOfBoundsStartTime;
	private float maxTime; //the number of seconds it takes to get back in bounds
	
	[SerializeField] private GameObject bounds;
	
	private Vector3 min;
	private Vector3 max;
	
	
	void Awake() {
		Vector3 size = bounds.collider.bounds.size;
		Vector3 halfSize = new Vector3(size.x * .5f, size.y * .5f, size.z * .5f);
		Vector3 position = bounds.transform.position;
		
		min = position - halfSize;
		max = position + halfSize;
		Destroy(bounds);
		
				
		outOfBounds = false;
		maxTime = 2;
		startingRotation = new Quaternion();
		desiredRotation = new Quaternion();
		
		//print ("min "+min);
		//print ("max "+max);
	}
	
	void LateUpdate () {
		if(outOfBounds){ //Move the player back in bounds
			
			float timePassed = Time.timeSinceLevelLoad - outOfBoundsStartTime;
			float timeRatio = timePassed/maxTime;
			transform.rotation = Quaternion.Lerp(startingRotation, desiredRotation,timeRatio);
			//print ("Time Passed: "+timePassed + " "+transform.rotation.y+ " C:"+ startingRotation.eulerAngles.y+" D:"+desiredRotation.eulerAngles.y);
			
			if(timePassed > maxTime){
				outOfBounds = false;
				//print ("OB Reset");
				
				
				float x = this.transform.position.x;
				float y = this.transform.position.y;
				float z = this.transform.position.z;
				
				if(x < min.x)
					x = min.x;
				else if(x > max.x)
					x = max.x;
				if(z < min.z)
					z = min.z;
				else if(z > max.z)
					z = max.z;
				if(y < min.y)
					y = min.y;
				else if(y > max.y)
					y = max.y;
				
				this.transform.position.Set(x,y,z); //This somtimes fails to work because something else is hijacking the position					
			}
		} else { //Check if you go out of bounds
			desiredRotation.Set(transform.rotation.x , transform.rotation.y, transform.rotation.z, transform.rotation.w);
			float x = this.transform.position.x;
			float y = this.transform.position.y;
			float z = this.transform.position.z;
			
			if (x < min.x){
				x = min.x;
				desiredRotation.SetLookRotation(Vector3.right);
				outOfBounds = true;

			}else if (x > max.x){
				x = max.x;
				desiredRotation.SetLookRotation(Vector3.left);
				outOfBounds = true;
			}
			
			if (y < min.y){
				y = min.y;
				desiredRotation.SetLookRotation(Vector3.up);
				outOfBounds = true;
			}else if (y > max.y) {
				y = max.y;
				desiredRotation.SetLookRotation(Vector3.down);
				outOfBounds = true;
			}
			
			if(z < min.z){
				z = min.z;
				desiredRotation.SetLookRotation(Vector3.forward);
				outOfBounds = true;
			}else if (z > max.z){
				z = max.z;
				desiredRotation.SetLookRotation(Vector3.back);
				outOfBounds = true;
			}
			
			if(outOfBounds){ //Start moving the player back in bounds
				startingRotation.Set(transform.rotation.x , transform.rotation.y, transform.rotation.z, transform.rotation.w);
					
				this.transform.position.Set(x,y,z);
				outOfBoundsStartTime = Time.timeSinceLevelLoad;
				//print ("Out of bounds C:"+ startingRotation+" D:"+desiredRotation.eulerAngles.y);
			}
			
			debugDraw();
		}
	}
	
		private void debugDraw()
		{
			Vector3 pt1 = new Vector3(min.x,max.y,min.z);
			Vector3 pt2 = new Vector3(max.x,max.y,min.z);
			Vector3 pt3 = new Vector3(min.x,max.y,max.z);
			Vector3 pt4 = new Vector3(max.x,max.y,max.z);
			
			Vector3 pt5 = new Vector3(min.x,min.y,min.z);
			Vector3 pt6 = new Vector3(max.x,min.y,min.z);
			Vector3 pt7 = new Vector3(min.x,min.y,max.z);
			Vector3 pt8 = new Vector3(max.x,min.y,max.z);
			
			Debug.DrawLine(pt1,pt2);
			Debug.DrawLine(pt1,pt3);
			Debug.DrawLine(pt3,pt4);
			Debug.DrawLine(pt4,pt2);
			
			Debug.DrawLine(pt5,pt6);
			Debug.DrawLine(pt5,pt7);
			Debug.DrawLine(pt7,pt8);
			Debug.DrawLine(pt8,pt6);
			
			Debug.DrawLine(pt1,pt5);
			Debug.DrawLine(pt2,pt6);
			Debug.DrawLine(pt3,pt7);
			Debug.DrawLine(pt4,pt8);
		}
}
