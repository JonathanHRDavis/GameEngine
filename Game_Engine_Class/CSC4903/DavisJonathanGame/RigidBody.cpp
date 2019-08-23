#include "RigidBody.h"
#include <iostream>
using namespace std;

void RigidBody::setCustomVelocity(float time, float* a)
{
   a0[0] = a[0];
   a0[1] = a[1];
   a0[2] = a[2];

   a1[0] = a[3];
   a1[1] = a[4];
   a1[2] = a[5];

   end_time = time;
   current_time = 0;
   accel_flag = true;

   orig_gravity = rigid_body->getGravity();

   rigid_body->setGravity(btVector3(0,0,0));
   btVector3 vel = rigid_body->getLinearVelocity();
   vx = vel.x();
   vy = vel.y();
   vz = vel.z();
}

void RigidBody::incrementCustomVelocity(float time_step)
{
   if (!accel_flag) return;

   //accel at beginning of time interval
   float a_x0 = a0[0] + orig_gravity.x() + a1[0]*current_time;
   float a_y0 = a0[1] + orig_gravity.y() + a1[1]*current_time;
   float a_z0 = a0[2] + orig_gravity.z() + a1[2]*current_time;

   current_time += time_step;

   if (current_time  > end_time)
   {
      accel_flag = false;
      rigid_body->setGravity(orig_gravity);
      current_time = 0;
      end_time = 0;
      return;
   }

   //accel at end of time interval
   float a_x1 = a_x0 + a1[0]*time_step;
   float a_y1 = a_y0 + a1[1]*time_step;
   float a_z1 = a_z0 + a1[2]*time_step;

   //average acceleration over time step
   float ax = (a_x1 + a_x0)*0.5;
   float ay = (a_y1 + a_y0)*0.5;
   float az = (a_z1 + a_z0)*0.5;

   //integrate using the average acceleration over the time step
   vx = (ax * time_step) + vx;
   vy = (ay * time_step) + vy;
   vz = (az * time_step) + vz;

   rigid_body->setLinearVelocity(btVector3(vx, vy, vz));
   //rigid_body->setGravity(btVector3(ax, ay, az));
}

RigidBody::RigidBody(std::string id, btRigidBody* rb)
{
   rigid_body_id = id;
   rigid_body = rb;

   accel_flag = false;
   a0 = new float[3];
   a1 = new float[3];
   current_time = 0;
   end_time = 0;
}

RigidBody::~RigidBody()
{
   delete[] a0;
   delete[] a1;
   delete rigid_body;
}

std::string* RigidBody::getKey()
{
   return &rigid_body_id;
}

btRigidBody* RigidBody::getRigidBody()
{
   return rigid_body;
}
