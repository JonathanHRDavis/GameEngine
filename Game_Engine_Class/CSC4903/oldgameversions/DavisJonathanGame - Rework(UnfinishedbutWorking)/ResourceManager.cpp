#include "ResourceManager.h"
#include "GameManager.h"
#include "GameXML.h"
#include "CSC2110/ListArrayIterator.h"

#include <iostream>

ResourceManager::ResourceManager(const char* resources_file_name, const char* scenes_file_name, GameManager* gm)
{
	loaded_level_name = "";
	game_manager = gm;
	
	try
	{
		game_xml = new GameXML(resources_file_name, scenes_file_name);
	}
	catch (std::exception& e)
	{
		ASSERT_CRITICAL(false, e.what());
	}
}