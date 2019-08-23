#if !defined RENDER_MANAGER
#define RENDER_MANAGER

#include "Ogre.h"
#include "AnimationRenderListener.h"
#include "CSC2110/ListArray.h"
#include "tinyxml.h"

class GameManager;

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
	  AnimationRenderListener*  render_listener;

      void init();
      size_t window_handle;
      Ogre::Real time_since_last_frame;

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
	  
	  void parseSceneXML(const char* file_name);
	  void processTransformations(int transform_type, std::string& transform_str, Ogre::SceneNode* scene_node);
	  void processAnimationTransformations(int transform_type, std::string& transform_str, Ogre::TransformKeyFrame* key_frame);
	  //void processChild(TiXmlElement* children_element);
	  /*Bug?*/void processChild(TiXmlElement* children_element, Ogre::SceneNode* parent_node);
	  void parseResourceXML(const char* file_name);
	  
	  void processAnimations(float time_step);
	  void buildAnimation(Ogre::SceneNode* animation_node, TiXmlElement* animation_element);
	  
	  void buildSimpleScene();
};

#endif
