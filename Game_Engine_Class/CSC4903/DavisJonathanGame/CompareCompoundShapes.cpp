#include "CompareCompoundShapes.h"
#include "CompoundShape.h"

CompareCompoundShapes::CompareCompoundShapes()
{}

CompareCompoundShapes::~CompareCompoundShapes()
{}

int CompareCompoundShapes::compare(std::string* compound_shape_id, CompoundShape* compound_shape)
{
   std::string* compound_shape_str = compound_shape->getKey();
   return compound_shape_id->compare(*compound_shape_str);
}

int CompareCompoundShapes::compare(CompoundShape* compound_shape_1, CompoundShape* compound_shape_2)
{
   std::string* compound_shape_id = compound_shape_1->getKey();
   return compare(compound_shape_id, compound_shape_2);
}
