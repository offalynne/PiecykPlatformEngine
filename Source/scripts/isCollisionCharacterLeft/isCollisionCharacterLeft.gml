function isCollisionCharacterLeft(_distance, _target) {
	/*
	0: Number of pixels left of the collision rectangle to check for a collision
	with the character.
	1: Id to use instead of the characters. Optional. Used e.g. when we need to check for a particular character.
	*/
	//the solid must be hitting the character's right side, so...
	oGame.collisionTempId=id;
	w=_target;
	if ((_target==0) or (_target==noone)) {w=oCharacter;}
	with (w) {
	  calculateCollisionBounds();
	  //if there is a collision with tempId on the character's right side
	  return collision_line(round(rb+_distance-1),round(tb),round(rb+_distance-1),round(bb-1),oGame.collisionTempId,1,1)>0;
	}



}
