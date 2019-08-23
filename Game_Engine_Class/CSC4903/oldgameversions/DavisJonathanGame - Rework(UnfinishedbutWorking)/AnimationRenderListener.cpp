/*
// Jonathan Davis
// CSC 4903 - Game Engine Programming
// Dr. Mark Boshart
// Project #1 - 3D Scene
// Due date: 2/17/2017 @ 11:00pm
*/
#include "AnimationRenderListener.h"
#include "RenderManager.h"

#include <iostream>
using namespace std;

AnimationRenderListener::AnimationRenderListener(RenderManager*  rm)
{
	render_manager = rm;
	render = true;
}

AnimationRenderListener::~AnimationRenderListener()
{
	render_manager = NULL;
}

bool AnimationRenderListener::getRenderStatus()
{
	return render;
}

RenderManager* AnimationRenderListener::getRenderManager()
{
	return render_manager;
}

void AnimationRenderListener::stopRendering()
{
	render = false;
}

//Ogre notifies this class when frames are processed
//as long as this method returns true, the game will continue (automatically done by Ogre)
bool AnimationRenderListener::frameStarted(const Ogre::FrameEvent& event)
{
	float time_step = event.timeSinceLastFrame;
	getRenderManager()->processAnimations(time_step);
	return getRenderStatus();
}

bool AnimationRenderListener::frameEnded(const Ogre::FrameEvent& event) {}
bool AnimationRenderListener::frameRenderingQueued(const Ogre::FrameEvent& event) {}
