/*
// Jonathan Davis
// CSC 4903 - Game Engine Programming
// Dr. Mark Boshart
// Project #1 - 3D Scene
// Due date: 2/17/2017 @ 11:00pm
*/

#include "GameManager.h"
#include "RenderManager.h"
#include "LogManager.h"
#include "ResourceManager.h"

#include <iostream>

//the problem is that in C++, it is not known when this initialization code will be called
//so we will use a function static variable that is initialized the first time the method is called
//destructor automatically called?
GameManager* GameManager::getGameManager()
{
   static GameManager game_manager;  //initialized when method is called the first time
   return &game_manager;  //won't go out of scope as game_manager is static
}

void GameManager::init()
{
	log_manager = new LogManager("game_log.txt");
   render_manager = new RenderManager(this);  //calls render manager's init, sets up the frame listener
}

GameManager::GameManager()
{/*
   init();
   render_manager->parseResourceXML("resources.xml");
   //render_manager->parseSceneXML("safari_scene.xml");
   //render_manager->parseSceneXML("blue_safari_scene.xml");
   render_manager->parseSceneXML("safari_scene_combined.xml");
   render_manager->startRendering();
   */
   log_manager = new LogManager("game_log.txt");
//   resource_manager = new ResourceManager("resources.xml", "scene_graphs.xml", this);
   render_manager = new RenderManager(this);
   
   render_manager->parseResourceXML("resources.xml");
   render_manager->parseSceneXML("safari_scene_combined.xml");
   
   /*
   resource_manager->loadLevel("sword");
   resource_manager->unloadLevel();
   resource_manager->loadLevel("sword");
   */
   
   //resource_manager->loadLevel("robot arm");
   render_manager->startRendering();
}

GameManager::~GameManager()
{
	std::cout << "GameManager destructor called" << std::endl;
	
//	delete resource_manager;
//	resource_manager = NULL;
	
	delete render_manager;
	render_manager = NULL;
	
	delete log_manager;
	log_manager = NULL;
}

size_t GameManager::getRenderWindowHandle()
{
   return render_manager->getRenderWindowHandle();
}

int GameManager::getRenderWindowWidth()
{
   return render_manager->getRenderWindowWidth();
}

int GameManager::getRenderWindowHeight()
{
   return render_manager->getRenderWindowHeight();
}

void GameManager::logProblem(std::string error_message, std::string file_name, int line_number)
{
	log_manager->logProblem(error_message, file_name, line_number);
}

void GameManager::logComment(std::string comment)
{
	log_manager->logComment(comment);
}

