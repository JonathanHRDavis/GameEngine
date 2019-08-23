#include "BulletDebugDrawer.h"
#include "RenderManager.h"

BulletDebugDrawer::BulletDebugDrawer(RenderManager* rm)
{
   render_manager = rm;
   debug_node = render_manager->createManualObject();

   count = 0;
}

BulletDebugDrawer::~BulletDebugDrawer()
{
   debug_node = 0;
}

void BulletDebugDrawer::drawLine(const btVector3& from_bt, const btVector3& to_bt, const btVector3& color_bt)
{
   float from[3];
   from[0] = from_bt.x();
   from[1] = from_bt.y();
   from[2] = from_bt.z();

   float to[3];
   to[0] = to_bt.x();
   to[1] = to_bt.y();
   to[2] = to_bt.z();

   float color[3];
   color[0] = 0.0f;
   color[1] = 1.0f;
   color[2] = 0.0f;
   
   render_manager->drawLine(from, to, color, debug_node);
 
   if (count == 2000)
   {
      render_manager->clearManualObject(debug_node);
      count = 0;
   }
	
   count++;
}

void BulletDebugDrawer::drawContactPoint(const btVector3& PointOnB, const btVector3& normalOnB, btScalar distance, int lifeTime, const btVector3& color)
{

}

void BulletDebugDrawer::reportErrorWarning(const char* warning_string)
{
   std::cout << warning_string << "\n";
}

void BulletDebugDrawer::draw3dText(const btVector3& location, const char* text_string)
{

}

void BulletDebugDrawer::setDebugMode(int debug_mode)
{
   this->debug_mode = debug_mode;
}

int BulletDebugDrawer::getDebugMode() const
{
   return (DebugDrawModes) debug_mode;
}
