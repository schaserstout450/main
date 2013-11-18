var speed:float = 1;
var back : GameObject;
var front : GameObject;
var glideAngle:float;

function Update()
{
	var h = Input.GetAxis("Vertical"); // use the same axis that move back/forth
	var v = Input.GetAxis("Horizontal"); // use the same axis that turns left/right
}

function LateUpdate()
{
	//enemy.GetComponent(Constant Speed).speed;
	var h = Input.GetAxis("Vertical"); // use the same axis that move back/forth
	var v = Input.GetAxis("Horizontal"); // use the same axis that turns left/right
    transform.localEulerAngles.z =  -v*60; // forth/back banking first!
   	transform.localEulerAngles.x =   h*45;  // left/right
   	
    var angle = h*45;
    
}