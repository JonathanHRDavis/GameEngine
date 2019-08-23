#include "MeshResource.h"
//#include "GameManager.h"

MeshResource::MeshResource(std::string level_name, std::string mesh) : GameResource(level_name, mesh, MESH)
{
	//game_manager = gm;
}

MeshResource::~MeshResource()
{
	//game_manager = NULL;
}

void MeshResource::load()
{
	//game_manager->addMeshResource(getResourceFileName(), getResourceLevelName());
	is_loaded = true;
}

void MeshResource::unload()
{
	is_loaded = false;
}



std::string MeshResource::getResourceLevelName()
{
	return GameResource::getResourceLevelName();
}

std::string MeshResource::getResourceFileName()
{
	return GameResource::getResourceFileName();
}

GameResourceType MeshResource::getResourceType()
{
	return GameResource::getResourceType();
}