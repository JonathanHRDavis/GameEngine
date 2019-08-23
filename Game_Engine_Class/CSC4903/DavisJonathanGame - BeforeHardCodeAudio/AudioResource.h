#if !defined AUDIO_RESOURCE
#define AUDIO_RESOURCE

#include "GameResource.h"

class GameManager;
struct AudioResourceInfo;

enum AudioResourceType{STREAM, SAMPLE};

class AudioResource : public GameResource
{
	private:
		AudioResourceInfo* ar_info;
		AudioResourceType audio_resource_type;
		std::string audio_resource_name;
		
	public:
		AudioResource(std::string level_name, std::string audio_file_name, std::string audio_name, AudioResourceType audio_type);
		virtual ~AudioResource();
		
		virtual void load();
		virtual void unload();
		virtual void load(GameManager* gm);
		virtual void unload(GameManager* gm);
		
		AudioResourceInfo* getAudioResourceInfo();
		AudioResourceType getAudioResourceType();
		std::string getAudioResourceName();
};

#endif