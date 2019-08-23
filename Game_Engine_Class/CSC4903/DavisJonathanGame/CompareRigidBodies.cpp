#include "CompareRigidBodies.h"
#include "RigidBody.h"

CompareRigidBodies::CompareRigidBodies()
{}

CompareRigidBodies::~CompareRigidBodies()
{}

int CompareRigidBodies::compare(std::string* rigid_body_id, RigidBody* rigid_body)
{
   std::string* rigid_body_str = rigid_body->getKey();
   return rigid_body_id->compare(*rigid_body_str);
}

int CompareRigidBodies::compare(RigidBody* rigid_body_1, RigidBody* rigid_body_2)
{
   std::string* rigid_body_id = rigid_body_1->getKey();
   return compare(rigid_body_id, rigid_body_2);
}
