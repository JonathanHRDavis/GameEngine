#include "ResourceManager.h"
#include "GameManager.h"
#include "GameXML.h"
#include "CSC2110/ListArrayIterator.h"
#include "AudioResource.h"

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
	
	//game_resources_by_level = new ListArray<GameResource>();
	
	
}

ResourceManager::~ResourceManager()
{
	
}






void ResourceManager::unloadLevel()
{
	delete game_resources_by_level;
	
	game_manager->unloadLevel(loaded_level_name);
	
	loaded_level_name = "";
}

void ResourceManager::loadLevel(std::string requested_level_name)
{
	game_resources_by_level = game_xml->getXMLGameResourcesByLevel(requested_level_name);
	//iterator over the ListArray
	ListArrayIterator<GameResource>* lai = game_resources_by_level->iterator();

	while(lai->hasNext())
	{
		GameResource* gr = lai->next();
		GameResourceType grt = gr->getResourceType();

		if(grt == PATH)
		{
			std::string path = gr->getResourceFileName();
			std::string level_name = gr->getResourceLevelName();
			addPathResource(path, level_name);
		}
		else if(grt == MESH)
		{
			std::string mesh_file_name = gr->getResourceFileName();
			std::string level_name = gr->getResourceLevelName();
			addMeshResource(mesh_file_name, level_name);
		}
		else if(grt == AUDIO)
		{
			std::string audio_file_name = gr->getResourceFileName();
			std::string level_name = gr->getResourceLevelName();
			addAudioResource(gr);
		}
	}
	
	delete lai;

	game_manager->loadLevel(requested_level_name);
	
	game_xml->buildXMLScene(requested_level_name, game_manager);
	
	loaded_level_name = requested_level_name;
}

		
void ResourceManager::addPathResource(std::string path, std::string level_name)
{
	game_manager->addPathResource(path, level_name);
}

void ResourceManager::addMeshResource(std::string mesh_file_name, std::string level_name)
{
	game_manager->addMeshResource(mesh_file_name, level_name);
}

void ResourceManager::addAudioResource(GameResource* gr)
{
	AudioResource* ar = new AudioResource("level_0",".assets/audio/1-52-final-battle.mp3","theme",STREAM);
	ar->load(game_manager);
	game_manager->playAudio(ar, 0);
	/*
	AudioResource* ar = (AudioResource*)gr;
	ar->load(game_manager);
	game_manager->playAudio(ar, 1);
	std::cout << "I'm being called" << std::endl;
	
	//game_manager->addAudioResource(audio_file_name, level_name);
	*/
}


void ResourceManager::test()
{
	GameResource* gr = game_resources_by_level->get(0);
	GameResourceType grt;
	
	grt = gr->getResourceType();
	
	if(grt == PATH)
		return;
	

}