if ((other.yVel>0) and (other.y<y+5)) {
  other.yVel=-6-0.2*other.yVel;
  other.temporarilyInvincibleFromGoombas=1;
  i=instance_create(x,y,oGoombaDie);
  if (image_xscale=1) {i.image_xscale=1;} else {i.image_xscale=-1;}
  instance_destroy();
} else {
  if (other.temporarilyInvincibleFromGoombas=0) {
    instance_create(other.x,other.y,oCharacterDie);
    with (other) {instance_destroy();}
  }
}

