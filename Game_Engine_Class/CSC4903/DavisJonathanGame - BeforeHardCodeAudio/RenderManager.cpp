/*
// Jonathan Davis
// CSC 4903 - Game Engine Programming
// Dr. Mark Boshart
// Project #2 - Input Managers
// Due date: 3/20/2017 @ 11:00pm
*/
#include "RenderManager.h"
#include "GameManager.h"
#include "AnimationRenderListener.h"
#include "CSC2110/ListArrayIterator.h"
#include "Utils.h"//
#include "GameHeader.h"

#include <iostream>
using namespace std;

void RenderManager::updateAudio(float time_step)
{
	game_manager->updateAudio(time_step);
}

void RenderManager::processKeyboardInput(std::string key)
{
	if(key == "ESCAPE")
	{
		stopRendering();
	}/*
	else if(key == "A")
	{
		Ogre::SceneNode* scene_node = scene_manager->getSceneNode("Elephant Transform");
		Ogre::Quaternion current_quat = scene_node->getOrientation();
		Ogre::Degree prev_degree;
		Ogre::Vector3 axis;
		current_quat.ToAngleAxis(prev_degree, axis);
		
		Ogre::Degree curr_degree(prev_degree + Ogre::Degree(5));
		
		Ogre::Quaternion update(curr_degree, axis);
		scene_node->setOrientation(update);
	}
	else if(key == "D")
	{
		Ogre::SceneNode* scene_node = scene_manager->getSceneNode("Elephant Transform");
		Ogre::Quaternion current_quat = scene_node->getOrientation();
		Ogre::Degree prev_degree;
		Ogre::Vector3 axis;
		current_quat.ToAngleAxis(prev_degree, axis);
		
		Ogre::Degree curr_degree(prev_degree + Ogre::Degree(-5));
		
		Ogre::Quaternion update(curr_degree, axis);
		scene_node->setOrientation(update);
	}*/
}


void RenderManager::checkForInput(float time_step)
{
	game_manager->checkForInput(time_step);
}


void RenderManager::leftJoystickAxisMoved(float north_south, float east_west)
{
try
{
	Ogre::SceneNode* scene_node = scene_manager->getSceneNode("Rod Transform");
	
	Ogre::Vector3 pos = scene_node->getPosition();
	float x_pos = pos[0];
	float y_pos = pos[1];
	float z_pos = pos[2];

	
y_pos = y_pos + (-0.01 * north_south);

	
	scene_node->setPosition(x_pos,y_pos,z_pos);
	
	
	
	Ogre::Quaternion current_quat = scene_node->getOrientation();
	Ogre::Degree prev_degree;
	Ogre::Vector3 axis;
	current_quat.ToAngleAxis(prev_degree, axis);

	float curr_deg = prev_degree.valueDegrees() + 0.1*east_west;
	
	//causes the base to get stuck until direction is changed
	//this may further change the axis of rotation to the x-axis

if(curr_deg < 0) curr_deg = curr_deg + 360.0;
if(curr_deg > 360) curr_deg = curr_deg - 360.0;
	
	Ogre::Degree curr_degree(curr_deg);

	
	//sometimes the axis changes to the x-axis?
Ogre::Quaternion update(curr_degree, Ogre::Vector3(0,1,0)); //force to be the y-axis
//	Ogre::Quaternion update(curr_degree, axis);
	scene_node->setOrientation(update);
	
}
catch(Ogre::Exception& e)
{
	//ASSERT_CRITICAL(false, e.what());
}	
}


void RenderManager::rightJoystickAxisMoved(float north_south, float east_west)
{
try
{

	Ogre::SceneNode* scene_node = scene_manager->getSceneNode("Rod Transform");
	
	Ogre::Vector3 pos = scene_node->getPosition();
	float x_pos = pos[0];
	float y_pos = pos[1];
	float z_pos = pos[2];

	
x_pos = x_pos + (0.01 * east_west);

z_pos = z_pos + (0.01 * north_south);

	
	scene_node->setPosition(x_pos,y_pos,z_pos);
}
catch(Ogre::Exception& e)
{
	//ASSERT_CRITICAL(false, e.what());
}
}


