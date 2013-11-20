var speed = 50.0;
var roll = 360;
var i;
function Update() 
{
	if (Input.GetKeyDown(KeyCode.Q))
	{
		for(i=0; i < 1; i++)
		{
	        transform.Translate( 500, 0, 0);
	        //transform.Rotate(-Vector3.forward * speed * Time.deltaTime);
	       // transform.Rotate(-Vector3.forward * Time.deltaTime *100);
	    }  
	    //i = 0;  
    }    
}