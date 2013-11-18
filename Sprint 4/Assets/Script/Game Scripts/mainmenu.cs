using UnityEngine;
using System.Collections;

public class mainmenu : MonoBehaviour {
	
	private bool hidden = false;
	private bool showingInstructions = false;
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		Screen.showCursor = true;
	}

    void OnGUI()
    {
		if(showingInstructions && UIScreens.showInstructions("<- Back to Main Menu")) {
			hidden = false;
			showingInstructions = false;
		}
		
		//Hide the main menu
		if(hidden)
			return;
		
        // Make a group on the center of the screen
	    GUI.BeginGroup (new Rect (Screen.width / 2 - 100, Screen.height / 2 - 100, 200, 200));
	    // All rectangles are now adjusted to the group. (0,0) is the topleft corner of the group.

	    // We'll make a box so you can see where the group is on-screen.
	    GUI.Box (new Rect (0,0,200,200), "Main Menu");
	    if(GUI.Button (new Rect (10,40,180,30), "Play Game"))
	    {
		    PlayerPrefs.SetInt("Level", 1);
		    Application.LoadLevel("main");	
	    }
	    if (GUI.Button(new Rect(10, 80, 180, 30), "Instructions and Controls")) {
	        hidden = true;
			showingInstructions = true;
	    }
		if(GUI.Button(new Rect(10, 120, 180, 30), "Quit") ){
			Application.Quit();	
		}
	    // End the group we started above. This is very important to remember!
	    GUI.EndGroup ();
    }
}