void RenderManager::rightTriggerJoystick(float value)
{
try
{	
	Ogre::SceneNode* scene_node_L = scene_manager->getSceneNode("Arm_Left Transform");
	Ogre::SceneNode* scene_node_R = scene_manager->getSceneNode("Arm_Right Transform");
	
	Ogre::Quaternion current_quat_L = scene_node_L->getOrientation();
	Ogre::Quaternion current_quat_R = scene_node_R->getOrientation();
	Ogre::Degree prev_degree_L;
	Ogre::Degree prev_degree_R;
	Ogre::Vector3 axis_L;
	Ogre::Vector3 axis_R;
	current_quat_L.ToAngleAxis(prev_degree_L, axis_L);
	current_quat_R.ToAngleAxis(prev_degree_R, axis_R);
	

if (prev_degree_L.valueDegrees() < 36)
{

	float curr_deg_L = prev_degree_L.valueDegrees() + 0.1*value;
	float curr_deg_R = prev_degree_R.valueDegrees() + -0.1*value;
	
	//causes the base to get stuck until direction is changed
	//this may further change the axis of rotation to the x-axis

if(curr_deg_L < 0) curr_deg_L = curr_deg_L + 360.0;
if(curr_deg_R < 0) curr_deg_R = curr_deg_R + 360.0;
if(curr_deg_L > 360) curr_deg_L = curr_deg_L - 360.0;
if(curr_deg_R > 360) curr_deg_R = curr_deg_R - 360.0;
	
	Ogre::Degree curr_degree_L(curr_deg_L);
	Ogre::Degree curr_degree_R(curr_deg_R);

	
	//sometimes the axis changes to the x-axis?
Ogre::Quaternion update_L(curr_degree_L, Ogre::Vector3(0,0,1)); //force to be the z-axis
Ogre::Quaternion update_R(curr_degree_R, Ogre::Vector3(0,0,1)); //force to be the z-axis
//	Ogre::Quaternion update(curr_degree, axis);
	scene_node_L->setOrientation(update_L);
	scene_node_R->setOrientation(update_R);
}
}
catch(Ogre::Exception& e)
{
	//ASSERT_CRITICAL(false, e.what());
}
}


void RenderManager::leftTriggerJoystick(float value)
{
	
try
{
	Ogre::SceneNode* scene_node_L = scene_manager->getSceneNode("Arm_Left Transform");
	Ogre::SceneNode* scene_node_R = scene_manager->getSceneNode("Arm_Right Transform");
	
	Ogre::Quaternion current_quat_L = scene_node_L->getOrientation();
	Ogre::Quaternion current_quat_R = scene_node_R->getOrientation();
	Ogre::Degree prev_degree_L;
	Ogre::Degree prev_degree_R;
	Ogre::Vector3 axis_L;
	Ogre::Vector3 axis_R;
	current_quat_L.ToAngleAxis(prev_degree_L, axis_L);
	current_quat_R.ToAngleAxis(prev_degree_R, axis_R);

if (prev_degree_L.valueDegrees() > 1)
{
	float curr_deg_L = prev_degree_L.valueDegrees() + 0.1*value;
	float curr_deg_R = prev_degree_R.valueDegrees() + -0.1*value;
	
	//causes the base to get stuck until direction is changed
	//this may further change the axis of rotation to the x-axis

if(curr_deg_L < 0) curr_deg_L = curr_deg_L + 360.0;
if(curr_deg_R < 0) curr_deg_R = curr_deg_R + 360.0;
if(curr_deg_L > 360) curr_deg_L = curr_deg_L - 360.0;
if(curr_deg_R > 360) curr_deg_R = curr_deg_R - 360.0;
	
	Ogre::Degree curr_degree_L(curr_deg_L);
	Ogre::Degree curr_degree_R(curr_deg_R);

	
	//sometimes the axis changes to the x-axis?
Ogre::Quaternion update_L(curr_degree_L, Ogre::Vector3(0,0,1)); //force to be the z-axis
Ogre::Quaternion update_R(curr_degree_R, Ogre::Vector3(0,0,1)); //force to be the z-axis
//	Ogre::Quaternion update(curr_degree, axis);
	scene_node_L->setOrientation(update_L);
	scene_node_R->setOrientation(update_R);
}
}
catch(Ogre::Exception& e)
{
	//ASSERT_CRITICAL(false, e.what());
}
}

