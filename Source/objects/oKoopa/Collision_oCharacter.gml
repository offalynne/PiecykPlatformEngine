if ((other.yVel>0) and (other.y<y+9)) {
  other.yVel=-4-0.2*other.yVel;
  other.temporarilyInvincibleFromGoombas=1;
  instance_create(x,y+7,oKoopaShell);
  instance_destroy();
} else {
  if (other.temporarilyInvincibleFromGoombas=0) {
    instance_create(other.x,other.y,oCharacterDie);
    with (other) {instance_destroy();}
  }
}

