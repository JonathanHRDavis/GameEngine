#if !defined COMPOUND_SHAPE
#define COMPOUND_SHAPE

#include "btBulletDynamicsCommon.h"
#include <string>

class CompoundShape
{
    private:
        std::string compound_shape_id;
        btCompoundShape* shape;
        float mass;
		int num_coll_shapes;
        
    public:
        CompoundShape(std::string id, btCompoundShape* s);
        virtual ~CompoundShape();
        
        void addChildShape(btTransform* tr, btCollisionShape* cs, float m);
        
        float getMass();
        btCompoundShape* getCompoundShape();
        std::string* getKey();
		int numCollisionShapes();

};
#endif
