function isCollisionLadder() {
	/*
	Returns whether the object invoking this script is colliding with a ladder.
	return
	0:no collision
	1:collision
	*/
	calculateCollisionBounds();
	return collision_rectangle(lb,tb,rb-1,bb-1,oLadder,1,1)>0;



}
