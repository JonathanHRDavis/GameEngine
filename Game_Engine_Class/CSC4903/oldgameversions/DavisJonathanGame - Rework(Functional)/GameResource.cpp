#include "GameResource.h"

GameResource::GameResource(std::string level_name, std::string file_name, GameResourceType type)
{
	resource_level_name = level_name;
	resource_file_name = file_name;
	resource_type = type;
	is_loaded = false;
}

GameResource::~GameResource()
{
}

bool GameResource::isLoaded()
{
	return is_loaded;
}

std::string GameResource::getResourceLevelName()
{
	return resource_level_name;
}

std::string GameResource::getResourceFileName()
{
	return resource_file_name;
}

GameResourceType GameResource::getResourceType()
{
	return resource_type;
}