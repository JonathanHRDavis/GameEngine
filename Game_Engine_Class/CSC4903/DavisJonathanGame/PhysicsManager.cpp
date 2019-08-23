#include "PhysicsManager.h"
#include "RenderManager.h"

#include "BulletSceneNodeMotionState.h"
#include "BulletDebugDrawer.h"

#include "RigidBody.h"
#include "CompoundShape.h"
#include "CompareRigidBodies.h"
#include "CompareCompoundShapes.h"

#include <iostream>


void PhysicsManager::setDebugDraw(bool debug_draw)
{
	dynamics_world->getDebugDrawer()->setDebugMode(debug_draw);
}

//step simulation assumes time values are seconds!
void PhysicsManager::stepPhysicsSimulation(float time_incr)
{
	btScalar time_step(time_incr);
	
	updateRigidBodies(); //copy scene node transforms into bullet physics t
	updateRigidBodyVelocity(time_incr);
	dynamics_world->stepSimulation(time_step, 10, .01667);
	dynamics_world->debugDrawWorld();
}

void PhysicsManager::updateRigidBodyVelocity(float time_incr)
{
	AVLTreeIterator<RigidBody>* rigid_body_iter = rigid_bodies->tableIterator();
	while(rigid_body_iter->hasNext())
	{
		RigidBody* rb = rigid_body_iter->next();
		rb->incrementCustomVelocity(time_incr);
	}
	delete rigid_body_iter;
}

void PhysicsManager::setGravity(float* g)
{
	//dynamics_world->setGravity(btVector3(0,0,0));
	dynamics_world->setGravity(btVector3(g[0], g[1], g[2]));
}

void PhysicsManager::getGravity(float* g)
{
	btVector3 gravity = dynamics_world->getGravity();
	g[0] = gravity.x();
	g[1] = gravity.y();
	g[2] = gravity.z();
}

void PhysicsManager::getLinearVelocity(std::string rigid_body_name, float* v)
{
	RigidBody* rb = rigid_bodies->tableRetrieve(&rigid_body_name);
	
	if(rb)
	{
		btRigidBody* bt_rb = rb->getRigidBody();
		btVector3 linear_velocity = bt_rb->getLinearVelocity();
		v[0] = linear_velocity.x();
		v[1] = linear_velocity.y();
		v[2] = linear_velocity.z();
	}	
}

void PhysicsManager::setRigidBodyVelocity(std::string rigid_body_name, float end_time, float* a)
{
	RigidBody* rb = rigid_bodies->tableRetrieve(&rigid_body_name);
	rb->setCustomVelocity(end_time, a);
}



void PhysicsManager::applyImpulse(std::string& rigid_body_name, float ns, float ew, float other, float* rel)
{
	//north-south affects x
	//east-west affects y 
	btVector3 impulse(ns, ew, other);
	//btVector3 rel_pos(0,0,0); //relative to the center of mass
	btVector3 rel_pos(rel[0],rel[1],rel[2]);
	RigidBody* rb_torque = rigid_bodies->tableRetrieve(&rigid_body_name);
	
	if(rb_torque)
	{
		btRigidBody* bt_rb_torque = rb_torque->getRigidBody();
		bt_rb_torque->applyImpulse(impulse, rel_pos);
	}
}




//impulse is mass times change in velocity
void PhysicsManager::applyTorqueImpulse(std::string rigid_body_name, float pitch, float yaw, float roll)
{
	RigidBody* rb_torque = rigid_bodies->tableRetrieve(&rigid_body_name);
	
	if(rb_torque)
	{
		btRigidBody* bt_rb_torque = rb_torque->getRigidBody();
		bt_rb_torque->applyTorqueImpulse(btVector3(pitch,yaw,roll)); //applies the torque at
	}
}

