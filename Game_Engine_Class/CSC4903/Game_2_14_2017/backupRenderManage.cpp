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
	  
      //z-order, left, top, width, height (each viewpoint must have a different z-order)
	  //if viewpoints overlap, the z-order will determine what is displayed
      viewport = window->addViewport(camera, 1, 0, 0, 1, 1);  //assign a camera to a viewport (can have many cameras and viewports in a single window)
      viewport->setBackgroundColour(Ogre::ColourValue(0,0,0));
	  


      float actual_width = Ogre::Real(viewport->getActualWidth());
      float actual_height = Ogre::Real(viewport->getActualHeight());
      float aspect_ratio = actual_width/actual_height;
      camera->setAspectRatio(aspect_ratio);

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




void printQuaternion(Quaternion& q)
{
	std::cout << std::endl;
	std::cout << "(" << q.w << "," << q.x << "," << q.y << "," << q.z << ")" << std::endl;
	std::cout << std::endl;
}


/*
void RenderManager::parseSceneXML(consts char*)
{
	TiXmlDocument doc(file_name);
	if(!doc.LoadFile()) return;
	
	TiXmlElement* scene_element = doc.RootElemen
	
	TiXmlElement* graph_element = (TiXmlElement*)
	TiXmlElement* children_element = (TiXmlElemen)
	if(children_element != NULL)
	{
		processChild(children_element);
	}
}



void RenderManager::processTransformations(int t)
{
	float* transform_values = new float[4];
	Utils::parseFloats(transform_str, transform_value)
	std::cout << transform_str.c_str() << std::endl;
	std::cout << transform_values[0] << std::endl;
	std::cout << transform_values[1] << std::endl;
	std::cout << transform_values[2] << std::endl;
	
	if (transform_type == 1)
	{
		scene_node->translate(transform_values[0], transform_values[1], transform_va)
	}
	else if (transform_type == 2)
	{
		Degree angle(transform_values[0]);
		Vector3 axis(transform_values[1], transform_values[2], transform_values[3]);
		Quaternion q(angle, axis);
		scene_node->rotate(q, Node::TS_WORLD);
	}
	else
	{
		scene_node->scale(transform_values[0], transform_values[1], transform_value)
	}
	
	delete[] transform_values;
}
*/



































void RenderManager::processChild(TiXmlElement* children_element)
{
	TiXmlElement* child_element = (TiXmlElement*) children_element->FirstChild("child");
	
	while(child_element != NULL)
	{
		TiXmlElement* name_element = (TiXmlElement*) child_element->FirstChild("name");
		std::string name_str = name_element->GetText();
std::cout << name_str.c_str() << std::endl;
	
		TiXmlElement* entity_element = (TiXmlElement*) child_element->FirstChild("entity");
		if (entity_element != NULL)
		{
			TiXmlElement* entity_name_element = (TiXmlElement*) entity_element->FirstChild("name");
			std::string entity_name_str = entity_name_element->GetText();
std::cout << entity_name_str.c_str() << std::endl;
			TiXmlElement* entity_mesh_element = (TiXmlElement*) entity_element->FirstChild("mesh");
			std::string entity_mesh_str = entity_mesh_element->GetText();
std::cout << entity_mesh_str.c_str() << std::endl;
			TiXmlElement* entity_material_element = (TiXmlElement*) entity_element->FirstChild("material");
			std::string entity_material_str = entity_material_element->GetText();
std::cout << entity_material_str.c_str() << std::endl;
		}
		
		TiXmlElement* translate_element = (TiXmlElement*) child_element->FirstChild("translation");
		std::string translate_str = translate_element->GetText();
std::cout << translate_str.c_str() << std::endl;
		TiXmlElement* rotation_element = (TiXmlElement*) child_element->FirstChild("rotation");
		std::string rotation_str = rotation_element->GetText();
std::cout << rotation_str.c_str() << std::endl;
		TiXmlElement* scale_element = (TiXmlElement*) child_element->FirstChild("scale");
		std::string scale_str = scale_element->GetText();
std::cout << scale_str.c_str() << std::endl;
		TiXmlElement* grand_children_element = (TiXmlElement*) child_element->FirstChild();
		if(grand_children_element != NULL)
		{
			processChild(grand_children_element);
		}
		
		child_element = (TiXmlElement*) children_element->NextSibling();
		
	}
}


void RenderManager::parseResourceXML(const char* file_name)
{
	Ogre::ResourceGroupManager& rgm = Ogre::ResourceGroupManager::getSingleton();
	
	TiXmlDocument doc(file_name);
	if(!doc.LoadFile()) return;
	
	TiXmlElement* levels_element = doc.RootElement();
	TiXmlElement* level_element = (TiXmlElement*) levels_element->FirstChild("level");
	
	while(level_element != NULL)
	{
		TiXmlElement* name_element = (TiXmlElement*) level_element->FirstChild("name");
		std::string name_str = name_element->GetText();
		
		TiXmlElement* paths_element = (TiXmlElement*) level_element->FirstChild("paths");
		TiXmlElement* path_element = (TiXmlElement*) paths_element->FirstChild("path");
		
		while(path_element != NULL)
		{
			std::string path_str = path_element->GetText();
			rgm.addResourceLocation(path_str, "FileSystem", name_str);
			path_element = (TiXmlElement*) path_element->NextSibling();
		}
		
		TiXmlElement* meshes_element = (TiXmlElement*) level_element->FirstChild("meshes");
		TiXmlElement* mesh_element = (TiXmlElement*) meshes_element->FirstChild("mesh");
			
		while(mesh_element != NULL)
		{
			std::string mesh_str = mesh_element->GetText();
			rgm.declareResource(mesh_str, "Mesh", name_str);
			mesh_element = (TiXmlElement*) mesh_element->NextSibling();
		}
		
		level_element = (TiXmlElement*) levels_element->NextSibling();
		
		rgm.initialiseResourceGroup(name_str);
		rgm.loadResourceGroup(name_str,true,true);
	}
}


