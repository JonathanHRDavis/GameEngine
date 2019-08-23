#include "PathResource.h"
//#include "GameManager.h"

PathResource::PathResource(std::string level_name, std::string path) : GameResource(level_name, path, PATH)
{
	//game_manager = gm;
}

PathResource::~PathResource()
{
	//game_manager = NULL;
}

void PathResource::load()
{
	//game_manager->addPathResource(getResourceFileName(), getResourceLevelName());
	is_loaded = true;
}

void PathResource::unload()
{
	is_loaded = false;
}


std::string PathResource::getResourceLevelName()
{
	return GameResource::getResourceLevelName();
}

std::string PathResource::getResourceFileName()
{
	return GameResource::getResourceFileName();
}

GameResourceType PathResource::getResourceType()
{
	return GameResource::getResourceType();
}