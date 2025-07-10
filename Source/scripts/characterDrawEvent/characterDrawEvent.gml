function characterDrawEvent() {
	/*
	This event should be placed in the draw event of the platform character.
	It draws the "flySpeed" bar and the character sprite.
	*/
	//draws the sprite
	//draw_sprite(sprite_index,-1,x,y);                                              // old code
	if (facing=LEFT)  {draw_sprite_ext(sprite_index,-1,x,y, -1 ,1,0,c_white,1);}     // new code
	if (facing=RIGHT) {draw_sprite_ext(sprite_index,-1,x,y,  1 ,1,0,c_white,1);}     // new code

	if (canRun) {
	  xOffset=80;
	  if (player=1) {yOffset=120;} else {yOffset=143;}
	  //draw the "flySpeed" bar, which shows how much speed the character has acquired while holding the "run" button
	  draw_healthbar(__view_get( e__VW.XView, 0 )+224+xOffset,__view_get( e__VW.YView, 0 )+432+yOffset,__view_get( e__VW.XView, 0 )+400+xOffset,__view_get( e__VW.YView, 0 )+450+yOffset,flySpeed,make_color_rgb(0,64,128),c_blue,c_aqua,0,1,1);
	}



}
