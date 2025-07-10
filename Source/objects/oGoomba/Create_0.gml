makeActive();

// New collision values since update to GM:Studio
// The new sprite origins should be X: center / Y: 0
leftCollisionBound=0-(sprite_width/2);
rightCollisionBound=sprite_width/2;
setCollisionBounds(leftCollisionBound+2,0,rightCollisionBound-2,sprite_height-1);
xVel=0.7;
image_speed=0.1;

