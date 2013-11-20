using UnityEngine;
using System.Collections;

public class instructions2 : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnGUI()
    {
        // Make a group on the center of the screen
	GUI.BeginGroup (new Rect (Screen.width / 2 - 200, Screen.height / 2 - 200, 400, 400));
	// All rectangles are now adjusted to the group. (0,0) is the topleft corner of the group.

	// We'll make a box so you can see where the group is on-screen.
	string instructions = "\n\nCapture all of the spirits by first marking them then by flying through them."; 
	
	GUI.Box (new Rect (0,0,400,400), "Controls" + "\n\n Pickup Speed: Alternate Mouse1 and Mouse2 keys quickly" + "\n Turn Right: Right Arrow or D Key" + "\n Turn Left: Left Arrow or A Key" + "\n Turn Down: Up Arrow or W Key" + "\n Turn Up: Down Arrow or S Key"
        + "\n\n\n Instructions" + instructions
        );

    if (GUI.Button(new Rect(10, 360, 180, 30), "<- Back to Main Menu"))
    {
        PlayerPrefs.SetInt("Level", 1);
        Application.LoadLevel("mainmenu");
    }

	// End the group we started above. This is very important to remember!
	GUI.EndGroup ();
    }
}
