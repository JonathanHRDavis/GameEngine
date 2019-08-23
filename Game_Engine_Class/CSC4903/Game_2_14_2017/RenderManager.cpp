
#include "RenderManager.h"
#include "GameManager.h"
#include "Utils.h"
#include <iostream>
using namespace std;

void RenderManager::processAnimations(float time_step)
{
	ListArrayIterator<Ogre::AnimationState>* anim_iter = animation_states->iterator();
	while(anim_iter->hasNext())
	{
		Ogre::AnimationState* animation_state = anim_iter->next();
		animation_state->addTime(time_step);
	}
	delete anim_iter;
}

//this method will be called when an animation tag is encountered
void RenderManager::buildAnimation(Ogre::SceneNode* animation_node, TiXmlElement* animation_element)
{
	
	TiXmlElement* name_element = animation_element->FirstChildElement("name");
	std::string animation_name_str = name_element->GetText();
	
	TiXmlElement* time_element = animation_element->FirstChildElement("seconds");
	std::string animation_time_str = time_element->GetText();
	//convert to float
	float seconds = std::strtof(animation_time_str.c_str(),0);

	Ogre::Animation* animation = scene_manager->createAnimation(animation_name_str, seconds);
	animation->setInterpolationMode(Ogre::Animation::IM_SPLINE);
	
	Ogre::NodeAnimationTrack* track = animation->createNodeTrack(1, animation_node);
	Ogre::TransformKeyFrame* key_frame;
	
	
	TiXmlElement* keyframes_element = animation_element->FirstChildElement("keyframes");
	TiXmlElement* keyframe_element = keyframes_element->FirstChildElement("keyframe");
	while(keyframe_element != NULL)
	{

		time_element = keyframe_element->FirstChildElement("time");
		std::string keyframe_str = time_element->GetText();


		float time = std::strtof(keyframe_str.c_str(),0);
		
		key_frame = track->createNodeKeyFrame(time);
		
		TiXmlElement* translate_element = keyframe_element->FirstChildElement("translation");
		std::string translate_str = translate_element->GetText();
		processAnimationTransformations(1, translate_str, key_frame);
		
		TiXmlElement* rotate_element = keyframe_element->FirstChildElement("rotation");
		std::string rotate_str = rotate_element->GetText();
		processAnimationTransformations(2, rotate_str, key_frame);
		
		keyframe_element = keyframe_element->NextSiblingElement("keyframe");
	}
	
	//the name of the animation state must match the name of the animation!
	Ogre::AnimationState* animation_state = scene_manager->createAnimationState(animation_name_str);
	animation_state->setEnabled(true);
	animation_state->setLoop(true);
	
	animation_states->add(animation_state);
	
	
	
	
	
	
/*	
	Ogre::Vector3 x_axis(1,0,0);
	
	//a 2 second animation
	Ogre::Animation* sword_animation = scene_manager->createAnimation("Sword Animation", 2.5);
	sword_animation->setInterpolationMode(Ogre::Animation::IM_SPLINE);
	
	//indicate that we want a scene node to be animated (affecting everything lower than it in the scene graph)
	Ogre::NodeAnimationTrack* sword_track = sword_animation->createNodeTrack(1, sword_animation_node);
	
	//specify keyframe for 1 = 0.0
	Ogre::TransformKeyFrame* sword_key = sword_track->createNodeKeyFrame(0);
	Ogre::Quaternion q1(Ogre::Degree(0), x_axis);
	sword_key->setRotation(q1);
	
	//specify keyframe for t = 0.5
	sword_key = sword_track->createNodeKeyFrame(0.5);
	Ogre::Quaternion q2(Ogre::Degree(45), x_axis);
	sword_key->setRotation(q2);
	
	sword_key = sword_track->createNodeKeyFrame(1.0);
	Ogre::Quaternion q3(Ogre::Degree(90), x_axis);
	sword_key->setRotation(q3);
	
	sword_key = sword_track->createNodeKeyFrame(1.5);
	sword_key->setRotation(q3);
	sword_key->setTranslate(Ogre::Vector3(0,0,3));
	
	sword_key = sword_track->createNodeKeyFrame(2.0);
	sword_key->setRotation(q3);
	sword_key->setTranslate(Ogre::Vector3(0,0,0));
	
	sword_key = sword_track->createNodeKeyFrame(2.5);
	sword_key->setRotation(q1);
	sword_key->setTranslate(Ogre::Vector3(0,0,0));
	
	//the name of the animation state must match the name of the animation!
	Ogre::AnimationState* sword_animation_state = scene_manager->createAnimationState("Sword Animation");
	sword_animation_state->setEnabled(true);
	sword_animation_state->setLoop(true);
	
	animation_states->add(sword_animation_state);
*/
}


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
//      camera = scene_manager->createCamera("Camera");
	  
      //z-order, left, top, width, height (each viewpoint must have a different z-order)
	  //if viewpoints overlap, the z-order will determine what is displayed
