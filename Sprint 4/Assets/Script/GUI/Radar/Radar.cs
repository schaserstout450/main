using UnityEngine;
using System.Collections;

public class Radar : MonoBehaviour {
	public Texture blip;
    public Texture radarBG;
    public Transform centerObject;
    public string enemyTag = "Enemy";
    public float radarScale = .3f;
    public float radarSizePercent = 15;
    public enum radarLocationValues { topLeft, topCenter, topRight, middleLeft, middleCenter, middleRight, bottomLeft, bottomCenter, bottomRight, custom };
    public radarLocationValues radarLocation = radarLocationValues.bottomLeft;

	private float radarWidth;
	private float radarHeight;
	private Vector2 radarCenter;
    public Vector2 radarCenterCustom;
	

	// Use this for initialization
	void Start () {
        setRadarLocation();
	}
	
	void OnGUI() {
	    // Draw player blip (centerObject)
 	    float bX=centerObject.transform.position.x * radarScale;
 	    float bY=centerObject.transform.position.z * radarScale;	
 	    GUI.DrawTexture(new Rect(radarCenter.x - radarWidth/2,radarCenter.y-radarHeight/2,radarWidth,radarHeight),radarBG);
	
	    // Draw blips for Enemies
	    DrawBlipsForEnemies();
		
	}
	
	void drawBlip(GameObject go, Texture aTexture) {
		Vector3 centerPos=centerObject.position;
		Vector3 extPos=go.transform.position;
		
		// first we need to get the distance of the enemy from the player
		float dist=Vector3.Distance(centerPos,extPos);
		 
		float dx=centerPos.x-extPos.x; // how far to the side of the player is the enemy?
		float dz=centerPos.z-extPos.z; // how far in front or behind the player is the enemy?
		
		// what's the angle to turn to face the enemy - compensating for the player's turning?
		float deltay=Mathf.Atan2(dx,dz)*Mathf.Rad2Deg - 270 - centerObject.eulerAngles.y;
		
		// just basic trigonometry to find the point x,y (enemy's location) given the angle deltay
		float bX=dist*Mathf.Cos(deltay * Mathf.Deg2Rad);
		float bY=dist*Mathf.Sin(deltay * Mathf.Deg2Rad);
		
		bX=bX*radarScale; // scales down the x-coordinate so that the plot stays within our radar
		bY=bY*radarScale; // scales down the y-coordinate so that the plot stays within our radar
		
		if(dist<=radarWidth*.5/radarScale){ 
			// this is the diameter of our largest radar circle
		   GUI.DrawTexture(new Rect(radarCenter.x+bX,radarCenter.y+bY,4,4),aTexture);
		}
	}
	
	void DrawBlipsForEnemies() {
        // Find all game objects tagged Enemy
        GameObject[] gos;
        gos = GameObject.FindGameObjectsWithTag(enemyTag); 
 
        //float distance = Mathf.Infinity; 
        Vector3 position = transform.position; 
 
            foreach(GameObject go in gos)
            {
                Texture blipChoice = blip;
                drawBlip(go,blipChoice);
            }
    }

    void setRadarLocation() {
        radarWidth = Screen.width*radarSizePercent/100;
	    radarHeight = radarWidth;

	    //sets radarCenter based on enum selection
	    if(radarLocation == radarLocationValues.topLeft){
		    radarCenter = new Vector2(radarWidth/2, radarHeight/2);
	    } else if(radarLocation == radarLocationValues.topCenter){
		    radarCenter = new Vector2(Screen.width/2, radarHeight/2);
	    } else if(radarLocation == radarLocationValues.topRight){
		    radarCenter = new Vector2(Screen.width-radarWidth/2, radarHeight/2);
	    } else if(radarLocation == radarLocationValues.middleLeft){
		    radarCenter = new Vector2(radarWidth/2, Screen.height/2);
	    } else if(radarLocation == radarLocationValues.middleCenter){
		    radarCenter = new Vector2(Screen.width/2, Screen.height/2);
	    } else if(radarLocation == radarLocationValues.middleRight){
		    radarCenter = new Vector2(Screen.width-radarWidth/2, Screen.height/2);
	    } else if(radarLocation == radarLocationValues.bottomLeft){
		    radarCenter = new Vector2(radarWidth/2, Screen.height - radarHeight/2);
	    } else if(radarLocation == radarLocationValues.bottomCenter){
		    radarCenter = new Vector2(Screen.width/2, Screen.height - radarHeight/2);
	    } else if(radarLocation == radarLocationValues.bottomRight){
		    radarCenter = new Vector2(Screen.width-radarWidth/2, Screen.height - radarHeight/2);
	    } else if(radarLocation == radarLocationValues.custom){
		    radarCenter = radarCenterCustom;
	    }
    }
}
