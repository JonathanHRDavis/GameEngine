#if !defined BULLET_SCENE_NODE_MOTION_STATE
#define BULLET_SCENE_NODE_MOTION_STATE

#include "btBulletDynamicsCommon.h"
#include <string>

struct SceneNodeMotion;
class RenderManager;

class BulletSceneNodeMotionState : public btMotionState 
{
   private:
      RenderManager* render_manager;
      SceneNodeMotion* scene_node_motion;
      btTransform bullet_transform;
	  std::string scene_node_id;

   public:
      BulletSceneNodeMotionState(std::string* scene_node_id, SceneNodeMotion* node, RenderManager* render_manager);
      virtual ~BulletSceneNodeMotionState();
	  
	  std::string* getSceneNodeID();

      //required btMotionState methods
      virtual void getWorldTransform(btTransform& worldTrans) const;
      virtual void setWorldTransform(const btTransform& worldTrans);

      void copyBulletTransformIntoNodeTransform();
      void copyNodeTransformIntoBulletTransform();
};

#endif