//      viewport = window->addViewport(camera, 1, 0, 0, 1, 1);  //assign a camera to a viewport (can have many cameras and viewports in a single window)
//      viewport->setBackgroundColour(Ogre::ColourValue(0,0,0));
	  


//      float actual_width = Ogre::Real(viewport->getActualWidth());
//      float actual_height = Ogre::Real(viewport->getActualHeight());
//      float aspect_ratio = actual_width/actual_height;
//      camera->setAspectRatio(aspect_ratio);

}

RenderManager::RenderManager(GameManager* gm)
{
   game_manager = gm;
   init();
   
   animation_states = new ListArray<Ogre::AnimationState>();
   render_listener = new AnimationRenderListener(this);
   root->addFrameListener(render_listener);
}

RenderManager::~RenderManager()
{
	stopRendering();
	
	delete render_listener;
	render_listener = NULL;
	
	//delete animation_states;
	
	
	ListArrayIterator<Ogre::AnimationState>* animation_iter = animation_states->iterator();
	while(animation_iter->hasNext())
	{
		Ogre::AnimationState* anim_state = animation_iter->next();
		delete anim_state;
	}
	delete animation_iter;
	delete animation_states;
	
	
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

void RenderManager::stopRendering()
{
	render_listener->stopRendering();
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




/*
void printQuaternion(Quaternion& q)
{
	std::cout << std::endl;
	std::cout << "(" << q.w << "," << q.x << "," << q.y << "," << q.z << ")" << std::endl;
	std::cout << std::endl;
}
*/


void RenderManager::parseSceneXML(const char* file_name)
{

	
	TiXmlDocument doc(file_name);
	if(!doc.LoadFile()) return;
	
	TiXmlElement* scene_element = doc.RootElement();
	
	TiXmlElement* graph_element = (TiXmlElement*) scene_element->FirstChild("graph");
	TiXmlElement* children_element = (TiXmlElement*) graph_element->FirstChild("children");
	/*Bug?*/Ogre::SceneNode* scene_root_node = scene_manager->getRootSceneNode();
	
	TiXmlElement* camera_element = scene_element->FirstChildElement("camera");
	TiXmlElement* camera_name_element = camera_element->FirstChildElement("name");
	std::string camera_name_str = camera_name_element->GetText();
	
	camera = scene_manager->createCamera(camera_name_str);
	viewport = window->addViewport(camera,1,0,0,1,1);
	viewport->setBackgroundColour(Ogre::ColourValue(0,0,0));
	
	float actual_width = Ogre::Real(viewport->getActualWidth());
	float actual_height = Ogre::Real(viewport->getActualHeight());
	float aspect_ratio = actual_width/actual_height;
	camera->setAspectRatio(aspect_ratio);
	
	//////////////////////////////////
	
	float* values = new float[3];
	
	TiXmlElement* position_element = camera_element->FirstChildElement("position");
	std::string position_str = position_element->GetText();
	Utils::parseFloats(position_str, values);
	camera->setPosition(Ogre::Vector3(values[0],values[1],values[2]));	
	
	TiXmlElement* look_element = camera_element->FirstChildElement("look-at");
	std::string look_str = look_element->GetText();
	Utils::parseFloats(look_str, values);
	camera->lookAt(Ogre::Vector3(values[0],values[1],values[2]));	
	
	TiXmlElement* clip_element = camera_element->FirstChildElement("clip");
	std::string clip_str = clip_element->GetText();
	Utils::parseFloats(clip_str, values);
	camera->setNearClipDistance(values[0]);
	camera->setFarClipDistance(values[1]);
	
	
/*	//////////////////////////////////
	camera->setPosition(Ogre::Vector3(0,0,30));						//position
	//camera->setPosition(Ogre::Vector3(-30,0,0));
	camera->lookAt(Ogre::Vector3(0,0,0));							//look-at
	camera->setNearClipDistance(2);									//clip (x,y)
	camera->setFarClipDistance(50);
*/	

	TiXmlElement* light_element = scene_element->FirstChildElement("light");
	TiXmlElement* light_name_element = light_element->FirstChildElement("name");
	std::string light_name_str = light_name_element->GetText();

	scene_manager->setAmbientLight(Ogre::ColourValue(.05, .05, .05));
	Ogre::Light* light = scene_manager->createLight(light_name_str);
	light->setType(Ogre::Light::LT_DIRECTIONAL);
	
	TiXmlElement* color_element = light_element->FirstChildElement("color");
	std::string color_str = color_element->GetText();
	Utils::parseFloats(color_str, values);
	light->setDiffuseColour(values[0],values[1],values[2]);
	
	TiXmlElement* direction_element = light_element->FirstChildElement("direction");
	std::string direction_str = direction_element->GetText();
	Utils::parseFloats(direction_str, values);
	light->setDirection(Ogre::Vector3(values[0], values[1], values[2]));
	
/*
	scene_manager->setAmbientLight(Ogre::ColourValue(.05, .05, .05));
	Ogre::Light* light = scene_manager->createLight("Light");		//name
	light->setType(Ogre::Light::LT_DIRECTIONAL);
	
	light->setDiffuseColour(1.0, 1.0, 1.0);							//color
	light->setDirection(Ogre::Vector3(0.0, 0.0, -1.0));				//direction
	//light->setDirection(Ogre::Vector3(1.0, 0.0, 0.0));
	//////////////////////////////////
*/
	
	delete[] values;
	
	if(children_element != NULL)
	{
		/*Bug?*/processChild(children_element, scene_root_node);
		//processChild(children_element);
	}
	
}







void RenderManager::processTransformations(int transform_type, std::string& transform_str, Ogre::SceneNode* scene_node)
{
	float* transform_values = new float[4];
	Utils::parseFloats(transform_str, transform_values);
	
	//std::cout << transform_str.c_str() << std::endl;
	//std::cout << transform_values[0] << std::endl;
	//std::cout << transform_values[1] << std::endl;
	//std::cout << transform_values[2] << std::endl;
	
	if (transform_type == 1)
	{
		scene_node->translate(transform_values[0], transform_values[1], transform_values[2]);//, Node::TS_WORLD);
	}
	else if (transform_type == 2)
	{
		Degree angle(transform_values[0]);
		Vector3 axis(transform_values[1], transform_values[2], transform_values[3]);
		Quaternion q(angle, axis);
		scene_node->rotate(q);//, Node::TS_WORLD);
	}
	else
	{
		scene_node->scale(transform_values[0], transform_values[1], transform_values[2]);
	}
	
	delete[] transform_values;
}

void RenderManager::processAnimationTransformations(int transform_type, std::string& transform_str, Ogre::TransformKeyFrame* key_frame)
{
	float* transform_values = new float[4];
	Utils::parseFloats(transform_str, transform_values);
	
	
	if (transform_type == 1)
	{
		key_frame->setTranslate(Ogre::Vector3(transform_values[0], transform_values[1], transform_values[2]));
	}
	else
	{
		Degree angle(transform_values[0]);
		Vector3 axis(transform_values[1], transform_values[2], transform_values[3]);
		Quaternion q(angle, axis);
		key_frame->setRotation(q);
	}
	
	delete[] transform_values;
}




/*Bug?*/void RenderManager::processChild(TiXmlElement* children_element, Ogre::SceneNode* parent_node) 
//void RenderManager::processChild(TiXmlElement* children_element)
{
	TiXmlElement* child_element = (TiXmlElement*) children_element->FirstChild("child");
	
	while(child_element != NULL)
	{		
		TiXmlElement* name_element = (TiXmlElement*) child_element->FirstChild("name");
		std::string name_str = name_element->GetText();
std::cout << "NAME:" << name_str.c_str() << std::endl;
/*Bug?*/Ogre::SceneNode* scene_node = scene_manager->createSceneNode(name_str);
/*Bug?*/parent_node->addChild(scene_node);
		
		TiXmlElement* animation_element = (TiXmlElement*) child_element->FirstChild("animation");
		if (animation_element != NULL)
		{
			buildAnimation(scene_node, animation_element);
		}
		
		TiXmlElement* entity_element = (TiXmlElement*) child_element->FirstChild("entity");
		if (entity_element != NULL)
		{
			TiXmlElement* entity_name_element = (TiXmlElement*) entity_element->FirstChild("name");
			std::string entity_name_str = entity_name_element->GetText();
std::cout << "ENTITY NAME:" << entity_name_str.c_str() << std::endl;
			TiXmlElement* entity_mesh_element = (TiXmlElement*) entity_element->FirstChild("mesh");
			std::string entity_mesh_str = entity_mesh_element->GetText();
std::cout << "ENTITY MESH" << entity_mesh_str.c_str() << std::endl;
			TiXmlElement* entity_material_element = (TiXmlElement*) entity_element->FirstChild("material");
			std::string entity_material_str = entity_material_element->GetText();
std::cout << "ENTITY MATERIAL" << entity_material_str.c_str() << std::endl;

/*Bug?*/ Ogre::Entity* entity = scene_manager->createEntity(entity_name_str, entity_mesh_str);
/*Bug?*/ entity->setMaterialName(entity_material_str);
/*Bug?*/ scene_node->attachObject(entity);
		}
		
		TiXmlElement* translate_element = (TiXmlElement*) child_element->FirstChild("translation");
		std::string translate_str = translate_element->GetText();
std::cout << "TRANSLATE:" << translate_str.c_str() << std::endl;
/*Bug?*/processTransformations(1, translate_str, scene_node);
		TiXmlElement* rotation_element = (TiXmlElement*) child_element->FirstChild("rotation");
		std::string rotation_str = rotation_element->GetText();
std::cout << "ROTATION:" << rotation_str.c_str() << std::endl;
/*Bug?*/processTransformations(2, rotation_str, scene_node);
		TiXmlElement* scale_element = (TiXmlElement*) child_element->FirstChild("scale");
		std::string scale_str = scale_element->GetText();
std::cout << "SCALE:" << scale_str.c_str() << std::endl;
/*Bug?*/processTransformations(3, scale_str, scene_node);
		TiXmlElement* grand_children_element = (TiXmlElement*) child_element->FirstChild("children");
		if(grand_children_element != NULL)
		{
			//processChild(grand_children_element);
			/*Bug*/processChild(grand_children_element, scene_node);
		}
		
		//child_element = (TiXmlElement*) children_element->NextSibling();
		child_element = (TiXmlElement*) child_element->NextSibling();
		
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
/*
	Ogre::ResourceGroupManager& rgm = Ogre::ResourceGroupManager::getSingleton();
	rgm.addResourceLocation("./assets/models", "FileSystem", "Level_1");
	rgm.addResourceLocation("./assets/materials/scripts", "FileSystem", "Level_1");
	rgm.declareResource("Sword.mesh", "Mesh", "Level_1");
	rgm.initialiseResourceGroup("Level_1"); //will only load Level_1 items
	rgm.loadResourceGroup("Level_1", true, true);
	
*/	
/*
	camera->setPosition(Ogre::Vector3(0,0,10));
	camera->lookAt(Ogre::Vector3(0,0,0));
	camera->setNearClipDistance(2);
	camera->setFarClipDistance(50);
	
	scene_manager->setAmbientLight(Ogre::ColourValue(.05, .05, .05));
	Ogre::Light* light = scene_manager->createLight("Light");
	light->setType(Ogre::Light::LT_DIRECTIONAL);
	
	light->setDiffuseColour(1.0, 1.0, 1.0);
	light->setDirection(Ogre::Vector3(0.0, 0.0, -1.0));

*/
/*
	Ogre::SceneNode* scene_root_node = scene_manager->getRootSceneNode();
	
	Ogre::SceneNode* sword_node = scene_manager->createSceneNode("Sword_Node");
	Ogre::Entity* sword_entity = scene_manager->createEntity("Sword_Entity", "Sword.mesh");
	sword_entity->setMaterialName("Sword");
	sword_node->attachObject(sword_entity);
	
	scene_root_node->addChild(sword_node);
	
	sword_node->scale(.2,.2,.2);
*/	

	/*
	
	Ogre::SceneNode* sword_local_transform_node = scene_manager->createSceneNode("Sword_Local_Transform_Node");
	
	//define transformations that will place the sword in my preferred local coordinates
	sword_local_transform_node->scale(.2,.2,.2);
	
	//Node::TS_WORLD vs. Node::TS_LOCAL
	sword_local_transform_node->translate(0,0,0);
	Vector3 x_axis(1,0,0);
	Quaternion q_x(Degree(90), x_axis);
	sword_local_transform_node->rotate(q_x);
	
	sword_local_transform_node->rotate(q_x);
	
	sword_local_transform_node->addChild(sword_node);
	
	Ogre::SceneNode* sword_quaternion_node = scene_manager->createSceneNode("Sword_Quaternion_Node");
	scene_root_node->addChild(sword_quaternion_node);
	sword_quaternion_node->addChild(sword_local_transform_node);
	
	*/
	



	
	
	/*
	Ogre::SceneNode* torus_node = scene_manager->createSceneNode("Torus_Node");
	Ogre::Entity* torus_entity = scene_manager->createEntity("Torus_Entity", "Torus.mesh");
	torus_entity->setMaterialName("Torus");
	torus_node->attachObject(torus_entity);
	scene_root_node->addChild(torus_node);

	Ogre::SceneNode* cone_node = scene_manager->createSceneNode("Cone_Node");
	Ogre::Entity* cone_entity = scene_manager->createEntity("Cone_Entity", "Cone.mesh");
	cone_entity->setMaterialName("Cone");
	cone_node->attachObject(cone_entity);
	scene_root_node->addChild(cone_node);
	*/
	
	

	
	/*
	Quaternion q0(1,0,0,0);
	sword_quaternion_node->rotate(q0); //no rotation
	*/
	
	//Quaternion q1(Degree(90), Vector3(0,0,1));
	//printQuaternion(q1);
	//sword_quaternion_node->rotate(q1, Node::TS_WORLD);
	
	//Quaternion q2(Degree(90), Vector3(1,0,0));
	//printQuaternion(q2);
	//sword_quaternion_node->rotate(q2, Node::TS_WORLD);
	
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
