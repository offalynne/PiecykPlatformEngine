// execute the script "characterCreateEvent"
characterCreateEvent();

//makes Mario only able to run on example 1
if (room!=room17) {
  canRun=0;
}
//set this character to player 2
player=2;
//need this variable to stop Mario from dying when jumping on two Goombas at once, see the Step event
temporarilyInvincibleFromGoombas = 0;

