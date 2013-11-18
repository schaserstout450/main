using UnityEngine;
using System.Collections;

public class testAI : MonoBehaviour {
    public int Speed = 20;
    public Vector3 wayPoint;
    public int Range = 10;

	// Use this for initialization
	void Start () {
	    Wander();
	}
	
	// Update is called once per frame
	void Update () {
	    transform.position += transform.TransformDirection(Vector3.forward)*Speed*Time.deltaTime;
        if((transform.position - wayPoint).magnitude < 3)
        {
            // when the distance between us and the target is less than 3
            // create a new way point target
            Wander();
        }
	}

    void Wander() {
        // does nothing except pick a new destination to go to
        wayPoint = new Vector3(Random.Range(transform.position.x - Range, transform.position.x + Range), 1, Random.Range(transform.position.z - Range, transform.position.z + Range));
       // wayPoint.y = 1;
        // don't need to change direction every frame seeing as you walk in a straight line only
        transform.LookAt(wayPoint);
        Debug.Log(wayPoint + " and " + (transform.position - wayPoint).magnitude);

    }
}

