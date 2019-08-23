#if !defined RESOURCE_MANAGER
#define RESOURCE_MANAGER

#include <string>
#include "CSC2110/ListArray.h"


class GameManager;
class GameXML;
class GameResource;

//supplies communication between managers
class ResourceManager
{
	private:
		GameManager* game_manager;
		GameXML* game_xml;
		
		ListArray<GameResource>* game_resources_by_level;
		
		std::string loaded_level_name;
		
	public:
		ResourceManager(const char* resources_file_name, const char* scenes_file_name, GameManager* gm);
		virtual ~ResourceManager();
		
		void unloadLevel();
		void loadLevel(std::string requested_level_name);
		
		void addPathResource(std::string path, std::string level_name);
		void addMeshResource(std::string mesh_file_name, std::string level_name);
		
		void test();
		
};

#endif