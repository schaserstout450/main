// Author: David Preischel


using UnityEngine;
using System.Collections;

public class collideWithBuildingSound : MonoBehaviour {

    public AudioClip collideWithBuildingSoundEffect;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnCollisionEnter(Collision col)
    {
        if (col.gameObject.tag == "building")
        {
            AudioSource.PlayClipAtPoint(collideWithBuildingSoundEffect, transform.position);
        }
    }
}