PhysicsManager::PhysicsManager(RenderManager* rm)
{
	
	CompareRigidBodies* compare_rigid_bodies = new CompareRigidBodies();
	rigid_bodies = new TableAVL<RigidBody, std::string>(compare_rigid_bodies);
	CompareCompoundShapes* compare_compound_shapes = new CompareCompoundShapes();
	compound_shapes = new TableAVL<CompoundShape, std::string>(compare_compound_shapes);
	
	render_manager = rm;
	init();
	
	BulletDebugDrawer* debug_drawer = new BulletDebugDrawer(rm);
	dynamics_world->setDebugDrawer(debug_drawer);
	dynamics_world->getDebugDrawer()->setDebugMode(1); //1 will display the collision box
	
	float* gravity = new float[3];
	gravity[0] = 0;
	gravity[1] = -10;
	gravity[2] = 0;
	setGravity(gravity);
	delete[] gravity;
}

PhysicsManager::~PhysicsManager()
{
	AVLTreeIterator<CompoundShape>* compound_shape_iter = compound_shapes->tableIterator();
	while(compound_shape_iter->hasNext())
	{
		CompoundShape* cs = compound_shape_iter->next();
		delete cs;
	}
	delete compound_shape_iter;
	delete compound_shapes;
	
	//cleanup in the reverse order of creation/initialization
	int num_collision_objects = dynamics_world->getNumCollisionObjects();
	btAlignedObjectArray<btCollisionObject*> rigid_bodies_array = dynamics_world->getCollisionWorld()->getCollisionObjectArray();
	
	for(int i = num_collision_objects - 1; i >= 0; i--)
	{
		btRigidBody* rigid_body = btRigidBody::upcast(rigid_bodies_array[i]);
		dynamics_world->removeCollisionObject(rigid_body);
		
		delete rigid_body->getMotionState();
		delete rigid_body->getCollisionShape();
		//delete rigid_body
	}
	
	AVLTreeIterator<RigidBody>* rigid_body_iter = rigid_bodies->tableIterator();
	while(rigid_body_iter->hasNext())
	{
		RigidBody* rgb = rigid_body_iter->next();
		delete rgb;
	}
	delete rigid_body_iter;
	delete rigid_bodies;
	
	BulletDebugDrawer* debug_drawer = (BulletDebugDrawer*) dynamics_world->getDebugDrawer();
	delete debug_drawer;
	
	delete dynamics_world;
	delete solver;
	delete dispatcher;
	delete collision_configuration;
	delete overlapping_pair_cache;
	
	render_manager = NULL;
}

void PhysicsManager::init()
{
	//btDbvtBroadphase is a good general purpose broadphase. You can also try out btAxis3Swe
	//detects when any two bounding regions intersect
	overlapping_pair_cache = new btDbvtBroadphase();
	
	//collision configuration manages the allocation of memory for collision objects and for colli
	collision_configuration = new btDefaultCollisionConfiguration();
	
	//use the default collision dispatcher (repository of collision detection algorithms). For paral
	dispatcher = new btCollisionDispatcher(collision_configuration);
	
	//the default constraint solver ensures all bodies in the scene are accurately affected by the
	solver = new btSequentialImpulseConstraintSolver();
	
	//encapsulates the world simulation
	//the dynamics world interface is how to set important world properties
	dynamics_world = new btDiscreteDynamicsWorld(dispatcher, overlapping_pair_cache, solver, collision_configuration);
}


void PhysicsManager::createCollisionShape(std::string& compound_shape_id, std::string& collision_shape, float* collision_shape_params, float mass, float* translation, float* rotation)
{
	btCollisionShape* col_shape = NULL;
	
	if(collision_shape == "sphere")
	{
		col_shape = new btSphereShape(btScalar(collision_shape_params[0]));
	
	}
	else if(collision_shape == "cylinder_x")
	{
		col_shape = new btCylinderShapeX(btVector3(collision_shape_params[0], collision_shape_params[1], collision_shape_params[2]));
	}
	else if(collision_shape == "cylinder_y")
	{
		col_shape = new btCylinderShape(btVector3(collision_shape_params[0], collision_shape_params[1], collision_shape_params[2]));
	}
	else if(collision_shape == "cylinder_z")
	{
		col_shape = new btCylinderShapeZ(btVector3(collision_shape_params[0], collision_shape_params[1], collision_shape_params[2]));
	}
	else
	{
		col_shape = new btBoxShape(btVector3(collision_shape_params[0], collision_shape_params[1], collision_shape_params[2]));
	}
	
	btTransform* tr = new btTransform();
	tr->setIdentity();
	
	tr->setOrigin(btVector3(translation[0],translation[1],translation[2]));
	tr->setRotation(btQuaternion(rotation[0], rotation[1], rotation[2], rotation[3]));
	
	CompoundShape* cs = compound_shapes->tableRetrieve(&compound_shape_id);
	
	if(cs == NULL)
	{
		compound_shapes->tableInsert(new CompoundShape(compound_shape_id, new btCompoundShape()));
		cs = compound_shapes->tableRetrieve(&compound_shape_id);
	}
	
	cs->addChildShape(tr, col_shape, mass);
}



