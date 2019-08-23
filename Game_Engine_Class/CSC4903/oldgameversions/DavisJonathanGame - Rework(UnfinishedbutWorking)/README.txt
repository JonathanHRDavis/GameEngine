//////////////////////////////////////////////////////////////////////////

/*
// Jonathan Davis
// CSC 4903 - Game Engine Programming
// Dr. Mark Boshart
// Project #1 - 3D Scene
// Due date: 2/17/2017 @ 11:00pm
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

Instructions to change XML file to be read:

Currently I have this hard coded in the GameManager.cpp file in the
constructor. I have included 3 sample XML files: safari_scene.xml (pink
elephant only), blue_safari_scene.xml (blue elephant only), and the default
safari_scene_combined.xml (both pink and blue elephants). The blue elephant's
scene graph contains multiple sub animations (the trunk and both ears), while
the pink elephant only moves as a whole object (but is still constructed from
multiple meshes).

//////////////////////////////////////////////////////////////////////////

