AutomatedMakefile = am
CC = g++

INC_DIRS=-I./ -I$(OGRE_PATH)/OgreMain/include -I$(BOOST_PATH) -I$(TINYXML_PATH)/include -I$(OIS_PATH)
LIB_DIRS=-L./ -L$(OGRE_PATH)/build/lib -L$(BOOST_PATH)/stage/lib -L$(TINYXML_PATH)/lib -L$(OIS_PATH)
LIBS=-lboost_system-mgw51-mt-1_63 -lOgreMain -ltinyxml

COMPILE = $(CC) $(INC_DIRS) -c
LINK = $(CC) $(LIB_DIRS) -o

FILES =  InputRenderListener.o InputManager.o GameXML.o GameResource.o PathResource.o MeshResource.o AnimationRenderListener.o Utils.o GameDriver.o GameManager.o RenderManager.o

all: Ogre

Ogre:	$(FILES)
	$(LINK) Game.exe $(FILES) $(LIBS)

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