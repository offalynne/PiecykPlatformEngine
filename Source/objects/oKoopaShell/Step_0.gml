yVel+=0.1;
if (isCollisionBottom(1)) {yVel=0;}
if (isCollisionLeft(1)) {xVel=3;}
if (isCollisionRight(1)) {xVel=-3;}
moveTo(xVel,yVel);
if (isCollisionSolid()) {y-=2;}
if (y>room_height+30) {
  instance_destroy();
}

if (canBounceOnShellTimer>1) {canBounceOnShellTimer-=1;}
if (characterSafeTimer>0) {characterSafeTimer-=1;}

