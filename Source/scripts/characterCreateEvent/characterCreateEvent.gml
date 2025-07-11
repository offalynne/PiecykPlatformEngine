#macro STANDING		10
#macro RUNNING		11
#macro DUCKING		12
#macro LOOKING_UP	13
#macro CLIMBING		14
#macro JUMPING		15
#macro FALLING		16
#macro DYING		17
#macro LEFT			18
#macro RIGHT		19
#macro ON_GROUND	20
#macro IN_AIR		21
#macro ON_LADDER	22

function characterCreateEvent() {
	/*
	This script should be placed in the "Create Event" of the platform character.
	It sets the variables needed for the platform character.

	You can edit the "user variables" if you don't want to use the default values.  

	This script sets the collision bounds using this code: setCollisionBounds(-5,-7,5,8)
	You can modify the arguments to make a collsion bounds that fits your own sprites.
	If you are just going to use the default Mario sprites, there is no reason to edit
	the arguments.
	*/

	//the keys that the platform character will use (don't edit)
	kLeft=0;
	kRight=0;
	kUp=0;
	kDown=0;
	kJump=0;
	kJumpPressed=0;
	kRun=0;

	//user variables (you can edit these)
	player=1;                   //player number (player 2 uses different keyboard keys than player 1)
	state=FALLING;              //the character state, must be one of the following: STANDING, RUNNING, DUCKING, LOOKING_UP, CLIMBING, JUMPING, or FALLING
	facing=RIGHT;               //which direction the character is facing, must be either LEFT or RIGHT
	 runAcc=1.5;                   //the running acceleration
	 grav=0.4;                     //the gravity
	 initialJumpAcc=-8;          //relates to how high the character will jump
	 jumpTimeTotal=14;           //how long the user must hold the jump button to get the maximum jump height
	 climbAcc=0.4;               //how fast the character will climb
	runAnimSpeed=0.05;          //relates to the how fast the running animation should go
	climbAnimSpeed=0.1;         //relates to how fast the climbing animation should go
	 departLadderXVel=3;         //how fast character should be moving horizontally when he leaves the ladder
	 departLadderYVel=-3;        //how fast the character should be moving vertically when he leaves the ladder
	maxSlope=4;                 //approximately how many pixels the character can climb UPWARDS per step (a value of 5 means the character can climb up a slope of 5)
	maxDownSlope=5;             //approximately how many pixels the character can climb DOWNWARDS per step (a value of 5 means the character can climb down a slope of 5)
	canRun=1;                   //when the user presses the shift button, should the character be allowed to run?
	canFly=0;                   //whether the character can do a fly jump when running at full speed
	canFlyJump=0;               //whether the character can do continuous fly jumps (mid-air)
	flyMaxJumps=5;              //the maximum number of jumps the character can perform while flying
	frictionRunningX=0.6;       //friction obtained while running
	frictionRunningFastX=0.98;   //friction obtained while holding the shift button for some time while running 
	frictionClimbingX=0.5;      //friction obtained while climbing
	frictionClimbingY=0.8;      //friction obtained while climbing
	frictionDuckingX=0.8;       //friction obtained while ducking
	frictionFlyingX=0.99;       //friction obtained while "flying"
	 xVelLimit=8;               //limits the xVel
	 yVelLimit=6;               //limits the yVel
	 xAccLimit=5;                //limits the xAcc
	 yAccLimit=5;                //limits the yAcc

	//sets the collision bounds to fit the default sprites (you can edit the arguments of the script)
	setCollisionBounds(-5,-7,5,8);

	//hidden variables (don't edit)
	statePrev=state;
	statePrevPrev=statePrev;
	gravityIntensity=grav;      //this variable describes the current force due to gravity (this variable is altered for variable jumping)
	jumpTime=jumpTimeTotal;     //current time of the jump (0=start of jump, jumpTimeTotal=end of jump)
	jumpButtonReleased=0;       //whether the jump button was released. (Stops the user from pressing the jump button many times to get extra jumps)
	ladderTimer=0;              //relates to whether the character can climb a ladder
	jumps=0;
	flySpeed=0;                 //ranges between 0 and 100. When the flySpeed is approximately 100, the character can "fly."
	flySpeedTimer=0;
	flyAccTimer=0;
	flyAcc2Timer=0;
	flyJumpsTimer=0;
	flyJumpWasPressed=0;

	//makes the object "active" (don't edit)
	makeActive();



}
