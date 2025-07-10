if ((other.yVel>0) and (other.y<y)) {
  other.yVel=-6-0.2*other.yVel;
  instance_create(x,y,oGoombaLoseWings);
  instance_create(x,y-10,oGoombaWings);
  instance_destroy();
} else {
  instance_create(other.x,other.y,oCharacterDie);
  with (other) {instance_destroy();}
}

