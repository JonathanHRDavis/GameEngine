#include "CompoundShape.h"

CompoundShape::CompoundShape(std::string id, btCompoundShape* s)
{
   compound_shape_id = id;
   shape = s;
   mass = 0;
   num_coll_shapes = 0;
}

CompoundShape::~CompoundShape()
{
   shape = 0;
}

float CompoundShape::getMass()
{
   return mass;
}

void CompoundShape::addChildShape(btTransform* bt_transform, btCollisionShape* cs, float m)
{
   shape->addChildShape(*bt_transform, cs);
   num_coll_shapes++;
   mass += m;
}

btCompoundShape* CompoundShape::getCompoundShape()
{
   return shape;
}

std::string* CompoundShape::getKey()
{
   return &compound_shape_id;
}

int CompoundShape::numCollisionShapes()
{
	return num_coll_shapes;
}
