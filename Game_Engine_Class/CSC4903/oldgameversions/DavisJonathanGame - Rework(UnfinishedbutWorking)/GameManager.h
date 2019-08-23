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
class LogManager;
//class ResourceManager;

//supplies communication between managers
class GameManager
{
   private:
      RenderManager* render_manager;
	  LogManager* log_manager;
	  //ResourceManager* resource_manager;


      GameManager();
      void init();

   public:
      virtual ~GameManager();
      static GameManager* getGameManager();

      int getRenderWindowWidth();
      int getRenderWindowHeight();
      size_t getRenderWindowHandle();
	  
	  void logProblem(std::string error_message, std::string file_name, int line_number);
	  void logComment(std::string comment);
	  
	  std::string getLoadedLevelName();

};

#endif
