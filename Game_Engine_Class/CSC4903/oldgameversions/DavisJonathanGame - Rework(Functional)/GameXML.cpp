#include "GameXML.h"
#include "GameManager.h"
#include "Utils.h"

#include "PathResource.h"
#include "MeshResource.h"

#include <iostream>
#include <stdexcept>
using namespace std;

void GameXML::buildXMLScene(std::string requested_level_name, GameManager* game_manager)
{
	TiXmlElement* scene_element = scenes_xml_document.RootElement();
	
	TiXmlElement* level_element = scene_element->FirstChildElement("level");
	while(level_element != NULL)
	{
		TiXmlElement* level_name_element = level_element->FirstChildElement("name");
		std::string level_name_str = level_name_element->GetText();
		if(requested_level_name == level_name_str)
		{
			TiXmlElement* camera_element = level_element->FirstChildElement("camera");
			TiXmlElement* camera_name_element = camera_element->FirstChildElement("name");
			std::string camera_name_str = camera_name_element->GetText();
			
			TiXmlElement* camera_position_element = camera_element->FirstChildElement("position");
			std::string camera_position_str = camera_position_element->GetText();
			float camera_position[3];
			Utils::parseFloats(camera_position_str, camera_position);
			
			float camera_lookat[3];
			TiXmlElement* camera_lookat_element = camera_element->FirstChildElement("look-at");
			std::string camera_lookat_str = camera_lookat_element->GetText();
			Utils::parseFloats(camera_lookat_str, camera_lookat);
			
			float camera_clip[2];
			TiXmlElement* camera_clip_element = camera_element->FirstChildElement("clip");
			std::string camera_clip_str = camera_clip_element->GetText();
			Utils::parseFloats(camera_clip_str, camera_clip);
			
			game_manager->createCamera(camera_name_str, camera_position, camera_lookat, camera_clip);
			
			TiXmlElement* light_element = level_element->FirstChildElement("light");
			TiXmlElement* light_name_element = light_element->FirstChildElement("name");
			std::string light_name_str = light_name_element->GetText();
			
			TiXmlElement* light_color_element = light_element->FirstChildElement("color");
			std::string light_color_str = light_color_element->GetText();
			float light_color[3];
			Utils::parseFloats(light_color_str, light_color);
			
			float light_direction[3];
			TiXmlElement* light_direction_element = light_element->FirstChildElement("direction");
			std::string light_direction_str = light_direction_element->GetText();
			Utils::parseFloats(light_direction_str, light_direction);
			
			game_manager->createLight(light_name_str, light_color, light_direction);
			
			TiXmlElement* graph_element = level_element->FirstChildElement("graph");
			TiXmlElement* children_element = graph_element->FirstChildElement("children");
			processChildren(children_element,"root",game_manager);
		}
		
		level_element = level_element->NextSiblingElement();
	}
}

void GameXML::processChildren(TiXmlElement* children_element, std::string parent_name_str, GameManager* game_manager)
{
	if(children_element == NULL) return;
	
	TiXmlElement* child_element = children_element->FirstChildElement("child");
	while(child_element != NULL)
	{
		TiXmlElement* name_element = child_element->FirstChildElement("name");
		std::string child_name_str = name_element->GetText();
		
		game_manager->createSceneNode(child_name_str, parent_name_str);
		
		TiXmlElement* entity_element = child_element->FirstChildElement("entity");
		if(entity_element!=NULL)
		{
			TiXmlElement* entity_name_element = entity_element->FirstChildElement("name");
			std::string entity_name_str = entity_name_element->GetText();
			
			TiXmlElement* entity_mesh_element = entity_element->FirstChildElement("mesh");
			std::string entity_mesh_str= entity_mesh_element->GetText();
			
			TiXmlElement* entity_material_element = entity_element->FirstChildElement("material");
			std::string entity_material_str = entity_material_element->GetText();

			game_manager->attachEntity(entity_name_str,entity_mesh_str,entity_material_str, child_name_str);
		}
		
		TiXmlElement* translate_element = child_element->FirstChildElement("translation");
		std::string translate_str = translate_element->GetText();
		float translation[3];
		Utils::parseFloats(translate_str,translation);
		game_manager->processTranslation(translation,child_name_str);
		
		TiXmlElement* rotation_element = child_element->FirstChildElement("rotation");
		std::string rotation_str = rotation_element->GetText();
		float rotation[4];
		Utils::parseFloats(rotation_str,rotation);
		game_manager->processRotation(rotation,child_name_str);
		
		TiXmlElement* scale_element = child_element->FirstChildElement("scale");
		std::string scale_str = scale_element->GetText();
		float scale[3];
		Utils::parseFloats(scale_str, scale);
		game_manager->processScale(scale, child_name_str);
		
		TiXmlElement* grand_child_element = child_element->FirstChildElement("children");
		processChildren(grand_child_element, child_name_str, game_manager);
		
		child_element = child_element->NextSiblingElement();
	}
}

GameXML::GameXML(const char* resources_file_name, const char* scenes_file_name)// : re
{
	
	TiXmlDocument resources_xml_document_(resources_file_name);
	resources_xml_document = resources_xml_document_;
	TiXmlDocument scenes_xml_document_(scenes_file_name);
	scenes_xml_document = scenes_xml_document_;
	
	bool success = resources_xml_document.LoadFile();
	if(!success)
	{
		throw std::runtime_error("Error Parsing XML Resources File");
	}
	
	success = scenes_xml_document.LoadFile();
	if(!success)
	{
		throw std::runtime_error("Error Parsing XML Scenes File");
	}
}

GameXML::~GameXML()
{
	
}

ListArray<GameResource>* GameXML::getXMLGameResourcesByLevel(std::string requested_level_name)
{
	ListArray<GameResource>* game_resources = new ListArray<GameResource>();
	
	TiXmlElement* levels_element = resources_xml_document.RootElement();
	TiXmlElement* level_element = levels_element->FirstChildElement("level");
	
	while(level_element!=NULL)
	{
		TiXmlElement* level_name_element = level_element->FirstChildElement("name");
		std::string level_name_str = level_name_element->GetText();
		if(requested_level_name == level_name_str)
		{
			TiXmlElement* paths_element = level_element->FirstChildElement("paths");
			TiXmlElement* path_element = paths_element->FirstChildElement("path");
			
			while(path_element!=NULL)
			{
				std::string path_str = path_element->GetText();
				PathResource* path_resource = new PathResource(requested_level_name, path_str);
				game_resources->add(path_resource);
				path_element = path_element->NextSiblingElement();
			}
			
			TiXmlElement* meshes_element = level_element->FirstChildElement("meshes");
			TiXmlElement* mesh_element = meshes_element->FirstChildElement("mesh");
			
			while(mesh_element!=NULL)
			{
				std::string mesh_str = mesh_element->GetText();
				MeshResource* mesh_resource = new MeshResource(requested_level_name, mesh_str);
				game_resources->add(mesh_resource);
				mesh_element = mesh_element->NextSiblingElement();
			}
		}
		level_element = level_element->NextSiblingElement();
	}
	return game_resources;
}