void RenderManager::JoystickXPressed()
{
try
{
	if(action == 0)
	{//cout << "First Press at " << action << endl;
	Ogre::SceneNode* sn_rod = scene_manager->getSceneNode("Rod Transform");
	Ogre::SceneNode* sn_ring = scene_manager->getSceneNode("Ring Transform");
	Ogre::SceneNode* root_scene_node = scene_manager->getRootSceneNode();
	
	root_scene_node->removeChild("Ring Transform");
	sn_rod->addChild(sn_ring);
	
	Ogre::SceneNode* scene_node = scene_manager->getSceneNode("Rod Transform");
	
	Ogre::Vector3 pos = sn_ring->getPosition();
	float x_pos = pos[0];
	float y_pos = pos[1];
	float z_pos = pos[2];

	
	y_pos = y_pos - 16 + 25;
	x_pos = x_pos + 10;
	
	sn_ring->setPosition(x_pos,y_pos,z_pos);
	
	action++;
	
	}
	else if(action == 1)
	{//cout << "Second press at " << action << endl;
	Ogre::SceneNode* sn_rod = scene_manager->getSceneNode("Rod Transform");
	Ogre::SceneNode* sn_ring = scene_manager->getSceneNode("Ring Transform");
	//Ogre::SceneNode* root_scene_node = scene_manager->getRootSceneNode();
	Ogre::SceneNode* sn_peg = scene_manager->getSceneNode("Peg Transform");
	
	sn_rod->removeChild("Ring Transform");
	sn_peg->addChild(sn_ring);
	

	
	Ogre::Vector3 pos = sn_ring->getPosition();
	float x_pos = pos[0];
	float y_pos = pos[1];
	float z_pos = pos[2];

	
	y_pos = y_pos + 16 - 25;
	x_pos = x_pos + 10;
	
	sn_ring->setPosition(x_pos,y_pos,z_pos);
	
	action++;
			
	}
	else if(action == 2)
	{
	Ogre::SceneNode* sn_ring = scene_manager->getSceneNode("Ring Transform");
	Ogre::SceneNode* root_scene_node = scene_manager->getRootSceneNode();
	Ogre::SceneNode* sn_peg = scene_manager->getSceneNode("Peg Transform");
	
	sn_peg->removeChild("Ring Transform");
	root_scene_node->addChild(sn_ring);
	

	
	Ogre::Vector3 pos = sn_ring->getPosition();
	float x_pos = pos[0];
	float y_pos = pos[1];
	float z_pos = pos[2];
	
	x_pos = x_pos - 20;
	
	sn_ring->setPosition(x_pos,y_pos,z_pos);
	
	action = 0;
				
	}
	else
	{//cout << "Increasing to " << action + 1 << endl;
		action = 0;
	}
}
catch(Ogre::Exception& e)
{
	//ASSERT_CRITICAL(false, e.what());
}
}








/*
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
*/


void RenderManager::attachEntity(std::string entity_name_str, std::string entity_mesh_str, std::string entity_material_str, std::string entity_scene_node_str)
{
	//game_manager->logComment(entity_name_str);
	Ogre::Entity* entity = scene_manager->createEntity(entity_name_str, entity_mesh_str);
	entity->setMaterialName(entity_material_str);
	Ogre::SceneNode* entity_scene_node = scene_manager->getSceneNode(entity_scene_node_str);
	entity_scene_node->attachObject(entity);
}

void RenderManager::createSceneNode(std::string child_name_str, std::string parent_name_str)
{
	//game_manager->logComment(child_name_str);
	Ogre::SceneNode* root_scene_node = scene_manager->getRootSceneNode();
	Ogre::SceneNode* child_scene_node = scene_manager->createSceneNode(child_name_str);
	if(parent_name_str == "root")
	{
		root_scene_node->addChild(child_scene_node);
	}
	else
	{
		Ogre::SceneNode* parent_scene_node = scene_manager->getSceneNode(parent_name_str);
		parent_scene_node->addChild(child_scene_node);
	}
}


void RenderManager::processScale(float* scale, std::string scene_node_name_str)
{
	Ogre::SceneNode* scale_scene_node = scene_manager->getSceneNode(scene_node_name_str);
	scale_scene_node->scale(scale[0], scale[1], scale[2]);
}


void RenderManager::processRotation(float* rotation, std::string scene_node_name_str)
{
	Ogre::SceneNode* rotation_scene_node = scene_manager->getSceneNode(scene_node_name_str);
	Ogre::Degree angle(rotation[0]);
	Ogre::Vector3 axis(rotation[1], rotation[2], rotation[3]);
	Ogre::Quaternion q(angle, axis);
	rotation_scene_node->rotate(q);
}


