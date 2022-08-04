using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rotate : MonoBehaviour {

	float speed= 5f;
	GameObject focusObj = null;
	int shootableMask;//shootable object layer
	float camRayLength = 100f;


	// Use this for initialization
	void Start () {
		
	}
	void Awake()
	{

		shootableMask = LayerMask.GetMask ("Shootable");//find shootable object layer

	}


	// Update is called once per frame
	void Update () {

		//Get the mouse position on the screen and send a raycast into the game world from that position.
		Ray camRay = Camera.main.ScreenPointToRay (Input.mousePosition);
		RaycastHit shootableHit;


		
		//If something was hit, the shootableHit.collider will not be null.
		if (Physics.Raycast (camRay, out shootableHit, camRayLength, shootableMask)) {
			Debug.Log( shootableHit.collider.name );
			focusObj = shootableHit.transform.gameObject;
		} 

		if (!focusObj && Input.touchCount == 1 && Input.GetTouch (0).phase == TouchPhase.Moved)
		{
			// Get movement of the finger since last frame
			Vector2 touchDeltaPosition = Input.GetTouch(0).deltaPosition;
			transform.RotateAround (transform.position,Vector3.up,-touchDeltaPosition.x*speed*Time.deltaTime);
			transform.RotateAround (transform.position,Vector3.forward,-touchDeltaPosition.y*speed*Time.deltaTime);
		}

		
	}
}
