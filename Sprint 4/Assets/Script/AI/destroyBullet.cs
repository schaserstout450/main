using UnityEngine;
using System.Collections;

public class destroyBullet : MonoBehaviour
{
	public float timer;
	public bool hit = false;
	//GameObject glider = GameObject.Find ("glider");
	// Use this for initialization
	void Start ()
	{
		
	}
	
	// Update is called once per frame
	void Update ()
	{
		//Glider glider = GameObject.Find ("glider").GetComponent();
		timer += 1.0F * Time.deltaTime;
		if(timer >=4)
		{
			GameObject.Destroy(gameObject);
		}
		
		if(hit == true)
		{
			hit = false;
		}
	}
	
	void OnTriggerEnter( Collider other)
	{
		if(other.gameObject.tag == "glider")
		{	
			print ("collision");
			other.gameObject.GetComponent<ConstantSpeed2>().speed -= .5f;
			hit = true;
			GameObject.Destroy(gameObject);
		}	
	}
}
