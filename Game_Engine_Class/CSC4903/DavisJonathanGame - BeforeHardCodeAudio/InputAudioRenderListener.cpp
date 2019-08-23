#include "InputAudioRenderListener.h"
#include "RenderManager.h"

#include <iostream>
using namespace std;

InputAudioRenderListener::InputAudioRenderListener(RenderManager* rm) : RenderListener(rm)
{
}

InputAudioRenderListener::~InputAudioRenderListener()
{
}

//Ogre notifies this class when frames are processed
//as long as this method returns true, the game will continue (automatically done by Ogre)
bool InputAudioRenderListener::frameStarted(const Ogre::FrameEvent& event)
{
	float time_step = event.timeSinceLastFrame;
	//this is the memory address of the object invoked to call the method where I am
	//getRenderManager()->checkForInput(time_step);
//	getRenderManager()->updateAudio(time_step);
	getRenderManager()->checkForInput(time_step);
	
	return getRenderStatus();
}
