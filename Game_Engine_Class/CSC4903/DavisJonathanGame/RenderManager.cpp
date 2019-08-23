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

#include "ScriptManager.h"
#include "InputAudioRenderListener.h"
#include "PhysicsManager.h"

#include <iostream>
using namespace std;

struct SceneNodeMotion
{
	Ogre::SceneNode* scene_node_motion;
};

struct SceneNodeManual
{
	Ogre::SceneNode* scene_node_manual;
};



/*//4/28 edits
/*
void RenderManager::createRigidBodies()
{
	physics_manager->createRigidBodies();
}

void RenderManager::createCollisionShape(std::string& child_name, std::string& shape,str, float* params, float mass, )
{
	//convert degrees to radians
}
*/

void RenderManager::setGravity(float* gravity)
{
	physics_manager->setGravity(gravity);
}

void RenderManager::applyImpulse(float north_south, float east_west, std::string& node_name, float* rel_pos)
{
	physics_manager->applyImpulse(node_name, north_south, east_west, 0.0, rel_pos);
}

void RenderManager::createRigidBodies()
{
	physics_manager->createRigidBodies();
}

void RenderManager::createRigidBody(std::string id)
{
	physics_manager->createRigidBody(id);
}

void RenderManager::createCollisionShape(std::string& child_name, std::string& shape_str, float*params, float mass, float* translation, float* rotation)
{
	physics_manager->createCollisionShape(child_name, shape_str, params, mass, translation, rotation);
}

void RenderManager::stepPhysicsSimulation(float elapsed_time)
{
	physics_manager->stepPhysicsSimulation(elapsed_time);
}

void RenderManager::setOrientation(SceneNodeMotion* scene_node_motion, double w, double x, double y, double z)
{
	Ogre::SceneNode* scene_node = scene_node_motion->scene_node_motion;
	scene_node->setOrientation(w,x,y,z);
}

void RenderManager::setPosition(SceneNodeMotion* scene_node_motion, double x, double y, double z)
{
	Ogre::SceneNode* scene_node = scene_node_motion->scene_node_motion;
	scene_node->setPosition(x,y,z);
}

float* RenderManager::getOrientation(SceneNodeMotion* scene_node_motion)
{
	Ogre::SceneNode* scene_node = scene_node_motion->scene_node_motion;
	
	Ogre::Quaternion q = scene_node->getOrientation();
	Ogre::Real w = q.w;
	Ogre::Real x = q.x;
	Ogre::Real y = q.y;
	Ogre::Real z = q.z;
	
	float* rot = new float[4];
	rot[3] = w;
	rot[0] = x;
	rot[1] = y;
	rot[2] = z;
	return rot;
}

float* RenderManager::getPosition(SceneNodeMotion* scene_node_motion)
{
	Ogre::SceneNode* scene_node = scene_node_motion->scene_node_motion;
	
	Ogre::Vector3 pos = scene_node->getPosition();
	float* pos_ = new float[3];
	pos_[0] = pos.x;
	pos_[1] = pos.y;
	pos_[2] = pos.z;
	return pos_;
}

void RenderManager::clearManualObject(SceneNodeManual* snm)
{
	Ogre::SceneNode* scene_node_manual = snm->scene_node_manual;
	Ogre::ManualObject* manual_object = (Ogre::ManualObject*) scene_node_manual->getAttachedObject("Manual_Object");
	manual_object->clear();
}

SceneNodeManual* RenderManager::createManualObject()
{
	SceneNodeManual* scene_node_manual = new SceneNodeManual;
	
	Ogre::ManualObject* manual_object = scene_manager->createManualObject("Manual_Object");
	manual_object->setDynamic(true);
	static const char* mat_name = "OgreBulletCollisionsDebugDefault";
	Ogre::MaterialPtr manual_object_material = Ogre::MaterialManager::getSingleton().getDefaultSettings()->clone(mat_name);
	manual_object_material->setReceiveShadows(false);
	manual_object_material->getTechnique(0)->setLightingEnabled(false);
	Ogre::SceneNode* manual_object_node = scene_manager->getRootSceneNode()->createChildSceneNode();
	manual_object_node->attachObject(manual_object);
	
	scene_node_manual->scene_node_manual = manual_object_node;
	return scene_node_manual;
}

