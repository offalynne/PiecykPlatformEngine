// execute the script "characterCreateEvent"
characterCreateEvent();

//makes Mario only able to run on examples 16 and 17
if ((room!=room16) and (room!=room17)) {
  canRun=0;
}
if (room=room12) {
  slidingSlopeXVelMax=5;
}
//need this variable to stop Mario from dying when jumping on two Goombas at once, see the Step event
temporarilyInvincibleFromGoombas = 0;

