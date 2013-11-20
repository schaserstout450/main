using UnityEngine;
using System.Collections;

public class pauseMenu : MonoBehaviour 
{
	public bool paused = false;
	public bool hidden = false;
	public bool showingInstructions;

	// Use this for initialization
	void Start ()
	{
		
	}
	
	// Update is called once per frame
	void Update ()
	{
		if(paused)
		{
			Time.timeScale=0;	
			Screen.showCursor = true;
		}
		else
		{
			Time.timeScale= 1;	
			Screen.showCursor = false;
		}
		if(Input.GetKeyDown(KeyCode.B))
		{
			paused = !paused;
		}	
	}
	
	void OnGUI()
	{
		if(paused)
		{
			Paused();	
		}	
	}		
	
	void Paused()
	{
		if(showingInstructions && UIScreens.showInstructions("Back")) {
			showingInstructions = false;
			hidden = false;
		}
		
		if(hidden)
			return;
		
		GUILayout.BeginArea(new Rect((Screen.width * 0.5f) - 50 , (Screen.height * 0.5f)- 100, 100,200));
		if(GUILayout.Button ("Resume"))
		{
			paused = !paused;	
		}
		if(GUILayout.Button ("Instructions")){
			showingInstructions = true;
			hidden = true;
		}
		if(GUILayout.Button("Exit to Menu")){
			Application.LoadLevel("mainmenu");	
		}
		GUILayout.EndArea();
	}	
}
