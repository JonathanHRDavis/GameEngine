#include "RenderManager.h"
#include "GameManager.h"

#include <iostream>
using namespace std;

void RenderManager::init()
{
	root = NULL;
	window = NULL;
	scene_manager = NULL;

	root = OGRE_NEW Ogre::Root("","");  //resource/config files go here
	root->loadPlugin("RenderSystem_GL");  //prepares external dlls for later use

      Ogre::RenderSystem* render_system = root->getRenderSystemByName("OpenGL Rendering Subsystem"); //just returns a pointer to an uninialized render system
      if (!render_system)
      {
         //ASSERT_CRITICAL(false);
      }

      root->setRenderSystem(render_system);
      //manually set configuration options
      render_system->setConfigOption("Full Screen", "No");
      render_system->setConfigOption("Video Mode", "800 x 600 @ 32-bit colour");

      //initialize render system
      //automatically create the window and give it a title
      window = root->initialise(true, "Game Engine Programming");  

      scene_manager = root->createSceneManager(Ogre::ST_GENERIC, "Default Scene Manager");
      window->getCustomAttribute("WINDOW", &window_handle);

      //the Ogre viewport corresponds to a clipping region into which the contents of the camera view will be rendered in the window on each frame
      //by default, the size of the viewport matches the size of the window, but the viewport can be cropped
      //the camera represents a view into an existing scene and the viewport represents a region into which an existing camera will render its contents
      camera = scene_manager->createCamera("Camera");
	  camera_2 = scene_manager->createCamera("Camera_2");
	  
      //z-order, left, top, width, height (each viewpoint must have a different z-order)
	  //if viewpoints overlap, the z-order will determine what is displayed
      viewport = window->addViewport(camera, 1, 0, 0, 1, 0.5);  //assign a camera to a viewport (can have many cameras and viewports in a single window)
      viewport->setBackgroundColour(Ogre::ColourValue(0,0,0));
	  
	  viewport_2 = window->addViewport(camera_2, 2, 0, 0.5, 1, 0.5);
	  viewport_2->setBackgroundColour(Ogre::ColourValue(0, 0, 0));

      float actual_width = Ogre::Real(viewport->getActualWidth());
      float actual_height = Ogre::Real(viewport->getActualHeight());
      float aspect_ratio = actual_width/actual_height;
      camera->setAspectRatio(aspect_ratio);
	  
	  actual_width = Ogre::Real(viewport_2->getActualWidth());
      actual_height = Ogre::Real(viewport_2->getActualHeight());
      aspect_ratio = actual_width/actual_height;
      camera_2->setAspectRatio(aspect_ratio);
	  
	  buildSimpleScene();
}

RenderManager::RenderManager(GameManager* gm)
{
   game_manager = gm;
   init();
}

RenderManager::~RenderManager()
{
   game_manager = NULL;
   
   scene_manager->clearScene();
   scene_manager->destroyAllCameras();

   window->removeAllViewports();

   window->destroy();
   window = NULL;

   delete root;
   root = NULL;
}

size_t RenderManager::getRenderWindowHandle()
{
   return window_handle;
}

int RenderManager::getRenderWindowWidth()
{
   return viewport->getActualWidth();
}

int RenderManager::getRenderWindowHeight()
{
   return viewport->getActualHeight();
}

void RenderManager::startRendering()
{
   root->startRendering();
}

Ogre::RenderWindow* RenderManager::getRenderWindow()
{
   return window;
}

Ogre::SceneManager* RenderManager::getSceneManager()
{
   return scene_manager;
}


using namespace Ogre;

void RenderManager::buildSimpleScene()
{
	Ogre::ResourceGroupManager& rgm = Ogre::ResourceGroupManager::getSingleton();
	rgm.addResourceLocation("./assets/models", "FileSystem", "Level_1");
	rgm.addResourceLocation("./assets/materials/scripts", "FileSystem", "Level_1");
	rgm.declareResource("Torus.mesh", "Mesh", "Level_1");
	rgm.declareResource("Cone.mesh", "Mesh", "Level_1");
	rgm.initialiseResourceGroup("Level_1"); //will only load Level_1 items
	rgm.loadResourceGroup("Level_1", true, true);
	
	camera->setPosition(Ogre::Vector3(0,0,10));
	camera->lookAt(Ogre::Vector3(0,0,0));
	camera->setNearClipDistance(2);
	camera->setFarClipDistance(50);

	camera_2->setPosition(Ogre::Vector3(10,10,10));
	camera_2->lookAt(Ogre::Vector3(0,0,0));
	camera_2->setNearClipDistance(2);
	camera_2->setFarClipDistance(50);

	scene_manager->setAmbientLight(Ogre::ColourValue(.05, .05, .05));
	Ogre::Light* light = scene_manager->createLight("Light");
	light->setType(Ogre::Light::LT_DIRECTIONAL);
	
	light->setDiffuseColour(1.0, 1.0, 1.0);
	light->setDirection(Ogre::Vector3(0.0, 0.0, -1.0));

	Ogre::SceneNode* scene_root_node = scene_manager->getRootSceneNode();

	Ogre::SceneNode* torus_node = scene_manager->createSceneNode("Torus_Node");
	Ogre::SceneNode* cone_node = scene_manager->createSceneNode("Cone_Node");
	
	Ogre::Entity* torus_entity = scene_manager->createEntity("Torus_Entity", "Torus.mesh");
	Ogre::Entity* cone_entity = scene_manager->createEntity("Cone_Entity", "Cone.mesh");
	
	torus_entity->setMaterialName("Torus");
	cone_entity->setMaterialName("Cone");
	
	torus_node->attachObject(torus_entity);
	cone_node->attachObject(cone_entity);
	scene_root_node->addChild(torus_node);
	scene_root_node->addChild(cone_node);
	
	Vector3 vr(1,0,0);
	Quaternion q(Degree(60), vr);
	torus_node->rotate(q);
	cone_node->translate(0.0, 1.0, 0.0);
	//cone_node->translate(0.0, 2.0, 0.0);
	//cone_node->scale(1,1,1);
	
}
