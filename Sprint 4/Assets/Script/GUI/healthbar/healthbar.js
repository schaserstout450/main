var healthBarBackground: Texture; //the image for the background of the entire healthbar (the wood look with gears)
var healthBackground: Texture; //this is what the actual health meter should look like when empty (red)
var healthForeground: Texture; //this is what the actual health meter should look like when full (green)
enum healthBarLocationValues {topLeft, topCenter, topRight, middleLeft, middleCenter, middleRight, bottomLeft, bottomCenter, bottomRight, custom}
var healthBarLocation : healthBarLocationValues = healthBarLocationValues.bottomLeft;

var healthBarScale = 0.3;
var healthBarSizePercent = 15;

var maxHealth = 100;//max health player can have
var curHealth = 100;//current health player has

private var healthBarWidth : float;
private var healthBarHeight : float;
private var healthBarCenter : Vector2;
var healthBarCenterCustom : Vector2;


private var healthWidth : float = -35;
private var healthHeight: float = -120;
private var healthLocationX = 377;
private var healthLocationY = 635;


function Start () {
	setHealthBarLocation();	
}

function OnGUI () {
 	//GUI.DrawTexture(Rect(healthBarCenter.x - healthBarWidth/2,healthBarCenter.y-healthBarHeight/2,healthBarWidth,healthBarHeight),healthBarBackground);
 	GUI.DrawTexture(Rect(287, 500, 150, 150), healthBarBackground);
 	GUI.DrawTexture(Rect(healthLocationX, healthLocationY, healthWidth, healthHeight), healthBackground); 
 	GUI.DrawTexture(Rect(healthLocationX, healthLocationY, healthWidth, healthHeight/(maxHealth/curHealth)), healthForeground); 
}

function setHealthBarLocation () {
	healthBarWidth = Screen.width*healthBarSizePercent/100.0;
	healthBarHeight = healthBarWidth;

	//sets mapCenter based on enum selection
	if(healthBarLocation == healthBarLocationValues.topLeft){
		healthBarCenter = Vector2(healthBarWidth/2, healthBarHeight/2);
	} else if(healthBarLocation == healthBarLocationValues.topCenter){
		healthBarCenter = Vector2(Screen.width/2, healthBarHeight/2);
	} else if(healthBarLocation == healthBarLocationValues.topRight){
		healthBarCenter = Vector2(Screen.width-healthBarWidth/2, healthBarHeight/2);
	} else if(healthBarLocation == healthBarLocationValues.middleLeft){
		healthBarCenter = Vector2(healthBarWidth/2, Screen.height/2);
	} else if(healthBarLocation == healthBarLocationValues.middleCenter){
		healthBarCenter = Vector2(Screen.width/2, Screen.height/2);
	} else if(healthBarLocation == healthBarLocationValues.middleRight){
		healthBarCenter = Vector2(Screen.width-healthBarWidth/2, Screen.height/2);
	} else if(healthBarLocation == healthBarLocationValues.bottomLeft){
		healthBarCenter = Vector2(healthBarWidth/2, Screen.height - healthBarHeight/2);
	} else if(healthBarLocation == healthBarLocationValues.bottomCenter){
		healthBarCenter = Vector2(Screen.width/2, Screen.height - healthBarHeight/2);
	} else if(healthBarLocation == healthBarLocationValues.bottomRight){
		healthBarCenter = Vector2(Screen.width-healthBarWidth/2, Screen.height - healthBarHeight/2);
	} else if(healthBarLocation == healthBarLocationValues.custom){
		healthBarCenter = healthBarCenterCustom;
	}
} 

function Update()
{
}

function OnTriggerEnter(obj: Collider)
{
	if(obj.getObjectByTag == "building")
	{
		print("boobies");
		if(curHealth > 1)
		{
			curHealth--;
		}
	}
}