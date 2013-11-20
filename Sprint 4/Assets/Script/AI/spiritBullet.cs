using UnityEngine;
using System.Collections;

public class spiritBullet : MonoBehaviour
{
	public Rigidbody bullet; 
	public float speed = 10.0f;
	public Transform muzzlePoint; 
	public Transform target;
	public Transform player;
	public Transform spirit;
	//bool pauseBullet;
	
	int chance;
	// Use this for initialization
	void Start () 
	{
		
	}
	
	// Update is called once per frame
	void Update () 
	{
		pauseMenu pauseBullet = player.GetComponent<pauseMenu>();
		EnemyAI spawnBullet = spirit.GetComponent<EnemyAI>();
		transform.LookAt(target);
		//paused.paused=true;
		//pauseBullet = paused.pause2;
		 if(chance == 1 && pauseBullet.paused == false)
    	{
			if(spawnBullet.targeted == true)
			{
				print ("Spawn Bullet");
				Rigidbody spiritShot = (Rigidbody)Instantiate(bullet, muzzlePoint.position, muzzlePoint.rotation) ;
				spiritShot.rigidbody.useGravity = false;
        		spiritShot.velocity = muzzlePoint.forward * speed;
			}
        	
    	}
	}
	
	void LateUpdate()
	{
		chance = Random.Range(0,100);
	}	
}
