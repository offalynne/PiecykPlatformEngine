//if the character is standing on the platform, move the platform down
if (isCollisionCharacterTop(1, 0)) {
  if (isCollisionBottom(1)) {yVel=0;}
  else {yVel=1;}
} else {
  if (y>ystart) {yVel=-1;}
  else {yVel=0;}
}

