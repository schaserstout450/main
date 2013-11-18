// Author: David Preischel, Rich Canada
// Edited: 11/13/13 Added go back to main menu when dead - David Preischel

using UnityEngine;
using System.Collections;



public class HealthBar : MonoBehaviour {

    //Build Texture objects for the health bar.
   public Texture healthBarBackground; //the image for the background of the entire healthbar (the wood look with gears)
   public Texture healthBackground; //this is what the actual health meter should look like when empty (red)
   public Texture healthForeground; //this is what the actual health meter should look like when full (green)

    //Positioning enum values
    public enum healthBarLocationValues { topLeft, topCenter, topRight, middleLeft, middleCenter, middleRight, bottomLeft, bottomCenter, bottomRight, custom }
    public healthBarLocationValues healthBarLocation = healthBarLocationValues.bottomLeft;
    private float healthBarWidth;
    private float healthBarHeight;
    private Vector2 healthBarCenter;
    public Vector2 healthBarCenterCustom;


    public float healthBarScale = 0.3f;
    public int healthBarSizePercent = 15;

    public int maxHealth = 100;//max health player can have
    public int curHealth = 100;//current health player has

    private float healthWidth = -35;
    private float healthHeight = -120;
    private int healthLocationX = 377;
    private int healthLocationY = 635;

	// Use this for initialization
	void Start () {
        setHealthBarLocation();	
	}

    //Positions the Health Bar based on the location chosen via the enum
    void setHealthBarLocation(){
        healthBarWidth = Screen.width * healthBarSizePercent / 100.0f;
        healthBarHeight = healthBarWidth;

        //sets mapCenter based on enum selection
        if (healthBarLocation == healthBarLocationValues.topLeft)
        {
            healthBarCenter = new Vector2(healthBarWidth / 2, healthBarHeight / 2);
        }
        else if (healthBarLocation == healthBarLocationValues.topCenter)
        {
            healthBarCenter = new Vector2(Screen.width / 2, healthBarHeight / 2);
        }
        else if (healthBarLocation == healthBarLocationValues.topRight)
        {
            healthBarCenter = new Vector2(Screen.width - healthBarWidth / 2, healthBarHeight / 2);
        }
        else if (healthBarLocation == healthBarLocationValues.middleLeft)
        {
            healthBarCenter = new Vector2(healthBarWidth / 2, Screen.height / 2);
        }
        else if (healthBarLocation == healthBarLocationValues.middleCenter)
        {
            healthBarCenter = new Vector2(Screen.width / 2, Screen.height / 2);
        }
        else if (healthBarLocation == healthBarLocationValues.middleRight)
        {
            healthBarCenter = new Vector2(Screen.width - healthBarWidth / 2, Screen.height / 2);
        }
        else if (healthBarLocation == healthBarLocationValues.bottomLeft)
        {
            healthBarCenter = new Vector2(healthBarWidth / 2, Screen.height - healthBarHeight / 2);
        }
        else if (healthBarLocation == healthBarLocationValues.bottomCenter)
        {
            healthBarCenter = new Vector2(Screen.width / 2, Screen.height - healthBarHeight / 2);
        }
        else if (healthBarLocation == healthBarLocationValues.bottomRight)
        {
            healthBarCenter = new Vector2(Screen.width - healthBarWidth / 2, Screen.height - healthBarHeight / 2);
        }
        else if (healthBarLocation == healthBarLocationValues.custom)
        {
            healthBarCenter = healthBarCenterCustom;
        }
    }
    //Drawing the Health bar to the HUD
    void OnGUI(){
        GUI.DrawTexture(new Rect(287, 500, 150, 150), healthBarBackground);//Cool looking background
        GUI.DrawTexture(new Rect(healthLocationX, healthLocationY, healthWidth, healthHeight), healthBackground);//Red Bar
        GUI.DrawTexture(new Rect(healthLocationX, healthLocationY, healthWidth, (healthHeight *curHealth) / maxHealth), healthForeground);//Green Bar
    }
	
	// Update is called once per frame
	void Update () {

        //Check for Collisions - Subtract health when a building is bumped
		if(curHealth <= 0){
			//Do shit, end game
            PlayerPrefs.SetInt("Level", 1);
            Application.LoadLevel("mainmenu");
		}
		print (curHealth);
		
	}
		
	void OnCollisionEnter(Collision col)
	{
		if(col.gameObject.tag == "building")
		{
			print ("colliding");
			if (curHealth > 1)
        	{
				curHealth -= 25;
			}
		}
	}
}
