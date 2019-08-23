#include "RenderListener.h"
#include "AnimationRenderListener.h"
#include "RenderManager.h"

#include <iostream>
using namespace std;

		
RenderListener::RenderListener(RenderManager* rm)
{
	render_manager = rm;
	render = true;
}

RenderListener::~RenderListener()
{
	render_manager = NULL;
}

void RenderListener::stopRendering()
{
	render = false;
}

bool RenderListener::getRenderStatus()
{
	return render;
}

RenderManager* RenderListener::getRenderManager()
{
	return render_manager;
}