void RenderManager::drawLine(float* from, float* to, float* color, SceneNodeManual* snm)
{
	Ogre::SceneNode* scene_node_manual = snm->scene_node_manual;
	Ogre::ManualObject* manual_object = (Ogre::ManualObject*) scene_node_manual->getAttachedObject("Manual_Object");
	manual_object->begin("OgreBulletCollisionsDebugDefault", Ogre::RenderOperation::OT_LINE_LIST);
	manual_object->position(Ogre::Vector3(from[0],from[1],from[2]));
	manual_object->colour(Ogre::ColourValue(color[0],color[1],color[2]));
	manual_object->position(Ogre::Vector3(to[0],to[1],to[2]));
	manual_object->colour(Ogre::ColourValue(color[0],color[1],color[2]));
	manual_object->end();
}

void RenderManager::destroySceneNodeMotion(SceneNodeMotion* snm)
{
	free(snm);
}

SceneNodeMotion* RenderManager::createSceneNodeMotion(std::string& scene_node_id)
{
	SceneNodeMotion* scene_node_motion = (SceneNodeMotion*) malloc(sizeof(SceneNodeMotion));
	scene_node_motion->scene_node_motion = scene_manager->getSceneNode(scene_node_id);
	return scene_node_motion;
}



void RenderManager::buttonEventCallback(std::string& combo_box_text, std::string& event_script)
{
	game_manager->buttonEventCallback(combo_box_text, event_script);
}



void RenderManager::setScriptManager(ScriptManager* sm)
{
	script_manager = sm;
}

void RenderManager::setPhysicsManager(PhysicsManager* pm)
{
	physics_manager = pm;
}


void RenderManager::buttonEvent()
{
	game_manager->playSound(5);
}

void RenderManager::updateAudio(float time_step)
{
	game_manager->updateAudio(time_step);
}

void RenderManager::playAudio(int type, int value)
{
/*	
	std::string ten("10");
	std::string deg("45");
	script_manager->input(ten);
	script_manager->input(ten);
	script_manager->input(ten);
	script_manager->input(ten);
	script_manager->input(deg);
	std::string file_name = "./assets/lua_scripts/rotate_scripts.lua";
	std::string script_name = "pitch";
	
	//have to pass in the number of outputs
	script_manager->executeScript(file_name, script_name, 4);
	
	std::string output_str = script_manager->output(1);
	std::cout << output_str.c_str() << std::endl;
	
	script_manager->reset(); //empty out the script manager lists
*/	
	
	if(type == 0)
		game_manager->stopTheme();
	else if(type == 1)
	{
		game_manager->stopTheme();
		game_manager->playTheme(value);
	}
	else if(type == 2)
		game_manager->playSound(value);
}

