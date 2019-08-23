#if !defined BULLET_DEBUG_DRAWER
#define BULLET_DEBUG_DRAWER

#include "LinearMath/btIDebugDraw.h"
#include "btBulletDynamicsCommon.h"
#include <iostream>

struct SceneNodeManual;
class RenderManager;

class BulletDebugDrawer : public btIDebugDraw
{
   private:
      RenderManager* render_manager;
      SceneNodeManual* debug_node;
      int debug_mode;
      int count;
		
   public:
      //These are the only two methods we need to implement
      BulletDebugDrawer(RenderManager* rm);
      ~BulletDebugDrawer();
      virtual void drawLine(const btVector3& from, const btVector3& to, const btVector3& color);
		
      //These don't need to be implemented unless we want to draw more complex debug objects
      virtual void drawContactPoint(const btVector3& PointOnB,const btVector3& normalOnB,btScalar distance,int lifeTime,const btVector3& color);
      virtual void reportErrorWarning(const char* warningString);
      virtual void draw3dText(const btVector3& location,const char* text_string);
		
      //Set how to draw the debug info
      virtual void setDebugMode(int debug_mode);
		
      //Not absolutely necessary but implemented for convenience, tells the btDynamicsWorld how to draw the debug info
      virtual int getDebugMode() const;
};

#endif
