/*
// Jonathan Davis
// CSC 4903 - Game Engine Programming
// Dr. Mark Boshart
// Project #1 - 3D Scene
// Due date: 2/17/2017 @ 11:00pm
*/
#if !defined GAME_MANAGER
#define GAME_MANAGER

#include <string>

class RenderManager;

//supplies communication between managers
class GameManager
{
   private:
      RenderManager* render_manager;

      GameManager();
      void init();

   public:
      virtual ~GameManager();
      static GameManager* getGameManager();

      int getRenderWindowWidth();
      int getRenderWindowHeight();
      size_t getRenderWindowHandle();
	  std::string getLoadedLevelName();

};

#endif
