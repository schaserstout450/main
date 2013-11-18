using UnityEngine;
using System.Collections;


public class windSound : MonoBehaviour {
	
	public AudioClip windSoundEffect;
	
	// Use this for initialization
	void Start () {
		AudioSource.PlayClipAtPoint(windSoundEffect,transform.position);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
