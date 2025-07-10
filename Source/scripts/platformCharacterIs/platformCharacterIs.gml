function platformCharacterIs(_state) {
	/*
	Returns whether a GENERAL trait about a character is true.
	Only the platform character should run this script. 

	_state can be one of the following:
	ON_GROUND
	IN_AIR
	ON_LADDER

	Example of usage:
	Event: oCharacter collides with oGoomba
	Action: if platformCharacterIs(ON_GROUND) instance_destroy()
	*/

	if ((_state=ON_GROUND) and ((state=RUNNING) or (state=STANDING) or (state=DUCKING) or (state=LOOKING_UP))) {
	  return true;
	}
	if ((_state=IN_AIR) and ((state=JUMPING) or (state=FALLING))) {
	  return true;
	}
	if ((_state=ON_LADDER) and (state=CLIMBING)) {
	  return true;
	}
	return false;



}
