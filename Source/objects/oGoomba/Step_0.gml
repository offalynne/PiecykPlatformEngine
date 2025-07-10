yVel+=0.1;
if (isCollisionBottom(1)) {yVel=0;}
if (isCollisionLeft(1)) {
  xVel*=-1;
  image_xscale = 1;
}
if (isCollisionRight(1)) {
  xVel*=-1;
  image_xscale = -1;
}
moveTo(xVel,yVel);
if (isCollisionSolid()) {y-=2;}
if (y>room_height+30) {instance_destroy();}

