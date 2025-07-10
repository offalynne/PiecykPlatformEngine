// New collision values since update to GM:Studio
// The new sprite origins should be X: center / Y: 0
leftCollisionBound=0-(sprite_width/2);
rightCollisionBound=sprite_width/2;
setCollisionBounds(leftCollisionBound+2,0,rightCollisionBound-2,sprite_height-1);
alarm[0]=60;
image_speed=0.25;
//alarm[1]=2;

