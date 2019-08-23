/*
// Jonathan Davis
// CSC 4903 - Game Engine Programming
// Dr. Mark Boshart
// Project #2 - Input Managers
// Due date: 3/20/2017 @ 11:00pm
*/
#if !defined GAME_MANAGER
#define GAME_MANAGER

#include <string>
#include "GameHeader.h"

class RenderManager;
class LogManager;
class ResourceManager;
class InputManager;
class AudioManager;
class AudioResource;
struct AudioResourceInfo;
class GUIManager;
class ScriptManager;
class PhysicsManager;

//supplies communication between managers
class GameManager
{
   private:
      RenderManager* render_manager;
	  LogManager* log_manager;
	  ResourceManager* resource_manager;
	  InputManager* input_manager;
	  AudioManager* audio_manager;
	  GUIManager* gui_manager;
	  ScriptManager* script_manager;
	  PhysicsManager* physics_manager;


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
	  void JoystickXPressed();
	  void JoystickCirclePressed();
	  
	  void mousePressed(uint32 x_click, uint32 y_click, int id);
	  void mouseMoved(uint32 x_click, uint32 y_click, int x_rel, int y_rel);
	
	  void playAudio(AudioResource* audio_resource, uint32 num_repeats);
	  void updateAudio(float time_step);
	  AudioResourceInfo* createAudioResourceInfo();
	  void loadSampleAudioResource(std::string audio_file_name, AudioResourceInfo* audio_info);
	  void loadStreamAudioResource(std::string audio_file_name, AudioResourceInfo* audio_info);
	  void unloadSampleAudioResource(AudioResourceInfo* audio_info);
	  void unloadStreamAudioResource(AudioResourceInfo* audio_info);
	  
	  void playTheme(int choice);
	  void stopTheme();
	  void playSound(int choice);
	  
	  void buttonEventCallback(std::string& combo_box_text, std::string& event_script);
	  void ringPulse();
	  void spawnElephant();


};

#endif
