//if the character's falling
if (falling) {
  yAcc=grav;
  returnAfterPeriodOfTime-=1;
  if (returnAfterPeriodOfTime=0) {
    instance_create(xstart,ystart,oDonutPlatformStart);
  }
} else {
  //if the character is standing on the platform, subtract one from the timer
  if (isCollisionCharacterTop(1, 0)) {
    timeUntilFall-=1;
    //also, check to see if it is <= 0
    if (timeUntilFall<=0) {
      falling=1;
    }
  } else {
    if (timeUntilFall<timeUntilFallMax) {
      timeUntilFall+=1;
    }
  }
}

