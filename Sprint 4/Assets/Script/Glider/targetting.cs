/*
	Created By: Ryan Lehmann
 */

using UnityEngine;
using System.Collections;


public class targetting : MonoBehaviour 
{
	public float targetingDistance;
	public Texture2D crosshairGreen;
	public Texture2D crosshairRed;
	public GameObject Crosshair;
	
	void Start()
	{
		
	}
	
	void Update () 
	{
		//creates a ray that will collide with the enemy to target it.
		RaycastHit hit;
		Ray targetingRay = new Ray(transform.position, transform.forward);
		
		//used to see the ray being made
		Debug.DrawRay(transform.position, transform.forward * targetingDistance);
		
		//checks to make sure that you can target the enemy
		if(Physics.Raycast(targetingRay, out hit, targetingDistance))
		{
			if(hit.collider.tag == "enemy")
			{
				Crosshair.transform.gameObject.GetComponent<Crosshair>().setImage(crosshairRed);
				if(Input.GetKeyDown(KeyCode.LeftShift))
				{
					hit.transform.gameObject.GetComponent<EnemyAI>().setTargeted(true);
				}	
			}
			
		}
		else
		{
				Crosshair.transform.gameObject.GetComponent<Crosshair>().setImage(crosshairGreen);	
		}
		
	}
}
