#if !defined GAME_XML_RESOURCES
#define GAME_XML_RESOURCES

#include "tinyxml.h"
#include "CSC2110/ListArray.h"
#include "GameResource.h"

class GameManager;

class GameXMLResources
{
	private:
		TiXmlDocument* tiny_xml_document;	
		GameManager* game_manager;
		
	public:
		GameXMLResources(const char* file_name, GameManager* game_manager);
		virtual ~GameXMLResources;
		
		ListArray<GameResource>* getXMLGameResourcesByLevel(std::string requested_level_name);
};

#endif