void PhysicsManager::createRigidBodies()
{
	AVLTreeIterator<CompoundShape>* it = compound_shapes->tableIterator();
	
	btCompoundShape* com_shape = 0;

	while(it->hasNext())
	{
		CompoundShape* cs = it->next();
		std::string* node_id = cs->getKey();
		SceneNodeMotion* snm = render_manager->createSceneNodeMotion(*(cs->getKey()));
		
		BulletSceneNodeMotionState* ms = new BulletSceneNodeMotionState(node_id, snm, render_manager);
		
		btScalar* m = new btScalar(cs->getMass());
		
		com_shape = cs->getCompoundShape();
		
		btVector3* li = new btVector3(0,0,0);		
		
		com_shape->calculateLocalInertia(*m, *li);
		btRigidBody::btRigidBodyConstructionInfo* rbci = new btRigidBody::btRigidBodyConstructionInfo(*m, ms, com_shape, *li);
		btRigidBody* btrb = new btRigidBody(*rbci);
		
		btrb->setDamping(.1,.1);
		btrb->setActivationState(DISABLE_DEACTIVATION);
		
		RigidBody* rb = new RigidBody(*(cs->getKey()), btrb);
		rigid_bodies->tableInsert(rb);
		
		dynamics_world->addRigidBody(btrb);
	}
	delete it;
}

void PhysicsManager::updateRigidBodies()
{
	for(int i = 0; i < rigid_bodies->tableSize(); i++)
	{
		btCollisionObject* obj = dynamics_world->getCollisionObjectArray()[i];
		btRigidBody* body = btRigidBody::upcast(obj);
	
	
		if (body && body->getMotionState())
		{
			btTransform trans;
			body->getMotionState()->getWorldTransform(trans);
	
			void *userPointer = body->getUserPointer();
			if (userPointer) 
			{
				btQuaternion orientation = trans.getRotation();
				Ogre::SceneNode *sceneNode = static_cast<Ogre::SceneNode *>(userPointer);
				sceneNode->setPosition(Ogre::Vector3(trans.getOrigin().getX(), trans.getOrigin().getY(), trans.getOrigin().getZ()));
				sceneNode->setOrientation(Ogre::Quaternion(orientation.getW(), orientation.getX(), orientation.getY(), orientation.getZ()));
			}
		}
	}
}






void PhysicsManager::createRigidBody(std::string id)
{
		btCompoundShape* com_shape = 0;

		CompoundShape* cs = compound_shapes->tableRetrieve(&id);
		std::string* node_id = cs->getKey();
		SceneNodeMotion* snm = render_manager->createSceneNodeMotion(*(cs->getKey()));
		
		BulletSceneNodeMotionState* ms = new BulletSceneNodeMotionState(node_id, snm, render_manager);
		
		btScalar* m = new btScalar(cs->getMass());
		
		com_shape = cs->getCompoundShape();
		
		btVector3* li = new btVector3(0,0,0);		
		
		com_shape->calculateLocalInertia(*m, *li);
		btRigidBody::btRigidBodyConstructionInfo* rbci = new btRigidBody::btRigidBodyConstructionInfo(*m, ms, com_shape, *li);
		btRigidBody* btrb = new btRigidBody(*rbci);
		
		btrb->setDamping(.1,.1);
		btrb->setActivationState(DISABLE_DEACTIVATION);
		
		RigidBody* rb = new RigidBody(*(cs->getKey()), btrb);
		rigid_bodies->tableInsert(rb);
		
		dynamics_world->addRigidBody(btrb);
	
}
