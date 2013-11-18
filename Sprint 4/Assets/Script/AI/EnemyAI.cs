/*
	Created By: David Preischel
	Editted by: Ryan Lehmann, David Preischel
 */
using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class EnemyAI : MonoBehaviour {
    public GameObject[] waypoints;
    public GameObject myCube;
    public Vector3 spawnLocation;
	public bool targeted;
	public List<Transform> targets;
	public int currentIdleWP;
	public int nextIdleWP;
    
	Graph graph = new Graph();
    public int currentWP = 0;
    private GameObject currentNode;
    private int idleSpeed = 20;
	private int runningSpeed = 100;
    private int rotationSpeed = 5;
    private double accuracy = 1.0;
    private GameObject enemySpirit; 
	
	

	// Use this for initialization
	void Start () 
	{
        //this while be used later to get the position of each enemy
        enemySpirit = GameObject.FindGameObjectWithTag("enemy");

		//add idle objects to an array and sets the currentIdleWP
		addIdleObjects();
		currentIdleWP = Random.Range(0,5);
		targeted = false;
        
        // Randomly generate 3 waypoints
        // Add the 3 waypoints to the waypoints array.
        for (int i = 0; i < 3; i++)
        {
            spawnLocation = new Vector3(enemySpirit.transform.position.x + Random.Range(-1000, 1000), enemySpirit.transform.position.y + Random.Range(0, 100), enemySpirit.transform.position.z + Random.Range(-1000, 1000));
            waypoints[i] = (GameObject)Instantiate(myCube, spawnLocation, Quaternion.identity);
        }

        // Tells A* to add paths between the waypoints
	    if(waypoints.Length > 0)
	    {
		    for(var i = 0; i < waypoints.Length; i++)
		    {
			    graph.AddNode(waypoints[i], true, true);
		    }
            graph.AddEdge(waypoints[0], waypoints[1]);
            graph.AddEdge(waypoints[1], waypoints[2]);
			graph.AddEdge(waypoints[2], waypoints[0]);
	    }
	    currentNode = waypoints[0]; // Set currentNode to waypoint[0]
        graph.AStar(currentNode, waypoints[2]); // Start the A* pathing
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(Input.GetKey(KeyCode.L))
		{
			targeted = true;
		}
		if(targeted == true)
		{
			print("got in");
		    graph.debugDraw(); // A debug option to show the current AI path
		    currentNode = graph.getPathPoint(currentWP); // Tells currentNode to graph the path to the current waypoint
		
		    if(Vector3.Distance(graph.getPathPoint (currentWP).transform.position, transform.position) < accuracy)
		    {
				print("in the loop");
			    currentWP++;
		    }
		
		    if(currentWP < graph.getPathLength())
		    {
				print("2nd loop");
			    var direction = graph.getPathPoint(currentWP).transform.position - transform.position;
			    transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(direction), rotationSpeed * Time.deltaTime);
			    transform.Translate(0,0, Time.deltaTime * runningSpeed);
		    }
		}
		else
		{
			transform.LookAt(targets[currentIdleWP].transform);	
			transform.Translate(Vector3.forward * idleSpeed * Time.deltaTime);
		}
	}
	
	//adds the objects tag idle to the array
	public void addIdleObjects()
	{
		GameObject[] go = GameObject.FindGameObjectsWithTag("idle");	
		
		foreach(GameObject idle in go)
			targets.Add(idle.transform);
	}
	
	//sets if the enemy is targetted or not
	public void setTargeted(bool change)
	{
		targeted = 	change;
	}
	
	//changes the next dierection for the enemy to take while not targetted
	public void changeIdleSphere()
	{
		nextIdleWP = Random.Range(0,5);
		if(nextIdleWP == currentIdleWP)
		{
			if(currentWP>0)
			{	
				nextIdleWP = currentIdleWP-1;
			}
			else
			{
				nextIdleWP += 1;	
			}
		}
		currentIdleWP = nextIdleWP;
	}
	
	//checks to see if the enemy is at the currentIdleWP
	void OnTriggerEnter(Collider hit)
	{
		
		if(hit.gameObject.tag == "idle")
		{
			print ("Current: " + currentIdleWP + " and Next: "+nextIdleWP );
			changeIdleSphere();
		}
	}
}