void RenderManager::initPhysics()
{
		Ogre::SceneNode* scene_node = scene_manager->getSceneNode("Peg Transform");
		
		float* col_shape = new float[3];
		col_shape[0] = 4.75;
		col_shape[1] = 2.5;
		col_shape[2] = 10.0;
		
		float* trans = new float[3];
		trans[0] = 0.0;
		trans[1] = 17;
		trans[2] = 0.0;
		
		float* rot = new float[4];
		rot[0] = 1.0;
		rot[1] = 0.0;
		rot[2] = 0.0;
		rot[3] = 0.0;
		
		float mass = 1.0;//chnage to 1 later
		std::string id = "Rod Transform";
		std::string shape = "cylinder_x";
		createCollisionShape(id, shape, col_shape, mass, trans, rot);
		
		
		col_shape[0] = 1.0;
		col_shape[1] = 2.0;
		col_shape[2] = 5.0;
		trans[0] = 0.0;
		trans[1] = 20.5;
		trans[2] = 0.0;
		shape = "cylinder_y";
		createCollisionShape(id, shape, col_shape, mass, trans, rot);
		
//
		col_shape[0] = 0.5;
		col_shape[1] = 3.0;
		col_shape[2] = 1.0;
		trans[0] = 5.5;
		trans[1] = 13.5;
		trans[2] = 0.0;

		shape = "box";
		createCollisionShape(id, shape, col_shape, mass, trans, rot);

		trans[0] = -5.5;
		createCollisionShape(id, shape, col_shape, mass, trans, rot);
		
		col_shape[0] = 1.5;
		col_shape[1] = 0.5;
		col_shape[2] = 0.75;
		trans[0] = -4.5;
		trans[1] = 10.5;
		createCollisionShape(id, shape, col_shape, mass, trans, rot);
		trans[0] = 4.5;
		createCollisionShape(id, shape, col_shape, mass, trans, rot);
//
		
		Ogre::Plane plane(Ogre::Vector3::UNIT_Y, 0);
		Ogre::MeshPtr planePtr = Ogre::MeshManager::getSingleton().createPlane("ground", Ogre::ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane, 1500, 1500, 20, 20, true, 1, 5, 5, Ogre::Vector3::UNIT_Z);
		
		Ogre::Entity *entGround = scene_manager->createEntity("GroundEntity", "ground");
		entGround->setMaterialName("GroundEntity");
		Ogre::SceneNode *groundNode = scene_manager->getRootSceneNode()->createChildSceneNode("groundNode");
 
		groundNode->attachObject(entGround);
		
		col_shape[0] = 500.0;
		col_shape[1] = 0.0;
		col_shape[2] = 500.0;
		trans[0] = 0.0;
		trans[1] = 0.0;
		trans[2] = 0.0;
		mass = 0.0;
		id = "groundNode";
		shape = "box";
		createCollisionShape(id, shape, col_shape, mass, trans, rot);
		
		col_shape[0] = 0.75;
		col_shape[1] = 2.5;
		col_shape[2] = 0.75;
		trans[0] = 10.0;
		trans[1] = 3.0;
		trans[2] = 0.0;
		id = "Peg Transform";
		shape = "cylinder_y";
		createCollisionShape(id, shape, col_shape, mass, trans, rot);
		
		col_shape[0] = 2.0;
		col_shape[1] = 0.5;
		col_shape[2] = 0.0;
		trans[0] = -10.0;
		trans[1] = 1.0;
		trans[2] = -2.0;
		id = "Ring Transform";
		shape = "cylinder_x";
		mass = 0.5;
		createCollisionShape(id, shape, col_shape, mass, trans, rot);
		trans[2] = 2.0;
		createCollisionShape(id, shape, col_shape, mass, trans, rot);
		
		col_shape[0] = 0.5;
		col_shape[1] = 1.0;
		col_shape[2] = 2.0;
		trans[0] = -12.0;
		trans[1] = 1.0;
		trans[2] = 0.0;
		id = "Ring Transform";
		shape = "cylinder_z";
		createCollisionShape(id, shape, col_shape, mass, trans, rot);
		trans[0] = -8.1;
		createCollisionShape(id, shape, col_shape, mass, trans, rot);
		
		createRigidBodies();
		delete[] col_shape;
		delete[] trans;
		delete[] rot;
}

