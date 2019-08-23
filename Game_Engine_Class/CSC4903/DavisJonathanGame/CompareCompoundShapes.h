#if !defined COMPARE_COMPOUND_SHAPES_H
#define COMPARE_COMPOUND_SHAPES_H

#include "CSC2110/Comparator.h"
#include "GameHeader.h"

#include <string>

class CompoundShape;

class CompareCompoundShapes : public Comparator<CompoundShape, std::string>
{ 
   private:

   public:
      CompareCompoundShapes();
      virtual ~CompareCompoundShapes();

      virtual int compare(CompoundShape* compound_shape_1, CompoundShape* compound_shape_2);
	  virtual int compare(std::string* compound_shape_id, CompoundShape* compound_shape);
};

#endif
