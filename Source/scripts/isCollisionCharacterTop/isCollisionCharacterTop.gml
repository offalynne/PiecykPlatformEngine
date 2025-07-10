function isCollisionCharacterTop(_distance, _target) {
	/*
	0: Number of pixels above the collision rectangle to check for a collision
	with the character.
	1: Id to use instead of the characters. Optional. Used e.g. when we need to check for a particular character.
	*/
	//the solid must be hitting the character's bottom side, so...
	oGame.collisionTempId=id;
	w=_target;
	if ((_target==0) or (_target==noone)) {w=oCharacter;}
	with (w) {
	  calculateCollisionBounds();
	  //if there is a collision with tempId on the character's bottom side
	  if (collision_line(round(lb),round(bb+_distance-1),round(rb-1),round(bb+_distance-1),oGame.collisionTempId,1,1)>0) {
	    return 1;
	  }
	}
	return 0;




}
