#if !defined ANIMATION_RENDER_LISTENER
#define ANIMATION_RENDER_LISTENER

#include "Ogre.h"
class RenderManager;

class AnimationRenderListener : public Ogre::FrameListener
{
	private:
		RenderManager* render_manager;
		bool render;
	
	public:
		AnimationRenderListener(RenderManager* render_manager);
		virtual ~AnimationRenderListener();
		
		bool getRenderStatus();
		RenderManager* getRenderManager();
		void stopRendering();
		
		//called as a new frame begins
		bool frameStarted(const Ogre::FrameEvent& event);
		
		//called after the back buffer is flipped and the scene is presented to the display
		bool frameRenderingQueued(const Ogre::FrameEvent& event);
		
		//called after the scene has rendered but before the back buffer is drawn
		bool frameEnded(const Ogre::FrameEvent& event);
};

#endif
