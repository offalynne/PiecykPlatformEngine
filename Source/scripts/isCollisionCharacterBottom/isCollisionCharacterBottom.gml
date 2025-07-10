function isCollisionCharacterBottom(_distance, _target) {
	/*
	0: Number of pixels to the bottom of the collision rectangle to check for a collision
	with the character.
	1: Id to use instead of the characters. Optional. Used e.g. when we need to check for a particular character.
	*/
	//the solid must be hitting the character's top side, so...
	oGame.collisionTempId=id;
	w=_target;
	if ((_target==0) or (_target==noone)) {w=oCharacter;}
	with (w) {
	  calculateCollisionBounds();
	  //if there is a collision with tempId on the character's top side
	  if (collision_line(round(lb),round(tb-_distance),round(rb-1),round(tb-_distance),oGame.collisionTempId,1,1)>0) {
	    return 1;
	  }
	}
	return 0;



}