void RenderManager::spawnElephant()
{

	std::string elephant_str = "_Elephant";
	std::string e_str = "_E";

	char *intStr = new char[3];
	itoa(elephant_count,intStr,10);
	std::string entity_name_str = std::string(intStr);
	entity_name_str.append(elephant_str);
	std::string node_name_str = std::string(intStr);
	node_name_str.append(e_str);
	
	//std::string str = std::string(intStr);
	
	//std::cout << entity_name_str << std::endl;
	//std::cout << node_name_str << std::endl;
	

	Ogre::Entity* entity = scene_manager->createEntity(entity_name_str, "E_Full.mesh");
	entity->setMaterialName("E_Full");
	Ogre::SceneNode *eNode = scene_manager->getRootSceneNode()->createChildSceneNode(node_name_str);
	eNode->attachObject(entity);
	
	eNode->translate(0.0, 40.0, 0.0);
	eNode->scale(0.5, 0.5, 0.5);
	
		float* col_shape = new float[3];
		col_shape[0] = 3.0;
		col_shape[1] = 2.0;
		col_shape[2] = 2.0;
		
		float* trans = new float[3];
		trans[0] = 0.5;
		trans[1] = 0.0;
		trans[2] = 0.0;
		
		float* rot = new float[4];
		rot[0] = 1.0;
		rot[1] = 0.0;
		rot[2] = 0.0;
		rot[3] = 0.0;
				
		
		float mass = 1.0;//chnage to 1 later
		std::string shape = "sphere";
		std::string id = node_name_str;
		createCollisionShape(id, shape, col_shape, mass, trans, rot);
		
	createRigidBody(id);
	elephant_count++;
	delete[] intStr;
}

void RenderManager::processKeyboardInput(std::string key)
{
	float* rel = new float[3];
	rel[0] = 0;
	rel[1] = 0;
	rel[2] = 0;
	
	if(key == "ESCAPE")
	{
		stopRendering();
	}
	else if(key == "A")
	{
		string rbn = "Rod Transform";
		physics_manager->applyImpulse(rbn, -2.0, 0.0, 0.0, rel);
	}
	else if(key == "S")
	{
		string rbn = "Rod Transform";
		physics_manager->applyImpulse(rbn, 0.0, 0.0, 2.0, rel);
	}
	else if(key == "D")
	{
		string rbn = "Rod Transform";
		physics_manager->applyImpulse(rbn, 2.0, 0.0, 0.0, rel);
	}
	else if(key == "W")
	{
		string rbn = "Rod Transform";
		physics_manager->applyImpulse(rbn, 0.0, 0.0, -2.0, rel);
	}
	else if(key == "SPACE")
	{
		string rbn = "Rod Transform";
		physics_manager->applyImpulse(rbn, 0.0, 2.0, 0.0, rel);
	}
	//else if(key == "W")
	{
		
	}
	delete[] rel;
	/*
	else if(key == "A")
	{
		Ogre::SceneNode* scene_node = scene_manager->getSceneNode("Peg Transform");
		
		float* col_shape = new float[3];
		col_shape[0] = 5.0;
		col_shape[1] = 5.0;
		col_shape[2] = 5.0;
		
		float* trans = new float[3];
		trans[0] = 0.0;
		trans[1] = 17.5;
		trans[2] = 0.0;
		
		float* rot = new float[3];
		rot[0] = 0.0;
		rot[1] = 0.0;
		rot[2] = 0.0;
		
		float mass = 1.0;
		std::string id = "Rod Transform";
		std::string shape = "sphere";
		createCollisionShape(id, shape, col_shape, mass, trans, rot);
		
		//*
		Ogre::Plane plane(Ogre::Vector3::UNIT_Y, 0);
		Ogre::MeshPtr planePtr = Ogre::MeshManager::getSingleton().createPlane("ground", Ogre::ResourceGroupManager::DEFAULT_RESOURCE_GROUP_NAME, plane, 1500, 1500, 20, 20, true, 1, 5, 5, Ogre::Vector3::UNIT_Z);
		
		Ogre::Entity *entGround = scene_manager->createEntity("GroundEntity", "ground");
		Ogre::SceneNode *groundNode = scene_manager->getRootSceneNode()->createChildSceneNode("groundNode");
 
		groundNode->attachObject(entGround);
		//*
		createRigidBodies();
		
	}*/
	
	
	/*
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
	float* rel = new float[3];
	rel[0] = 0;
	rel[1] = 0;
	rel[2] = 0;

	string rbn = "Rod Transform";
	physics_manager->applyImpulse(rbn, east_west*2, 0.0, north_south*2, rel);
	delete[] rel;
/*
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
*/	
}


