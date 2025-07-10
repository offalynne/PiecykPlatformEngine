if (x<xstart-totalTravel) {xAcc=0.1;}
if (x>xstart+totalTravel) {xAcc=-0.1;}
//limits the xVel
if (xVel>xVelLimit) {xVel=xVelLimit;}
else {
  if (xVel<-xVelLimit) {xVel=-xVelLimit;}
}