void RenderManager::processTranslation(float* translation, std::string scene_node_name_str)
{
	Ogre::SceneNode* translation_scene_node = scene_manager->getSceneNode(scene_node_name_str);
	translation_scene_node->translate(translation[0], translation[1], translation[2]);
}


void RenderManager::createLight(std::string light_name, float* light_color, float* light_direction)
{
	scene_manager->setAmbientLight(Ogre::ColourValue(.05,.05,.05));
	Ogre::Light* light = scene_manager->createLight(light_name);
	light->setType(Ogre::Light::LT_DIRECTIONAL);
	light->setDiffuseColour(light_color[0], light_color[1], light_color[2]);
	light->setDirection(Ogre::Vector3(light_direction[0], light_direction[1], light_direction[2]));
}


void RenderManager::createCamera(std::string camera_name, float* camera_position, float* camera_lookat, float* camera_clip)
{
	camera = scene_manager->createCamera(camera_name);
	//viewport = window->addViewport(camera,1,0,0,1,1);
	//viewport->setBackgroundColour(Ogre::ColourValue(0,0,0));
	viewport->setCamera(camera);
	
	float actual_width = Ogre::Real(viewport->getActualWidth());
	float actual_height = Ogre::Real(viewport->getActualHeight());
	float aspect_ratio = actual_width/actual_height;
	camera->setAspectRatio(aspect_ratio);
	camera->setPosition(Ogre::Vector3(camera_position[0], camera_position[1], camera_position[2]));
	camera->lookAt(Ogre::Vector3(camera_lookat[0], camera_lookat[1], camera_lookat[2]));
	camera->setNearClipDistance(camera_clip[0]);
	camera->setFarClipDistance(camera_clip[1]);
}


void RenderManager::unloadLevel(std::string level_name)
{
	//the scene must be unloaded before the resources are destroyed
	scene_manager->clearScene();
	viewport->setCamera(NULL);
	scene_manager->destroyAllCameras();
	
	//window->removeAllViewports();
	
	Ogre::ResourceGroupManager& rgm = Ogre::ResourceGroupManager::getSingleton();
	//rgm.clearResourceGroup(level_name);
	rgm.destroyResourceGroup(level_name);
}


void RenderManager::loadLevel(std::string level_name)
{
	Ogre::ResourceGroupManager& rgm = Ogre::ResourceGroupManager::getSingleton();
	rgm.initialiseResourceGroup(level_name);
	rgm.loadResourceGroup(level_name, true, true);
}











void RenderManager::addPathResource(std::string path, std::string level_name)
{
	Ogre::ResourceGroupManager& rgm = Ogre::ResourceGroupManager::getSingleton();
	rgm.addResourceLocation(path, "FileSystem", level_name);
}


void RenderManager::addMeshResource(std::string mesh_file_name, std::string level_name)
{
	Ogre::ResourceGroupManager& rgm = Ogre::ResourceGroupManager::getSingleton();
	rgm.declareResource(mesh_file_name, "Mesh", level_name);
}





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

/*
//this method will be called when an animation tag is encountered
void RenderManager::buildAnimation(Ogre::SceneNode* animation_node, TiXmlElement* animation_element)
{
	
	TiXmlElement* name_element = animation_element->FirstChildElement("name");
	std::string animation_name_str = name_element->GetText();
	
	TiXmlElement* time_element = animation_element->FirstChildElement("seconds");
	std::string animation_time_str = time_element->GetText();
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
	
}
*/


void RenderManager::init()
{
	try
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
	  
	  viewport = window->addViewport(NULL,1,0,0,1,1);
	  viewport->setBackgroundColour(Ogre::ColourValue(0,0,0));
	}
	
	catch(Ogre::Exception& e)
	{
		ASSERT_CRITICAL(false, e.what());
	}
	
	//game_manager->logComment("Ogre_Initialization Completed.");

}

RenderManager::RenderManager(GameManager* gm)
{
   game_manager = gm;
   init();
   
   animation_states = new ListArray<Ogre::AnimationState>();
   animation_render_listener = new AnimationRenderListener(this);
   root->addFrameListener(animation_render_listener);
   
   input_render_listener = new InputAudioRenderListener(this);
   root->addFrameListener(input_render_listener);
   
   action = 0;
}

