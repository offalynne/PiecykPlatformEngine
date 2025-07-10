//set the font
draw_set_font(font0);
//display text to the user depending on the room number
if (room=room_Credits)
  {stringToShow="  - CREDITS - ##Platform Engine by Martin Piecyk#All code written by Martin Piecyk and updated by the GameMaker's forum users##Main Character sprites by Lars Doucet & Sean Choate#http://opengameart.org/content/super-miyamoto##Koopa and Goomba sprites by Luigi and Jerry on www.deviantart.com#####Press 'Z' to go the first room";}
if (room=room1)
  {stringToShow="Press 'Z' to move to the next example and 'X' to move to the previous example.#The left and right keys run and control jumps.#Notice the different sprites and animation speed when running.";}
else if (room=room2)
  {stringToShow="Jump on top of the moving solids. These blocks carry Mario when he is on top and push him if he's in their way.#Mario never gets stuck inside of another solid.#Also, press down to duck. The friction is different when you press down.";}
else if (room=room3)
  {stringToShow="Here are some more moving solids that you can test out.#When Mario jumps into the bottom of a solid, he bounces off.#Vertically moving solids work just as well as horizontally moving solids.#Also, solids can have transparent sprites with precise collision detection.";}
else if (room=room4)
  {stringToShow="The green blocks are platform solids. Mario can jump through them when he is moving upwards.#When Mario stands on top of a platform solid, you can press down to make Mario fall through it.#Precise collision checking platforms work just like the non-precise platforms.#Try out these platform solids so you can see how they work.";}
else if (room=room5)
  {stringToShow="Here are some enemies Mario can jump on. Note that when you press control lightly, Mario jumps lower than normal (variable jumping).#Tap control for a short jump and press it lengthily for a high jump.#You'll have an easier time killing the Goombas when you jump lower.#Press 'R' to restart this example room.#Also, this room features another platform character. Keys for player 2: W, A, S, and D for the direction keys, J to jump, and F to run.";}
else if (room=room6)
  {stringToShow="Here are ladders that Mario can climb. Press up or down near a ladder to begin climbing the ladder.#You can press up, down, left, and right while on the ladder. Press control to jump off the ladder.#Again, holding control for an extended period of time will make Mario jump farther.#If you are not near a ladder when you press up, a sprite of Mario looking up will be shown.";}
else if (room=room7)
  {stringToShow="These ladders are grouped together so you can press left and right and move from ladder to ladder.#One of the ladders uses precise collision checking.#Also, notice the animation speed when Mario is climbing.";}
else if (room=room8)
  {stringToShow="These solids were designed to move through each other.#When Mario stands in between them, the solids stop moving so Mario doesn't get squished.#Afterwards, their path is altered.#Press 'R' to restart the room.";}
else if (room=room9)
  {stringToShow="Here are two solids that move in a circle. Mario can alter their path by standing underneath them.#Mario can jump on top of them and move correctly with the solids.";}
else if (room=room10)
  {stringToShow="Here is another moving solid. This solid accelerates from side to side.";}
else if (room=room11)
  {stringToShow="The white moving solids have a slippery top.#When Mario walks on top them, he does not move where they move.#Compare the white moving solids to the solid which has a frictional top.";}
else if (room=room12)
  {stringToShow="This room shows you some curved surfaces that you can make.#When Mario goes runs up a slope, he runs slower. When Mario runs down a slope, he runs faster.";}
else if (room=room13)
  {stringToShow="This room shows an example enemy which moves towards you and stops precisely after hitting a solid.#Notice that the enemy can go through the jump-through platforms. That is because they are not true solids.";}
else if (room=room14)
  {stringToShow="The brown solids in this room can be pushed by the platform character.#They accelerate downwards when pushed over an edge.#The platform character cannot push two of these moveable solids at once.#The moveable solids can be placed on top of each other or even on moving solids.#When the solids fall, they do not crush Mario.";}
else if (room=room15)
  {stringToShow="This room has water. I'll let you add in your own effects (like splashes, bubbles, an underwater air meter) so it looks right for your game.#Wouldn't want to take away all of the fun! ;)#Also, this room has donut platforms which fall when you stand on them for awhile.#They come back after falling when a certain number of steps pass.#Even better, they won't come back if the character is standing in the spot where they are supposed to come back.#Right when he leaves that spot, they will immediately come back.";}
else if (room=room16)
  {stringToShow="In this room, you can run faster by holding down shift (and pressing left or right).#The bar at the bottom shows how much speed Mario attained.#The blue feather gives Mario the ability to get a huge jump after running at top speed.#The red feather gives Mario the ability to jump multiple times after the huge jump.#When Mario has the red and the blue feather, he can jump 5 times mid-air if he's running at full speed.#The flying in this engine is similar to Super Mario Brothers 3, but a little different and unique.#Try getting one feather, than the other, and finally both.";}
else if (room=room17)
  {stringToShow="This is the last room. Everything the Platform Engine features is in this room.#Press 'Z' to return to the first example. Keys for player 2: W, A, S, and D for the direction keys, J to jump, and F to run.";}
//sets the string's width
stringWidth=string_width(string_hash_to_newline(stringToShow));
//sets the string's height
stringHeight=string_height(string_hash_to_newline(stringToShow));

