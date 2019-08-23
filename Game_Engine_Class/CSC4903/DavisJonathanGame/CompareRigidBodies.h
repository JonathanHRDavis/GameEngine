#if !defined COMPARE_RIGID_BODIES_H
#define COMPARE_RIGID_BODIES_H

#include "CSC2110/Comparator.h"
#include "GameHeader.h"

#include <string>

class RigidBody;

class CompareRigidBodies : public Comparator<RigidBody, std::string>
{ 
   private:

   public:
      CompareRigidBodies();
      virtual ~CompareRigidBodies();

      virtual int compare(RigidBody* rigid_body_1, RigidBody* rigid_body_2);
	  virtual int compare(std::string* rigid_body_id, RigidBody* rigid_body);
};

#endif
