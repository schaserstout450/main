using UnityEngine;
using System.Collections;

public class ai : MonoBehaviour {
    public GameObject[] waypoints;
    Graph graph = new Graph();
    int currentWP = 0;
    private GameObject currentNode;
    private int speed = 8;
    private int rotationSpeed = 5;
    private double accuracy = 1.0;



	// Use this for initialization
	void Start () {
	    if(waypoints.Length > 0)
	    {
		    for(var i = 0; i < waypoints.Length; i++)
		    {
			    graph.AddNode(waypoints[i], true, true);
		    }
		    graph.AddEdge(waypoints[0], waypoints[1]);
		    graph.AddEdge(waypoints[1], waypoints[2]);
		    graph.AddEdge(waypoints[2], waypoints[3]);
		    graph.AddEdge(waypoints[3], waypoints[4]);
		    graph.AddEdge(waypoints[4], waypoints[5]);
		    graph.AddEdge(waypoints[5], waypoints[6]);
		    graph.AddEdge(waypoints[6], waypoints[7]);
		    graph.AddEdge(waypoints[7], waypoints[8]);
		    graph.AddEdge(waypoints[8], waypoints[0]);
		
		    graph.AddEdge(waypoints[1], waypoints[0]);
		    graph.AddEdge(waypoints[2], waypoints[1]);
		    graph.AddEdge(waypoints[3], waypoints[2]);
		    graph.AddEdge(waypoints[4], waypoints[3]);
		    graph.AddEdge(waypoints[5], waypoints[4]);
		    graph.AddEdge(waypoints[6], waypoints[5]);
		    graph.AddEdge(waypoints[7], waypoints[6]);
		    graph.AddEdge(waypoints[8], waypoints[7]);
		    graph.AddEdge(waypoints[0], waypoints[8]);
		
		
		    graph.AddEdge(waypoints[0], waypoints[9]);
		    graph.AddEdge(waypoints[0], waypoints[10]);
		    graph.AddEdge(waypoints[9], waypoints[10]);
		    graph.AddEdge(waypoints[5], waypoints[9]);
		    graph.AddEdge(waypoints[9], waypoints[0]);
		    graph.AddEdge(waypoints[10], waypoints[0]);
		    graph.AddEdge(waypoints[10], waypoints[9]);
		    graph.AddEdge(waypoints[9], waypoints[5]);
	    }
	    currentNode = waypoints[0];
        graph.AStar(waypoints[0], waypoints[8]);
	}
	
	// Update is called once per frame
	void Update () {
	    graph.debugDraw();
	
	if(graph.getPathLength()==0 || currentWP == graph.getPathLength())
	{
		this.animation.Play("idle");
		return;
	}
	
	currentNode = graph.getPathPoint(currentWP);
	
	if(Vector3.Distance(graph.getPathPoint (currentWP).transform.position, transform.position) < accuracy)
	{
		currentWP++;
	}
	
	if(currentWP < graph.getPathLength())
	{
		var direction = graph.getPathPoint(currentWP).transform.position - transform.position;
		transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(direction), rotationSpeed * Time.deltaTime);
		transform.Translate(0,0, Time.deltaTime * speed);
	}
	}
}
