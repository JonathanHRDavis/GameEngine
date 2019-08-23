#include "BulletSceneNodeMotionState.h"
#include "RenderManager.h"

#include <iostream>
using namespace std;

std::string* BulletSceneNodeMotionState::getSceneNodeID()
{
	return &scene_node_id;
}

BulletSceneNodeMotionState::BulletSceneNodeMotionState(std::string* id, SceneNodeMotion* snm, RenderManager* rm) 
{
	scene_node_id = *id;
   render_manager = rm;
   scene_node_motion = snm;
   copyNodeTransformIntoBulletTransform();
}

BulletSceneNodeMotionState::~BulletSceneNodeMotionState() 
{
   render_manager->destroySceneNodeMotion(scene_node_motion);
   render_manager = NULL;
}

//copy the node's transform into the passed in parameter
//for rigid bodies, this is only called once, at construction
void BulletSceneNodeMotionState::getWorldTransform(btTransform& current_transform) const
{
   current_transform = bullet_transform;
}

//called every frame
void BulletSceneNodeMotionState::setWorldTransform(const btTransform& current_transform) 
{
   bullet_transform = current_transform;
   copyBulletTransformIntoNodeTransform();
}

//needed by simulation (every frame)
void BulletSceneNodeMotionState::copyBulletTransformIntoNodeTransform()
{
   btQuaternion rot = bullet_transform.getRotation();
   render_manager->setOrientation(scene_node_motion, rot.w(), rot.x(), rot.y(), rot.z());
   btVector3 pos = bullet_transform.getOrigin();
   render_manager->setPosition(scene_node_motion, pos.x(), pos.y(), pos.z());
}

//needed to set the initial bullet transform
void BulletSceneNodeMotionState::copyNodeTransformIntoBulletTransform()
{
   //x, y, z, w
   float* rot = render_manager->getOrientation(scene_node_motion);
   btQuaternion bt_quat(rot[0], rot[1], rot[2], rot[3]);

   float* pos = render_manager->getPosition(scene_node_motion);
   btVector3 bt_pos(pos[0], pos[1], pos[2]);

   bullet_transform.setRotation(bt_quat);
   bullet_transform.setOrigin(bt_pos);

   delete[] rot;
   delete[] pos;
}
