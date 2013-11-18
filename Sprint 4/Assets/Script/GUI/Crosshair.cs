using UnityEngine;
using System.Collections;

public class Crosshair : MonoBehaviour {
	
	public Texture2D crosshairImage;
	float xMin= 0;
	float yMin = 0;
	
	void Update()
	{
		xMin = (Screen.width / 2) - (crosshairImage.width / 2);
    	yMin = (Screen.height / 2) - (crosshairImage.height / 2);	
	}	
	
	void OnGUI()
	{
    	
    	GUI.DrawTexture(new Rect(xMin+30, yMin+10, crosshairImage.width/2, crosshairImage.height/2), crosshairImage);
	}
}
