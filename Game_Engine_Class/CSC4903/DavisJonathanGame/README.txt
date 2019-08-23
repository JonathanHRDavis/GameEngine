//////////////////////////////////////////////////////////////////////////

/*
// Jonathan Davis
// CSC 4903 - Game Engine Programming
// Dr. Mark Boshart
// Project #4 - Collision Detection and Physics
// Due date: 5/01/2017 @ 11:00pm
*/

//////////////////////////////////////////////////////////////////////////

Project 4 Notes:
Physics related objects are currently hardcoded into the game; I hope to
eventually get around to adding XML functionality that allows me to easily
spawn/despawn objects.

The entire ground plane is covered in a large plane collision box, so there
are no green lines on the ground.

The Claw Machine, Ring, and Elephant(s) are affected by gravity and will fall to the ground.
The Claw Machine and Ring both have collision shapes made up of several shapes.
There are 3 Lua scripts used in the GUI:
  -(Right) Button script that applies impulse to the ring.
  -(Left Button script that spawns an elephant
  -Script that stops the current theme

The goal of the game is to somehow hook the Ring with the Claw Machine and maneuver it to be
places around the static Peg on the ground. Alternatively, you can try to apply impulses to the
ring and push it onto the Peg by hitting it with the Claw Machine. If this is not enough of a
challenge for you, you can spawn in some elephants with the SPAWN ELEPHANT button and go crazy.

This is one of the hardest games ever created, and anyone who is able to beat it will be
awarded a Gold Star™ and an infinite amount of Brownie Points™.



GUI/Audio Features and Guide:

- Cursor is a custom green alien head.
- GUI features a textbox, combobox, and two buttons.

Choose either "THEME" or "SOUND" from the combobox. Type a number 
(such as "1" or "THREE") into the textbox corresponding to the 
sound/theme you wish to hear. You can also type "0" or "NONE" with
"THEME" selected to stop playing the current theme. Then, simply click 
the button in the bottom right corner. Invalid choices will produce a 
one type of sound. There are four themes and four other sounds, however 
the fourth sound is an easter egg. You'll have to find a way to play the 
sound EASTER EGG instead of sound FOUR...

"SPAWN ELEPHANT" Button - Self Explanatory.


//////////////////////////////////////////////////////////////////////////

Instructions to compile the project:

At the command prompt, type "build_game DRIVE_LETTER",
where DRIVE_LETTER is the drive that has the Ogre dependencies.
See my Makefile and build_game.bat file if any changes need to be made.

//////////////////////////////////////////////////////////////////////////

Instructions to run project immediately after compilation:

If you have compiled the project using the previous method,
you can simply run the game by typing "game", as the build_game.bat
file will have already set the PATH to the required fields.

//////////////////////////////////////////////////////////////////////////

Instructions to run project at any time:

If you have opened a fresh command prompt, simply type "run_game",
and my run_game.bat file will automatically set the PATH variable to
the required fields and the game will start.

//////////////////////////////////////////////////////////////////////////

Instructions and Requirements to Play the Game:

For this assignment, I tested my input using a Sony Dual Shock 4 Wireless Controller
for the Playstation 4, attached via USB cable. Some controls are also possible to be
performed using the mouse/GUI. The controls are as follows:

Left Joystick/WASD Keys:
- Left/Right Movement: Moves the Claw along the X axis
- Up/Down Movement: Moves the Claw along the Z axis

Right Joystick (Funny Behavior if Held):
-Left/Right Movement: Makes the Claw spin along the Y axis
-Up/Down Movement: Makes the Claw spin along the X axis

Right Trigger (R2)/Spacebar: Moves the Claw upward on the Y axis

Left Trigger (L2): Moves the Claw downward on the Y axis (in addition to gravity)

X Button/GUI Button "CLICK ME":
-Applies an impulse to the Ring, making it "hop"

GUI Button "SPAWN ELEPHANT"
-Spawns an Elephant (limit of 999 elephants at once, but please don't try to spawn that many)

Escape Button (Keyboard): Unloads the Level and closes the Game.

//////////////////////////////////////////////////////////////////////////

Additional Notes:

The Claw in this Claw Machine game is based after the SEGA UFO Catcher style of claw
machines; I have included a SEGA_UFO_Catcher.jpg if you wish to see the basis of my model.

If any adjustments need to be made in regards to controller input (Since I'm sure Xbox
and other controllers are mapped differently than a PS4 controller), simply make the
necessary adjustments in my InputManager.cpp file for the buttonPressed, buttonReleased,
and axisMoved functions. I have included comments in these functions that show what
values from the JoyStick State were mapped to for my controller, so it should be relatively
easy to adjust.

//////////////////////////////////////////////////////////////////////////

