#if !defined INPUT_AUDIO_RENDER_LISTENER
#define INPUT_AUDIO_RENDER_LISTENER

#include "RenderListener.h"

class InputAudioRenderListener : public RenderListener
{
	private:
	
	public:
		InputAudioRenderListener(RenderManager* render_manager);
		virtual ~InputAudioRenderListener();
		
		//called as a new fram begins
		virtual bool frameStarted(const Ogre::FrameEvent& event);
};

#endif