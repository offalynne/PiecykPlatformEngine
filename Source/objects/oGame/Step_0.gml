// execute the script "gameStepEvent"
gameStepEvent();

// restart room
if ((keyboard_check(vk_alt)) and (keyboard_check(ord("R")))) {
  room_restart();
}
// exit program
if ((keyboard_check(vk_alt)) and (keyboard_check(ord("E")))) {
  game_end();
}

