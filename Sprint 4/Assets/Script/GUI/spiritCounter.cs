/* Author: David Preischel */

using UnityEngine;
using System.Collections;

public class spiritCounter : MonoBehaviour {
    public GUIText spiritCounterGUI; //The GUI Text
    private int caughtSpirits = 0; //how many of the dumb spirits you ran into
	private bool shouldCount = false; //boolean that makes sure that added 1 to caughtSpirits only adds 1 and not 2 due to frame issues

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        spiritCounterGUI.text = "Spirits: " + caughtSpirits.ToString();
		if(shouldCount == true)
		{
			caughtSpirits++;
			shouldCount = false;
		}
	}

    void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.tag == "enemyMini")
        {
			Destroy(col.gameObject);
			shouldCount = true;
        }
    }
}
