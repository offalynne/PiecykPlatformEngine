// execute the script "characterStepEvent"
characterStepEvent();


if (y>room_height) {
  instance_create(x,y,oCharacterDie);
  instance_destroy();
}
if (x<0) {
  xVel=0;
  x=0;
} else {
  if (x>room_width) {
    xVel=0;
    x=room_width;
  }
}
//need this code to stop Mario from dying when jumping on two Goombas at once, see the oGoomba collision event for it to make sense
temporarilyInvincibleFromGoombas = 0;

