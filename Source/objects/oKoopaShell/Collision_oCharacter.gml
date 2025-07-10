if (other.yVel>0 and canBounceOnShellTimer=1) {
  other.yVel=-4-0.3*other.yVel;
  other.temporarilyInvincibleFromGoombas=1;
  characterSafeTimer=40;
  //if this was the first time the character jumped on the shell
  if (xVel=0) {
    xVel=3;
    image_speed=0.5;
  } else {
    xVel=0;
    image_speed=0;
  }
} else {
  if ((other.temporarilyInvincibleFromGoombas=0) and (xVel!=0) and (characterSafeTimer=0)) {
    instance_create(other.x,other.y,oCharacterDie);
    with (other) {instance_destroy();}
  }
}

