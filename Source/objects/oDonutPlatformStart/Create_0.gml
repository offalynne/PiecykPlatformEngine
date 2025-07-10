//this object's purpose is to create the oDonutPlatform object if the character is not going to collide with it
setCollisionBounds(0,0,sprite_width,sprite_height);
visible=0;

//if this condition isn't here, the game gets an error. Very weird...
//if variable_local_exists("oCharacter.collisionBoundsOffsetLeftX")

//if the character is not in the way...
//if isCollisionCharacter()=0
//{
//  instance_create(x,y,oDonutPlatform)
//  instance_destroy()
//}

