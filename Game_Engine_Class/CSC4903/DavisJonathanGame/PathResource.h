#if !defined PATH_RESOURCE
#define PATH_RESOURCE

#include "GameResource.h"

//class GameManager;

class PathResource : public GameResource
{
	private:
		//GameManager* game_manager;
		
	public:
		PathResource(std::string level_name, std::string path);//, GameResourceType type, GameManager gm)
		virtual ~PathResource();
		
		virtual void load();
		virtual void unload();
		
		std::string getResourceLevelName();
		std::string getResourceFileName();
		GameResourceType getResourceType();
};

#endif