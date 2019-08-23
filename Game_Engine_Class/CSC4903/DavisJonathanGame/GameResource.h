#if !defined GAME_RESOURCE
#define GAME_RESOURCE

enum GameResourceType{PATH, MESH, AUDIO};

#include "GameHeader.h"
#include <string>

class GameResource
{
	protected:
		std::string resource_level_name;
		std::string resource_file_name;
		GameResourceType resource_type;
		bool is_loaded;
		
	public:
		GameResource(std::string level_name, std::string file_name, GameResourceType type);
		virtual ~GameResource();
		
		bool isLoaded();
		
		virtual void load() = 0;
		virtual void unload() = 0;
		
		std::string getResourceLevelName();
		std::string getResourceFileName();
		GameResourceType getResourceType();
	
};

#endif