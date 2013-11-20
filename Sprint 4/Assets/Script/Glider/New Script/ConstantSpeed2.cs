using UnityEngine;
using System.Collections;

public class ConstantSpeed2 : MonoBehaviour 
{
	public float speed = 1;
	public float maxSpeed = 4;
	public float tank = 0;
	public GameObject back;
	public GameObject front;
	private float glideAngle;
	public bool boost1 = true;
	bool boost2 = false;
	// Use this for initialization
	void Start ()
	{
		front = GameObject.FindGameObjectWithTag("front");
		back = GameObject.FindGameObjectWithTag("back");
	}
	
	// Update is called once per frame
	void Update ()
	{
		pauseMenu pauseGlider = GetComponent<pauseMenu>();
		destroyBullet bulletHit = GetComponent<destroyBullet>();
		
		rigidbody.angularVelocity = Vector3.zero;
		Screen.showCursor = false;
		
		//Translate the glider.
		if(pauseGlider.paused == false)
		{	
			if(glideAngle > 1.001f)
			{
				if(speed>0)
				{
					speed -= .006f;//transAmount -.2;
				}
				else
				{
					speed = 0f;
				}	
				
			}
			else if(glideAngle < .998 && speed < maxSpeed)
			{
				speed += .005f;
			}
			else
			{
				if(speed>0)
				{
					//speed -= .001;//transAmount -.2;
				}
				else
				{
					speed = 0f;
				}	
			}	
			
			if(Input.GetKeyDown(KeyCode.Mouse0) && boost1 == true)
			{
				if(speed < maxSpeed)
				{
					speed +=.05f;
					boost1=false;
					boost2=true;
					if(tank<15)
					{
						tank++;
					}
				}
		    }    
		    
		    if(Input.GetKeyDown(KeyCode.Mouse1) && boost2 == true)
			{
				if(speed < maxSpeed)
				{
					speed+=.05f;
					boost1=true;
					boost2=false;
					if(tank<15)
					{
						tank++;
					}
				}	
		    } 
			if(Input.GetMouseButton(2))
			{
				if(speed > 0)
				{
					speed -= .04f;
					
				}	
		    }    
			
			if(speed >0)
			{
				transform.Translate( 0f, -.1f, speed); 
			}
			/*else if(speed>4)
			{
				transform.Translate( 0, -.1,);
			}*/
			else
			{
				transform.Translate( 0f, -.1f, 0f); 
			}
			glideAngle = front.transform.position.y/back.transform.position.y;
			print(speed);
		}	
		else
		{
			transform.Translate( 0, 0, 0);
			print ("paused");	
		}
	}
}