void RenderManager::rightJoystickAxisMoved(float north_south, float east_west)
{
	float* rel = new float[3];
	string rbn = "Rod Transform";
	
	if(north_south > 0.5)
	{
		rel[0] = 0;
		rel[1] = 100;
		rel[2] = 0;
		
		physics_manager->applyImpulse(rbn, 0.0, 0.0, 0.1*north_south, rel);
	}
	
	if(north_south < -0.5)
	{
		rel[0] = 0;
		rel[1] = 100;
		rel[2] = 0;
		
		physics_manager->applyImpulse(rbn, 0.0, 0.0, 0.1*north_south, rel);		
	}
	
	if(east_west > 0.5)
	{
		rel[0] = 0;
		rel[1] = 0;
		rel[2] = -100;
		
		physics_manager->applyImpulse(rbn, 0.1*east_west, 0.0, 0.0, rel);		
	}
	
	if(east_west < -0.5)
	{
		rel[0] = 0;
		rel[1] = 0;
		rel[2] = -100;
		
		physics_manager->applyImpulse(rbn, 0.1*east_west, 0.0, 0.0, rel);		
	}
	
	delete[] rel;
/*	
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
*/
}


void RenderManager::rightTriggerJoystick(float value)
{
	float* rel = new float[3];
	rel[0] = 0;
	rel[1] = 0;
	rel[2] = 0;
	
	string rbn = "Rod Transform";
	physics_manager->applyImpulse(rbn, 0.0, 2*value, 0.0, rel);
	delete[] rel;
/*	
try
{	
	if(play_noise)
	{
		game_manager->playSound(1);
		play_noise = false;
	}

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
*/
}


void RenderManager::leftTriggerJoystick(float value)
{
	float* rel = new float[3];
	rel[0] = 0;
	rel[1] = 0;
	rel[2] = 0;
	
	string rbn = "Rod Transform";
	physics_manager->applyImpulse(rbn, 0.0, 2*value, 0.0, rel);
	delete[] rel;
/*	
try
{
	if(!play_noise)
	{
		game_manager->playSound(1);
		play_noise = true;
	}
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
*/
}

void RenderManager::JoystickXPressed()
{
	buttonEvent();
	float* rel = new float[3];
	rel[0] = 0;
	rel[1] = 0;
	rel[2] = 0;
	string rbn = "Ring Transform";
	physics_manager->applyImpulse(rbn, 0.0, 20.0, 0.0, rel);
/*
try
{
	if(action == 0)
	{
	game_manager->playSound(3);
	//cout << "First Press at " << action << endl;
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

	
	y_pos = y_pos - 16 + 26;
	x_pos = x_pos + 10;
	
	sn_ring->setPosition(x_pos,y_pos,z_pos);
	
	action++;
	
	}
	else if(action == 1)
	{
	game_manager->playSound(3);
	game_manager->stopTheme();
	game_manager->playTheme(2);
	//cout << "Second press at " << action << endl;
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

	
	y_pos = y_pos + 16 - 26;
	x_pos = x_pos + 10;
	
	sn_ring->setPosition(x_pos,y_pos,z_pos);
	
	action++;
			
	}
	else if(action == 2)
	{
	game_manager->stopTheme();
	game_manager->playTheme(1);
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
*/
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
	  viewport->setBackgroundColour(Ogre::ColourValue(.5,.5,.5));
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
   
   play_noise = true;
   elephant_count = 0;
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
   script_manager = NULL;
   
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