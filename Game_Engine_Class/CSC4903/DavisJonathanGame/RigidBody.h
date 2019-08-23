#if !defined RIGID_BODY
#define RIGID_BODY

#include "btBulletDynamicsCommon.h"
#include <string>

class RigidBody
{
   private:
      std::string rigid_body_id;
      btRigidBody* rigid_body;
      btVector3 orig_gravity;

      float* a0;  //acceleration parameters from secant root finding
      float* a1;
	  
	  float vx;
      float vy;
      float vz;
	  
      float current_time;
      float end_time;
      bool accel_flag;
	  
   public:
      RigidBody(std::string id, btRigidBody* rb);
      virtual ~RigidBody();

      void setCustomVelocity(float time, float* a);
      void incrementCustomVelocity(float time_incr);

      btRigidBody* getRigidBody();
      std::string* getKey();
};

#endif