void RenderManager::buildSimpleScene()
{
	///*
	Ogre::ResourceGroupManager& rgm = Ogre::ResourceGroupManager::getSingleton();
	rgm.addResourceLocation("./assets/models", "FileSystem", "Level_1");
	rgm.addResourceLocation("./assets/materials/scripts", "FileSystem", "Level_1");
	//rgm.declareResource("Torus.mesh", "Mesh", "Level_1");
	//rgm.declareResource("Cone.mesh", "Mesh", "Level_1");
	rgm.declareResource("Sword.mesh", "Mesh", "Level_1");
	rgm.initialiseResourceGroup("Level_1"); //will only load Level_1 items
	rgm.loadResourceGroup("Level_1", true, true);
	
	
	camera->setPosition(Ogre::Vector3(0,0,10));
	camera->lookAt(Ogre::Vector3(0,0,0));
	camera->setNearClipDistance(2);
	camera->setFarClipDistance(50);
	

	scene_manager->setAmbientLight(Ogre::ColourValue(.05, .05, .05));
	Ogre::Light* light = scene_manager->createLight("Light");
	light->setType(Ogre::Light::LT_DIRECTIONAL);
	
	light->setDiffuseColour(1.0, 1.0, 1.0);
	light->setDirection(Ogre::Vector3(0.0, 0.0, -1.0));

	Ogre::Entity* sword_entity = scene_manager->createEntity("Sword_Entity", "Sword.mesh");
	sword_entity->setMaterialName("Sword");
	Ogre::SceneNode* scene_root_node = scene_manager->getRootSceneNode();
	Ogre::SceneNode* sword_transform_node = scene_manager->createSceneNode("Sword_Transform_Node");
	sword_transform_node->scale(.1,.1,.1);
	Ogre::SceneNode* sword_node = scene_manager->createSceneNode("Sword_Node");
	sword_node->attachObject(sword_entity);
	sword_transform_node->addChild(sword_node);
	scene_root_node->addChild(sword_transform_node);

	//Ogre::SceneNode* torus_node = scene_manager->createSceneNode("Torus_Node");
	//Ogre::SceneNode* cone_node = scene_manager->createSceneNode("Cone_Node");
	
	//Ogre::Entity* torus_entity = scene_manager->createEntity("Torus_Entity", "Torus.mesh");
	//Ogre::Entity* cone_entity = scene_manager->createEntity("Cone_Entity", "Cone.mesh");
	
	//torus_entity->setMaterialName("Torus");
	//cone_entity->setMaterialName("Cone");
	
	//torus_node->attachObject(torus_entity);
	//cone_node->attachObject(cone_entity);
	//scene_root_node->addChild(torus_node);
	//scene_root_node->addChild(cone_node);
	
	//Vector3 vr(1,0,0);
	//Quaternion q(Degree(60), vr);
	//torus_node->rotate(q);
	//cone_node->translate(0.0, 1.0, 0.0);
	//cone_node->translate(0.0, 2.0, 0.0);
	//cone_node->scale(1,1,1);
	//*/
	
	sword_node->attachObject(sword_entity);
	
	Ogre::SceneNode* sword_local_transform_node = scene_manager->createSceneNode("S")
	
	//define transformations that will place the sword in my preferred local coordinates
	sword_local_transform_node->scale(.2,.2,.2);
	
	//Node::TS_WORLD vs. Node::TS_LOCAL
	sword_local_transform_node->translate(0,3,0);
	Vector3 x_axis(1,0,0);
	Quaternion q_x(Degree(90), x_axis);
	sword_local_transform_node->rotate(q_x);
	
	sword_local_transform_node->rotate(q_x);
	
	sword_local_transform_node->addChild(sword_node);
	
	Ogre::SceneNode* sword_quaternion_node = scene_manager->createSceneNode("Swor")
	scene_root_node->addChild(sword_quaternion_node);
	sword_quaternion_node->addChild(sword_local_transform_node);
	
	/*
	Quaternion q0(1,0,0,0);
	sword_quaternion_node->rotate(q0); //no rotation
	*/
	
	Quaternion q1(Degree(90), Vector3(0,0,1));
	printQuaternion(q1);
	sword_quaternion_node->rotate(q1, Node::TS_WORLD);
	
	Quaternion q2(Degree(90), Vector3(1,0,0));
	printQuaternion(q2);
	sword_quaternion_node->rotate(q2, Node::TS_WORLD);
	
	/*
	Quaternion q3 = q2*q1;
	printQuaternion(q3);
	Quaternion q4 = q1*q2;
	printQuaternion(q4);
	*/
	
	/*
	sword_quaternion_node->rotate(q3);
	Quaternion q = sword_quaternion_node->getOrientation();
	*/
	/*
	Quaternion q(.8924, -.2391, .0990, .3696);
	sword_quaternion_node->rotate(q);
	setOrientation(getOrientation() * rotation) == rotate(rotation)
	sword_quaternion_node->setOrientation(q);
	*/
	/*
	Quaternion interpolate_1 = Quaternion::Slerp(0.0, q1, q2);
	printQuaternion(interpolate_1);
	
	Quaternion interpolate_2 = Quaternion::Slerp(1.0, q1, q2);
	printQuaternion(interpolate_2);
	
	Quaternion interpolate_0 = Quaternion::Slerp(0.0, q0, q3);
	printQuaternion(interpolate_0);
	
	Quaternion interpolate_3 = Quaternion:Slerp(1.0, q0, q3);
	printQuaternion(interpolate_3);
	*/
	
}
