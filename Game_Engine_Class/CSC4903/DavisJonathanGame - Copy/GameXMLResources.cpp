#include "GameXMLResources.h"
#include "GameManager.h"

#include "PathResource.h"
#include "MeshResource.h"

#include <iostream>
using namespace std;

GameXMLResources::GameXMLResources(const char* file_name, GameManager* game_manager)
{
	game_manager = gm;
	tiny_xml_document = new TiXmlDocument(file_name);
	ASSERT_CRITICAL(tiny_xml_document->LoadFile());
}

GameXMLResources::~GameXMLResources()
{
	
	delete tiny_xml_document;
}

ListArray<GameResource>* GameXMLResources::getXMLGameResourcesByLevel(std::string requested_level_name)
{
	ListArray<GameResource>* game_resources = new ListArray<GameResource>();
	
	TiXmlElement* levels_element = tiny_xml_document->RootElement();
	TiXmlElement* level_element = levels_element->FirstChildElement("level");
	
	while(level_element!=NULL)
	{
		TiXmlElement* level_name_element = level_element->FirstChildElement("name");
		std::string level_name_str = level_name_element->GetText();
		if(requested_level_name == level_name_str)
		{
			TiXmlElement* paths_element = level_element->FirstChildElement("paths");
			TiXmlElement* path_element = paths_element->FirstChildElement("path");
			
			while(path_element != NULL)
			{
				//should this class load the path resources directly?
				std::string path_str = path_element->GetText();
				PathResource* path_resource = new PathResource(required_level_name, path_str, PATH, game_manager);
				game_resources->add(path_resource);
				path_element = path_element->NextSiblingElement();
			}
			
			TiXmlElement* meshes_element = level_element->FirstChildElement("meshes");
			TiXmlElement* mesh_element = meshes_element->FirstChildElement("mesh");
			
			while(mesh_element != NULL)
			{
				//should this class load the mesh resources directly?
				std::string mesh_str = mesh_element->GetText();
				MeshResource* mesh_resource = new MeshResource(requested_level_name, mesh_str, MESH, game_manager);
				game_resources->add(mesh_resource);
				path_element = path_element->NextSiblingElement();
			}
		}
	}
	
	return game_resources;
}