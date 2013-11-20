using UnityEngine;
using System.Collections;

public class instructions : MonoBehaviour {

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
	GUI.Box (new Rect (0,0,400,400), "Controls" + "\n\n Pickup Speed: Alternate Mouse1 and Mouse2 keys quickly" + "\n Turn Right: Right Arrow or D Key" + "\n Turn Left: Left Arrow or A Key" + "\n Turn Down: Up Arrow or W Key" + "\n Turn Up: Down Arrow or S Key" + "\n Left Shift: Mark Enemy" + "\n Spacebar: Dash"
        + "\n\n\n Instructions" + "\n\n Capture all of the spirits by first \n marking them then by dashing through them. \n Make sure you don't crash into the buildings \n otherwise you will lose health and lose the game. \n Keep your glider in the air by alternating mouse1 and mouse2 keys, \n otherwise you will fall and crash."
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
