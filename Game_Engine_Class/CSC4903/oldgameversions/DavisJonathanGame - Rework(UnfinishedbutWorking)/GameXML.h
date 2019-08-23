#if !defined GAME_XML
#define GAME_XML

#include "GameResource.h"
#include "tinyxml.h"
#include "CSC2110/ListArray.h"

class GameManager;

class GameXML
{
	private:
		TiXmlDocument resources_xml_document;
		TiXmlDocument scenes_xml_document;
		
		void processChildren(TiXmlDocument* children_element, std::string parent_name, Ga)
		
	public:
		GameXML(const char* resources_file_name, const char* scenes_file_name);
		virtual ~GameXML();
		
		ListArray<GameResource>* getXMLGameResourcesByLevel(std::string requested_level_)
		void buildXMLScene(std::string level_name, GameManager* game_manager);
};

#endif