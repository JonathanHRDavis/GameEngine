#include "InputRenderListener.h"
#include "RenderManager.h"

#include <iostream>
using namespace std;

InputRenderListener::InputRenderListener(RenderManager* rm) : RenderListener(rm)
{
}

InputRenderListener::~InputRenderListener()
{
}

//Ogre notifies this class when frames are processed
//as long as this method returns true, the game will continue (automatically done by Ogre)
bool InputRenderListener::frameStarted(const Ogre::FrameEvent& event)
{
	float time_step = event.timeSinceLastFrame;
	//this is the memory address of the object invoked to call the method where I am
	//getRenderManager()->checkForInput(time_step);
	getRenderManager()->checkForInput(time_step);
	
	return getRenderStatus();
}
