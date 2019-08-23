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
