//////////////////////////////////////////////////////////////////////////

/*
// Jonathan Davis
// CSC 4903 - Game Engine Programming
// Dr. Mark Boshart
// Project #2 - 3D Input Managers
// Due date: 3/20/2017 @ 11:00pm
*/

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
for the Playstation 4, attached via USB cable. The controls are as follows:

Left Joystick:
- Left/Right Movement: Rotates the Claw
- Up/Down Movement: Raises/Lowers the Claw

Right Joystick:
-Left/Right Movement: Moves the Claw Left/Right
-Up/Down Movement: Moves the Claw Further/Closer

Right Trigger (R2): Closes the Claw

Left Trigger (L2): Opens the Claw

X Button:
-If the Claw is closed on the Ring, it will pick up the Ring
-If the Claw has moved the Ring to the Peg, it will place the Ring on the Peg
-After the Ring has been placed on the Peg, pressing X again will reset the Ring
-Can repeat this indefinitely

Escape Button (Keyboard): Unloads the Level and closes the Game.

//////////////////////////////////////////////////////////////////////////

Additional Notes:

The Claw in this Claw Machine game is based after the SEGA UFO Catcher style of claw
machines; I have included a SEGA_UFO_Catcher.jpg if you wish to see the basis of my model.

Pressing the X button actually does little more than simply repositioning the Ring,
regardless of whether or not it is in the correct position relative to the Claw or Peg.
I hope to add actual physics handling with collisions when we cover those topics later
in the semester.

If any adjustments need to be made in regards to controller input (Since I'm sure Xbox
and other controllers are mapped differently than a PS4 controller), simply make the
necessary adjustments in my InputManager.cpp file for the buttonPressed, buttonReleased,
and axisMoved functions. I have included comments in these functions that show what
values from the JoyStick State were mapped to for my controller, so it should be relatively
easy to adjust.

//////////////////////////////////////////////////////////////////////////

