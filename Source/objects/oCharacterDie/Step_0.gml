//applies the acceleration
xVel+=xAcc;
yVel+=yAcc;
//applies the velocity
x+=xVel;
y+=yVel;
if ((y>room_height) and (restartLevelOk=1)) {
  alarm[2]=60;
  restartLevelOk=2;
}