RenderManager::~RenderManager()
{
	stopRendering();
	
	delete animation_render_listener;
	animation_render_listener = NULL;
	
	
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
	animation_render_listener->startRendering();
	input_render_listener->startRendering();
	//Will also need to set this for InputRenderListener later
	
	/*
	ListArrayIterator<RenderListener>* render_listeners_iter = render_listeners->iterator();
	while(render_listeners_iter->hasNext())
	{
		RenderListener* render_listener = render_listeners_iter->next();
		render_listener->startRendering();
	}
	delete render_listeners_iter;
	*/
   root->startRendering();
}

void RenderManager::stopRendering()
{
	animation_render_listener->stopRendering();
	input_render_listener->stopRendering();
	//Will also need to set this for InputRenderListener later
	
	/*
	ListArrayIterator<RenderListener>* render_listeners_iter = render_listeners->iterator();
	while(render_listeners_iter->hasNext())
	{
		RenderListener* render_listener = render_listeners_iter->next();
		render_listener->stopRendering();
	}
	delete render_listeners_iter;
	*/
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
void RenderManager::parseSceneXML(const char* file_name)
{

	
	TiXmlDocument doc(file_name);
	if(!doc.LoadFile()) return;
	
	TiXmlElement* scene_element = doc.RootElement();
	
	TiXmlElement* graph_element = (TiXmlElement*) scene_element->FirstChild("graph");
	TiXmlElement* children_element = (TiXmlElement*) graph_element->FirstChild("children");
	Ogre::SceneNode* scene_root_node = scene_manager->getRootSceneNode();
	
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
	
	delete[] values;
	
	if(children_element != NULL)
	{
		processChild(children_element, scene_root_node);
	}
	
}



void RenderManager::processTransformations(int transform_type, std::string& transform_str, Ogre::SceneNode* scene_node)
{
	float* transform_values = new float[4];
	Utils::parseFloats(transform_str, transform_values);
	
	if (transform_type == 1)
	{
		scene_node->translate(transform_values[0], transform_values[1], transform_values[2], Node::TS_WORLD);
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




void RenderManager::processChild(TiXmlElement* children_element, Ogre::SceneNode* parent_node) 
{
	TiXmlElement* child_element = (TiXmlElement*) children_element->FirstChild("child");
	
	while(child_element != NULL)
	{		
		TiXmlElement* name_element = (TiXmlElement*) child_element->FirstChild("name");
		std::string name_str = name_element->GetText();
//std::cout << "NAME:" << name_str.c_str() << std::endl;
		Ogre::SceneNode* scene_node = scene_manager->createSceneNode(name_str);
		parent_node->addChild(scene_node);
		
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
//std::cout << "ENTITY NAME:" << entity_name_str.c_str() << std::endl;
			TiXmlElement* entity_mesh_element = (TiXmlElement*) entity_element->FirstChild("mesh");
			std::string entity_mesh_str = entity_mesh_element->GetText();
//std::cout << "ENTITY MESH" << entity_mesh_str.c_str() << std::endl;
			TiXmlElement* entity_material_element = (TiXmlElement*) entity_element->FirstChild("material");
			std::string entity_material_str = entity_material_element->GetText();
//std::cout << "ENTITY MATERIAL" << entity_material_str.c_str() << std::endl;

		Ogre::Entity* entity = scene_manager->createEntity(entity_name_str, entity_mesh_str);
		entity->setMaterialName(entity_material_str);
		scene_node->attachObject(entity);
		}
		
		TiXmlElement* translate_element = (TiXmlElement*) child_element->FirstChild("translation");
		std::string translate_str = translate_element->GetText();
//std::cout << "TRANSLATE:" << translate_str.c_str() << std::endl;
		processTransformations(1, translate_str, scene_node);
		TiXmlElement* rotation_element = (TiXmlElement*) child_element->FirstChild("rotation");
		std::string rotation_str = rotation_element->GetText();
//std::cout << "ROTATION:" << rotation_str.c_str() << std::endl;
		processTransformations(2, rotation_str, scene_node);
		TiXmlElement* scale_element = (TiXmlElement*) child_element->FirstChild("scale");
		std::string scale_str = scale_element->GetText();
//std::cout << "SCALE:" << scale_str.c_str() << std::endl;
		processTransformations(3, scale_str, scene_node);
		TiXmlElement* grand_children_element = (TiXmlElement*) child_element->FirstChild("children");
		if(grand_children_element != NULL)
		{
			processChild(grand_children_element, scene_node);
		}

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
*/