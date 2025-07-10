draw_set_color(make_color_rgb(160,199,241));
draw_rectangle(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+10,__view_get( e__VW.XView, 0 )+30+stringWidth,__view_get( e__VW.YView, 0 )+30+stringHeight,0);
draw_set_color(c_black);
draw_rectangle(__view_get( e__VW.XView, 0 )+10,__view_get( e__VW.YView, 0 )+10,__view_get( e__VW.XView, 0 )+30+stringWidth,__view_get( e__VW.YView, 0 )+30+stringHeight,1);

//draws the room message
draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+20,string_hash_to_newline(stringToShow));

