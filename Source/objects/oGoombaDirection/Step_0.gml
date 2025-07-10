if instance_exists(oCharacter) {
  dir=point_direction(x,y,oCharacter.x,oCharacter.y);
  moveTo(1*cos(degtorad(dir)),-1*sin(degtorad(dir)));
  if ((dir>90) and (dir<270)) {
    image_xscale = -1;
  } else {
    image_xscale = 1;
  }
}

