#include "GameManager.h"
#include "RenderManager.h"

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
   render_manager = new RenderManager(this);  //calls render manager's init, sets up the frame listener
}

GameManager::GameManager()
{
   init();
   render_manager->startRendering();
}

GameManager::~GameManager()
{
	std::cout << "GameManager destructor called" << std::endl;
	
	delete render_manager;
	render_manager = NULL;
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

//void GameManager::buildScene()
//{
//	render_manager->buildSimpleScene();
//}
