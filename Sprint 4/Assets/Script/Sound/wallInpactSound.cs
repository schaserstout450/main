using UnityEngine;
using System.Collections;

public class wallInpactSound : MonoBehaviour {
    public AudioClip wallImpactSoundEffect;
	// Use this for initialization
	void Start () {
        AudioSource.PlayClipAtPoint(wallImpactSoundEffect, transform.position);
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnCollisionEnter(Collision col)
    {
        if (col.gameObject.tag == "building")
        {
            AudioSource.PlayClipAtPoint(wallImpactSoundEffect, transform.position);
        }
    }
}
