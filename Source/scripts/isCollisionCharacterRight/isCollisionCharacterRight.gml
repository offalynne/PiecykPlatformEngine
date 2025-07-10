function isCollisionCharacterRight(_distance, _target) {
	/*
	0: Number of pixels right of the collision rectangle to check for a collision
	with the character.
	1: Id to use instead of the characters. Optional. Used e.g. when we need to check for a particular character.
	*/
	//the solid must be hitting the character's left side, so...
	oGame.collisionTempId=id;
	w=_target;
	if ((_target==0) or (_target==noone)) {w=oCharacter;}
	with (w) {
	  calculateCollisionBounds();
	  //if there is a collision with tempId on the character's left side
	  if (collision_line(round(lb-_distance),round(tb),round(lb-_distance),round(bb-1),oGame.collisionTempId,1,1)>0) {
	    return 1;
	  }
	}
	return 0;



}
