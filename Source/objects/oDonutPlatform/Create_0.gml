viscidTop=1;
makeActive();
setCollisionBounds(0,0,sprite_width,sprite_height);

//variables for the donut platform
grav=0.5;                        //how fast it falls
returnAfterPeriodOfTime=250;     //number of steps until it returns after it falls (set to 0 to make it never return)
timeUntilFall=60;                //how long the character can stand on this until it falls
timeUntilFallMax=60;             //the max value for timeUntilFall
falling=0;                       //is the platform falling


