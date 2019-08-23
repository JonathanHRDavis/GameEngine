AutomatedMakefile = am
CC = g++

INC_DIRS=-I./ -I$(OGRE_PATH)/OgreMain/include -I$(BOOST_PATH) -I$(TINYXML_PATH)/include -I$(GAME_PATH) -I$(OIS_PATH)/include
LIB_DIRS=-L./ -L$(OGRE_PATH)/build/lib -L$(BOOST_PATH)/stage/lib -L$(TINYXML_PATH)/lib -L$(OIS_PATH)/lib
LIBS=-lboost_system-mgw51-mt-1_63 -lOgreMain -ltinyxml -lois

COMPILE = $(CC) $(INC_DIRS) -c
LINK = $(CC) $(LIB_DIRS) -o

FILES =  InputRenderListener.o InputManager.o RenderListener.o PathResource.o MeshResource.o GameResource.o GameXML.o ResourceManager.o LogManager.o AnimationRenderListener.o Utils.o GameDriver.o GameManager.o RenderManager.o

all: Ogre

Ogre:	$(FILES)
	$(LINK) Game.exe $(FILES) $(LIBS)
	
InputRenderListener.o: InputRenderListener.h InputRenderListener.cpp
					   $(COMPILE) InputRenderListener.cpp
	
InputManager.o: 	InputManager.h InputManager.cpp
					$(COMPILE) InputManager.cpp
	
RenderListener.o:	RenderListener.h RenderListener.cpp
					$(COMPILE) RenderListener.cpp

PathResource.o:		PathResource.h PathResource.cpp
					$(COMPILE) PathResource.cpp

MeshResource.o:		MeshResource.h MeshResource.cpp
					$(COMPILE) MeshResource.cpp
					
GameResource.o:		GameResource.h GameResource.cpp
					$(COMPILE) GameResource.cpp
	
GameXML.o:			GameXML.h GameXML.cpp
					$(COMPILE) GameXML.cpp
	
ResourceManager.o:	ResourceManager.h ResourceManager.cpp
					$(COMPILE) ResourceManager.cpp
	
LogManager.o:		LogManager.h LogManager.cpp
					$(COMPILE) LogManager.cpp
	
AnimationRenderListener.o:	AnimationRenderListener.h AnimationRenderListener.cpp
							$(COMPILE) AnimationRenderListener.cpp

Utils.o:			Utils.h Utils.cpp
					$(COMPILE) Utils.cpp
	
GameManager.o:		GameManager.h GameManager.cpp
					$(COMPILE) GameManager.cpp
	
RenderManager.o:	RenderManager.h RenderManager.cpp
					$(COMPILE) RenderManager.cpp
	
GameDriver.o:		GameDriver.cpp
					$(COMPILE) GameDriver.cpp