using UnityEngine;
using System.Collections;

public class dash : MonoBehaviour 
{
	public float dashSpeed = 10;
	public float dashDuration = 10;
	public float accelerationDuration = 6;
	
	private bool dashing = false;
	private float timeDashStarted;
	private float startingSpeed;
	// Use this for initialization
	void Start () 
	{
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		//var glider = this.GetComponent("Constant Speed");
		ConstantSpeed2 glider = GetComponent<ConstantSpeed2>();
		if(Input.GetKey("space") && !dashing && glider.tank == 15)
		{
			startingSpeed = glider.speed;
			timeDashStarted = Time.time;
			dashing = true;
			
		}
		
		if(dashing)
		{
			if(Time.time < timeDashStarted + dashDuration){
				print("dashing"+glider.speed);
				if(Time.time < timeDashStarted + accelerationDuration)
				{
					glider.speed = Mathf.Lerp(startingSpeed, dashSpeed, (Time.time-timeDashStarted) / accelerationDuration);	//ToDo move the division up :(
				}
				else
				{
					glider.speed = Mathf.Lerp(dashSpeed, startingSpeed, (Time.time-timeDashStarted-accelerationDuration) / dashDuration);
				}
			}
			else
			{
				print("dashing stop");
				glider.speed = startingSpeed;
				glider.tank = 0;
				dashing = false;
			}
		}
	
	}
	
	 void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.tag == "enemy" && dashing == true)
        {
			Destroy(col.gameObject);
        }
    }
}
