/*
// Jonathan Davis
// CSC 4903 - Game Engine Programming
// Dr. Mark Boshart
// Project #2 - Input Managers
// Due date: 3/20/2017 @ 11:00pm
*/
#if !defined RENDER_MANAGER
#define RENDER_MANAGER

#include "Ogre.h"
#include "AnimationRenderListener.h"
#include "InputAudioRenderListener.h"
#include "CSC2110/ListArray.h"
//#include "tinyxml.h"//

class GameManager;
class ScriptManager;

class PhysicsManager;
struct SceneNodeMotion;
struct SceneNodeManual;

class RenderManager
{
   private:
	  ListArray<Ogre::AnimationState>* animation_states;

      Ogre::Root* root;
      Ogre::RenderWindow* window;
      Ogre::SceneManager* scene_manager;

      Ogre::Camera* camera;
      Ogre::Viewport* viewport;

      GameManager* game_manager;
	  ScriptManager* script_manager;
	  PhysicsManager* physics_manager;
	  
	  AnimationRenderListener*  animation_render_listener;
	  InputAudioRenderListener* input_render_listener;

      void init();
      size_t window_handle;
      Ogre::Real time_since_last_frame;
	  
	  int action;
	  bool play_noise;
	  int elephant_count;

   public:
      RenderManager(GameManager* game_manager);
      virtual ~RenderManager();

      size_t getRenderWindowHandle();
      int getRenderWindowWidth();
      int getRenderWindowHeight();

      Ogre::RenderWindow* getRenderWindow();
      Ogre::SceneManager* getSceneManager();

      void startRendering();
      void stopRendering();
	  
	  
	 




	 
	  void attachEntity(std::string entity_name_str, std::string entity_mesh_str, std::string entity_material_str, std::string entity_scene_node_str);
	  void createSceneNode(std::string child_name_str, std::string parent_name_str);
	  void processScale(float* scale, std::string scene_node_name_str);
	  void processRotation(float* rotation, std::string scene_node_name_str);
	  void processTranslation(float* translation, std::string scene_node_name_str);
	  void createLight(std::string light_name, float* light_color, float* light_direction);
	  void createCamera(std::string camera_name, float* camera_position, float* camera_lookat, float* camera_clip);
	  void unloadLevel(std::string level_name);
	  void loadLevel(std::string level_name);
	  
	  void checkForInput(float time_step);
	  void processKeyboardInput(std::string key);
	  void leftJoystickAxisMoved(float north_south, float east_west);
	  void rightJoystickAxisMoved(float north_south, float east_west);
	  void rightTriggerJoystick(float value);
	  void leftTriggerJoystick(float value);
	  void JoystickXPressed();
	  
	  void updateAudio(float time_step);
	  void buttonEvent();
	  void playAudio(int type, int value);
	  
	  void setScriptManager(ScriptManager* sm);
	  void setPhysicsManager(PhysicsManager* pm);
	  
	  void destroySceneNodeMotion(SceneNodeMotion* snm);
	  void setOrientation(SceneNodeMotion* scene_node_motion, double w, double x, double y, double z);
	  void setPosition(SceneNodeMotion* scene_node_motion, double x, double y, double z);
	  float* getOrientation(SceneNodeMotion* scene_node_motion);
	  float* getPosition(SceneNodeMotion* scene_node_motion);
	  
	  void createRigidBodies();
	  void createCollisionShape(std::string& child_name, std::string& shape_str, float*params, float mass, float* translation, float* rotation);
	  void stepPhysicsSimulation(float elapsed_time);
	  SceneNodeManual* createManualObject();
	  void drawLine(float* from, float* to, float* color, SceneNodeManual* snm);
	  void clearManualObject(SceneNodeManual* snm);
	  SceneNodeMotion* createSceneNodeMotion(std::string& scene_node_id);
	  void setGravity(float* gravity);
	  void applyImpulse(float north_south, float east_west, std::string& node_name, float* rel_pos);
	  
	  void initPhysics();
	  void createRigidBody(std::string id);
	  
	  void buttonEventCallback(std::string& combo_box_text, std::string& event_script);
	  void spawnElephant();
	  
	  /*
	  void parseSceneXML(const char* file_name);
	  void processTransformations(int transform_type, std::string& transform_str, Ogre::SceneNode* scene_node);
	  void processAnimationTransformations(int transform_type, std::string& transform_str, Ogre::TransformKeyFrame* key_frame);
	  void processChild(TiXmlElement* children_element, Ogre::SceneNode* parent_node);
	  void parseResourceXML(const char* file_name);
	  */
	  void processAnimations(float time_step);
	  //void buildAnimation(Ogre::SceneNode* animation_node, TiXmlElement* animation_element);
	  
	  
	  void addPathResource(std::string path, std::string level_name);
	  void addMeshResource(std::string mesh_file_name, std::string level_name);
};

#endif
