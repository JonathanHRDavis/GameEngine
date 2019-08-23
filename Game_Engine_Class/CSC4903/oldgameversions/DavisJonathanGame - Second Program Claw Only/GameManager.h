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
class ResourceManager;
class InputManager;

//supplies communication between managers
class GameManager
{
   private:
      RenderManager* render_manager;
	  LogManager* log_manager;
	  ResourceManager* resource_manager;
	  InputManager* input_manager;


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
	  
	  void createCamera(std::string camera_name_str, float* camera_position, float* camera_lookat, float* camera_clip);
	  void createLight(std::string light_name_str, float* light_color, float* light_direction);
	  void createSceneNode(std::string child_name_str, std::string parent_name_str);
	  void attachEntity(std::string entity_name_str, std::string entity_mesh_str, std::string entity_material_str, std::string entity_scene_node_str);
	  void processTranslation(float* translation, std::string scene_node_name_str);
	  void processRotation(float* rotation, std::string scene_node_name_str);
	  void processScale(float* scale, std::string scene_node_name_str);
	  
	  void loadLevel(std::string level_name);
	  void unloadLevel(std::string level_name);
	  
	  void addPathResource(std::string path, std::string level_name);
	  void addMeshResource(std::string mesh_file_name, std::string level_name);
	  
	  void checkForInput(float time_step);
	  void keyReleased(std::string key);
	  void keyPressed(std::string key);
	  void leftJoystickAxisMoved(float north_south, float east_west);
	  void rightJoystickAxisMoved(float north_south, float east_west);
	  void rightTriggerJoystick(float value);
	  void leftTriggerJoystick(float value);

};

#endif
