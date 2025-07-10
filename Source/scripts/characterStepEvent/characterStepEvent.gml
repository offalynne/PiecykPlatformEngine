function characterStepEvent() {
	/*
	This script should be placed in the step event for the platform character.
	It updates the keys used by the character, moves all of the solids, moves the
	character, sets the sprite index, and sets the animation speed for the sprite.
	*/
	if (player=1) {
	  // updates the keys
	  // key left
	  kLeftReleased=0;
	  if (kLeft) {
	    kLeft=keyboard_check(vk_left);
	    kLeftPushedSteps+=1;
	    kLeftPressed=0;
	    if (kLeft=0) {kLeftReleased=1;}
	  }
	  else {
	    kLeft=keyboard_check(vk_left);
	    if (kLeft) {kLeftPressed=1;}
	    kLeftPushedSteps=0;
	  }
	  // key right
	  kRightReleased=0;
	  if (kRight) {
	    kRight=keyboard_check(vk_right);
	    kRightPushedSteps+=1;
	    kRightPressed=0;
	    if (kRight=0) {kRightReleased=1;}
	  }
	  else {
	    kRight=keyboard_check(vk_right);
	    if (kRight) {kRightPressed=1;}
	    kRightPushedSteps=0;
	  }
	  // key up
	  kUp=keyboard_check(vk_up);
	  // key down
	  kDown=keyboard_check(vk_down);
	  // key "run"
	  if (canRun) {kRun=keyboard_check(vk_shift);} else {kRun=0;}
	  // key "jump"
	  if (kJump) {
	    kJump=keyboard_check(vk_control);
	    kJumpPressed=0;
	  }
	  else {
	    kJump=keyboard_check(vk_control);
	    if (kJump) {kJumpPressed=1;}
	  }
	} else { // player 2 code
	  // key left
	  kLeftReleased=0;
	  if (kLeft) {
	    kLeft=keyboard_check(ord("A"));
	    kLeftPushedSteps+=1;
	    kLeftPressed=0;
	    if (kLeft=0) {kLeftReleased=1;}
	  } else {
	    kLeft=keyboard_check(ord("A"));
	    if (kLeft) {kLeftPressed=1;}
	    kLeftPushedSteps=0;
	  }
	  // key right
	  kRightReleased=0;
	  if (kRight) {
	    kRight=keyboard_check(ord("D"));
	    kRightPushedSteps+=1;
	    kRightPressed=0;
	    if (kRight=0) {kRightReleased=1;}
	  } else {
	    kRight=keyboard_check(ord("D"));
	    if (kRight) {kRightPressed=1;}
	    kRightPushedSteps=0;
	  }
	  // key up
	  kUp=keyboard_check(ord("W"));
	  // key down
	  kDown=keyboard_check(ord("S"));
	  // key "run"
	  if (canRun) {kRun=keyboard_check(ord("F"));} else {kRun=0;}
	  // key "jump"
	  if (kJump) {
	    kJump=keyboard_check(ord("J"));
	    kJumpPressed=0;
	  } else {
	    kJump=keyboard_check(ord("J"));
	    if (kJump) {kJumpPressed=1;}
	  }
	}
	// deals with the ladderTimer
	if (state=CLIMBING) {
	   ladderTimer=10;
	} else {
	   if (ladderTimer>0) {ladderTimer-=1;}
	}
	// allows the character to run left and right
	if ((state!=DUCKING) and (state!=LOOKING_UP) and (state!=CLIMBING)) {
	  if ((kLeftReleased) and (approximatelyZero(xVel))) {xAcc-=0.5;}
	  if ((kRightReleased) and (approximatelyZero(xVel))) {xAcc+=0.5;}
	  if (kLeft) {
	    if (((kLeftPushedSteps>2) or (isCollisionMoveableSolidRight(1))) and ((facing=LEFT) or (approximatelyZero(xVel)))) {xAcc-=runAcc;}
	    facing=LEFT;
	  }
	  if (kRight) {
	    if (((kRightPushedSteps>2) or (isCollisionMoveableSolidLeft(1))) and ((facing=RIGHT) or (approximatelyZero(xVel)))) {xAcc+=runAcc;}
	    facing=RIGHT;
	  }
	}
	if ((state=CLIMBING) and (isCollisionLadder()=0)) {state=FALLING}
	if (state=CLIMBING) {
	  if (kLeft) {
	    xAcc-=climbAcc;
	    facing=LEFT;
	  }
	  if (kRight) {
	    xAcc+=climbAcc;
	    facing=RIGHT;
	  }
	  if (kUp) {yAcc-=climbAcc;}
	  if (kDown) {yAcc+=climbAcc;}
	}
	if (platformCharacterIs(IN_AIR)) {
	  yAcc+=gravityIntensity;
	}
	if (((isCollisionBottom(1)) or (isCollisionPlatformBottom(1)) and (isCollisionPlatform()=0)) and (platformCharacterIs(IN_AIR)) and (yVel>=0)) {
	  yVel=0;
	  yAcc=0;
	  // player has just landed
	  state=RUNNING;
	  jumps=0;
	}
	// if the character has just walked off of the edge of a solid
	if ((isCollisionBottom(1)=0) and ((isCollisionPlatformBottom(1)=0) or (isCollisionPlatform())) and (platformCharacterIs(ON_GROUND))) {
	  state=FALLING;
	  yAcc+=grav;
	}
	if ((isCollisionTop(1)) and (state=JUMPING)) {
	  yVel=abs(yVel*0.3);
	}
	if (((isCollisionLeft(1)) and (facing=LEFT)) or ((isCollisionRight(1)) and (facing=RIGHT))) {
	  xVel=0;
	}
	// player may jump
	if ((platformCharacterIs(ON_GROUND)) and (kJumpPressed)) {
	  // give an initial HUGE jump if control is pressed and flySpeed is big and canFlyJump and the character is running
	  if ((flySpeed>=95) and (jumps=0) and (canFlyJump)) {
	    jumps=1;
	    flyAccTimer=5;
	    flyDir=facing;   // either LEFT or RIGHT
	    yAcc+=initialJumpAcc*0.7;
	    if (canFly) {
	      flyInitialHeight=y;
	      flyJumpsTimer=10;
	      flyJumpWasPressed=-1;
	    }
	  } else {
	    yAcc+=initialJumpAcc;
	    xAcc+=xVel/2;
	  }
	  // the "state" gets changed to JUMPING later on in the code
	  state=FALLING;
	  // "variable jumping" states
	  jumpButtonReleased=0;
	  jumpTime=0;
	}
	if (jumpTime<jumpTimeTotal) {jumpTime+=1;}
	// let the character continue to jump
	if (kJump=0) {jumpButtonReleased=1;}
	if (jumpButtonReleased) {jumpTime=jumpTimeTotal;}
	gravityIntensity=(jumpTime/jumpTimeTotal)*grav;
	// look up
	if ((kUp) and (xVel=0) and (xAcc=0) and (platformCharacterIs(ON_GROUND)) and (isCollisionLadder()=0)) {state=LOOKING_UP;}
	if ((kUp=0) and (state=LOOKING_UP)) {state=STANDING;}
	// press key down
	if ((kDown) and (platformCharacterIs(ON_GROUND)) and (isCollisionLadder()=0)) {
	  if (isCollisionPlatformBottom(1)) {
	    if (isCollisionBottom(1)=0) {
	      y+=1;
	      state=FALLING;
	      yAcc+=grav;
	    } else {
	      state=RUNNING;    // the character can't move down because there is a solid in the way
	    }
	  } else {
	    state=DUCKING;
	  }
	}
	// release key down
	if ((kDown=0) and (state=DUCKING)) {
	  state=STANDING;
	  xVel=0;
	  xAcc=0;
	}
	// stop running
	if ((xVel=0) and (xAcc=0) and (state=RUNNING)) {state=STANDING;}
	// running
	if ((xAcc!=0) and (state=STANDING)) {state=RUNNING;}
	// jumping
	if ((yVel<0) and (platformCharacterIs(IN_AIR))) {state=JUMPING;}
	// falling
	if ((yVel>0) and (platformCharacterIs(IN_AIR))) {state=FALLING;}
	// climbing
	if (((kUp) or (kDown)) and (isCollisionLadder()) and (ladderTimer=0)) {
	  // nullifies the velocity
	  xVel=0;
	  yVel=0;
	  // nullifies the acceleration
	  xAcc=0;
	  yAcc=0;
	  state=CLIMBING;
	}
	// jump off a ladder
	if ((isCollisionLadder()) and (state=CLIMBING) and (kJumpPressed)) {
	  if (facing=LEFT) {xVel=-departLadderXVel;} else {xVel=departLadderXVel;}
	  yAcc+=departLadderYVel;
	  state=JUMPING;
	  jumpButtonReleased=0;
	  jumpTime=0;
	}
	// fly speed and timer
	if ((kRun) and ((kLeft) or (kRight))) {
	  flySpeed+=2;
	  if ((state!=DUCKING) and (state!=LOOKING_UP) and (state!=CLIMBING) and (state!=FALLING)) {
	    if (kLeft) {
	      if (flySpeed<70) {xAcc-=runAcc*flySpeed/70;} else {xAcc-=runAcc;}    //you can change the value here
	      facing=LEFT;
	    }
	    if (kRight) {
	      if (flySpeed<70) {xAcc+=runAcc*flySpeed/70;} else {xAcc+=runAcc;}    //you can change the value here
	      facing=RIGHT;
	    }
	  }
	} else {
	  flySpeed-=3;
	}
	if (kJump) {flySpeed-=1;}
	if (((kLeft) and (xVel>0)) or ((kRight) and (xVel<0))) {
	  flySpeed-=10;
	  flySpeedTimer=0;
	}
	// if the character hits a wall while flying
	if (((kLeft) and (isCollisionLeft(1))) or ((kRight) and (isCollisionRight(1)))) {
	  flySpeed-=20;
	  flySpeedTimer=0;
	}
	//set flySpeed to 100 if the flySpeedTimer is still ticking
	if (flySpeedTimer>0) {
	  flySpeedTimer-=1;
	  flySpeed=100;
	}
	if (flyJumpsTimer>0) {
	  if (flyJumpWasPressed=-1) {flyJumpWasPressed=0;} 
	  else {
	   if (kJumpPressed) {flyJumpWasPressed=1;}
	  }
	  flySpeed=100;
	  flyJumpsTimer-=1;
	  if (jumps>1) {gravityIntensity=0.5;}
	} else {
	   if ((canFly) and (isCollisionBottom(1)=0) and (isCollisionPlatformBottom(1)=0) and (isCollisionPlatform()=0) and (jumps>0)) {
	     flySpeed=100;
	     if (jumps>1) {gravityIntensity=0.5;}
	     if (((kJumpPressed) or (flyJumpWasPressed)) and (flySpeed>80) and (jumps<flyMaxJumps)) {
	       jumps+=1;
	       flyInitialHeight-=50;
	       flyJumpsTimer=15;
	       flyJumpWasPressed=-1;
	       flyAcc2Timer=2;
	     }
	   }
	}
	//stops everything if the character jumps on a ladder (and stops moving) or ducks
	if ((state=CLIMBING) or (state=DUCKING)) {
	  flySpeed=0;
	  flySpeedTimer=0;
	  flyAccTimer=0;
	  flyAcc2Timer=0;
	}
	//causes the actual HUGE jump
	if (flyAccTimer>0) {
	  flyAccTimer-=1;
	  yAcc-=1;
	}
	if (flyAcc2Timer>0) {
	  flyAcc2Timer-=1;
	  if (yVel>0) {yVel=0;}
	  if ((y<flyInitialHeight) and (y<flyInitialHeight+200)) {yAcc+=(0.014)*(flyInitialHeight-y)-5.014;}
	  else {
	   if (y>flyInitialHeight) {yAcc-=5;}
	  }
	  if (facing=LEFT) {xAcc-=2;} else {xAcc+=2;}
	}
	//apply the limits of flySpeed
	if (flySpeed>100) {
	  flySpeed=100;
	  flySpeedTimer=60;
	} else {
	  if (flySpeed<0) {flySpeed=0;}
	}
	//calculates the horizontal and vertical friction, depending on the state of the charater
	if (state=CLIMBING) {
	  xFric=frictionClimbingX;
	  yFric=frictionClimbingY;
	} else {
	  if (state=DUCKING) {
	    if ((xVel<2) and (xVel>-2)) {xFric=0.2;} else {xFric=frictionDuckingX;}
	  } else {
	    //decrease the friction when the character is "flying"
	    if ((canFly) and (jumps>1)) {
	      xFric=frictionFlyingX;
	    } else {
	        if (flySpeed>50) {
	          xFric=frictionRunningFastX;
	        } else {
	            if ((platformCharacterIs(IN_AIR)) and (kLeft=0) and (kRight=0)) {
	              xFric=0.96;
	            } else {
	                xFric=frictionRunningX;
	            }
	        }
	    }
	  }
	  //if the character is underwater
	  if (isCollisionWaterTop(1)) {
	    if ((state=FALLING) and (yVel>0)) {
	      yFric=0.5;
	    } else {
	      yFric=0.9;
	    }
	  } else {
	    yFric=1;
	  }
	}
	//limits the acceleration if it is too extreme
	if (xAcc>xAccLimit) {xAcc=xAccLimit;} else {if (xAcc<-1*xAccLimit) {xAcc=-1*xAccLimit;}}
	if (yAcc>yAccLimit) {yAcc=yAccLimit;} else {if (yAcc<-1*yAccLimit) {yAcc=-1*yAccLimit;}}
	//applies the acceleration
	xVel+=xAcc;
	yVel+=yAcc;
	//nullifies the acceleration
	xAcc=0;
	yAcc=0;
	//applies the friction to the velocity, now that the velocity has been calculated
	xVel*=xFric;
	yVel*=yFric;
	//apply the limits since the velocity may be too extreme
	if (xVel>xVelLimit) {xVel=xVelLimit;} else {if (xVel<-1*xVelLimit) {xVel=-1*xVelLimit;}}
	if (yVel>yVelLimit) {yVel=yVelLimit;} else {if (yVel<-1*yVelLimit) {yVel=-1*yVelLimit;}}
	//approximates the "active" variables
	if (approximatelyZero(xVel)) {xVel=0;}
	if (approximatelyZero(yVel)) {yVel=0;}
	if (approximatelyZero(xAcc)) {xAcc=0;}
	if (approximatelyZero(yAcc)) {yAcc=0;}
	//prepares the character to move up a hill
	//we need to use the "slopeYPrev" variable later to know the "true" y previous value
	//keep this condition the same
	if ((maxSlope>0) and (platformCharacterIs(ON_GROUND)) and (xVel!=0)) {
	  slopeYPrev=y;
	  for (y=y; y>=slopeYPrev-maxSlope; y-=1;) {
	    if (isCollisionTop(1)) {break;}
	  }
	  slopeChangeInY=slopeYPrev-y;
	} else {
	  slopeChangeInY=0;
	}
	//moves the character, and balances out the effects caused by other processes
	//keep this condition the same
	if ((maxSlope*abs(xVel)>0) and (platformCharacterIs(ON_GROUND))) {
	  //we need to check if we should dampen out the speed as the character runs on upward slopes
	  xPrev=x;
	  yPrev=slopeYPrev;       //we don't want to use y, because y is too high
	  yPrevHigh=y;            //we'll use the higher previous variable later
	  moveTo(xVel,yVel+slopeChangeInY);
	  dist=point_distance(xPrev,yPrev,x,y);   //overall distance that has been traveled
	  //we should have only ran at xVel
	  if ((dist)>(abs(xVelInteger))) {
	    excess=dist-abs(xVelInteger);
	    if (xVelInteger<0) {excess*=-1;}
	    //move back since the character moved too far
	    x=xPrev;
	    y=yPrevHigh;     //we need the character to be high so the character can move down
	    //this time we'll move the correct distance, but we need to shorten out the xVel a little
	    //these lines can be changed for different types of slowing down when running up hills
	    ratio=abs(xVelInteger)/dist*0.9;        //can be changed
	    moveTo(round(xVelInteger*ratio),round(yVelInteger*ratio+slopeChangeInY));
	  }
	} else {
	  //we simply move xVel and yVel while in the air or on a ladder
	  moveTo(xVel,yVel);
	}
	//move the character downhill if possible
	//we need to multiply maxDownSlope by the absolute value of xVel since the character normally runs at an xVel larger than 1
	if ((isCollisionBottom(1)=0) and (maxDownSlope>0) and (xVelInteger!=0) and (platformCharacterIs(ON_GROUND))) {
	  //the character is floating just above the slope, so move the character down
	  upYPrev=y;
	  for (y=y; y<=upYPrev+maxDownSlope; y+=1;) {
	    if (isCollisionBottom(1)) {            //we hit a solid below
	      upYPrev=y;
	      break;
	    }
	  }
	  y=upYPrev;
	}
	//figures out what the sprite index of the character should be
	if (state=STANDING)
	  {sprite_index=sStand;}
	if (state=RUNNING)
	  {sprite_index=sRun;}
	if (state=DUCKING)
	  {sprite_index=sDuck;}
	if (state=LOOKING_UP)
	  {sprite_index=sLookUp;}
	if (state=CLIMBING)
	  {sprite_index=sClimbUp;}
	if (state=JUMPING)
	  {sprite_index=sJump;}
	if ((state=FALLING) and (statePrev=FALLING) and (statePrevPrev=FALLING))
	  {sprite_index=sFall;}
	if ((flySpeed>90) and (jumps>0) and (jumps<flyMaxJumps) and (platformCharacterIs(IN_AIR)))
	  {sprite_index=sFly;}
	//sets the previous state and the previously previous state
	statePrevPrev=statePrev;
	statePrev=state;
	//calculates the image_speed based on the character's velocity
	if (state=RUNNING)
	  {image_speed=abs(xVel)*runAnimSpeed+0.1;}
	if (state=CLIMBING)
	  {image_speed=sqrt(sqr(abs(xVel))+sqr(abs(yVel)))*climbAnimSpeed;}
	//limit the image_speed at 1 so the animation always looks good
	if (image_speed>1)
	  {image_speed=1;}



}
