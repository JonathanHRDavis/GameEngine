AutomatedMakefile = am
CC = g++

INC_DIRS=-I./ -I$(OGRE_PATH)/OgreMain/include -I$(BOOST_PATH) -I$(TINYXML_PATH)/include -I$(GAME_PATH) -I$(OIS_PATH)/include -I$(BASS_PATH) -I$(CE_PATH)/bin
LIB_DIRS=-L./ -L$(OGRE_PATH)/build/lib -L$(BOOST_PATH)/stage/lib -L$(TINYXML_PATH)/lib -L$(OIS_PATH)/lib -L$(BASS_PATH) -L$(CE_PATH)/lib
LIBS=-lboost_system-mgw51-mt-1_63 -lOgreMain -ltinyxml -lois -lbass -lCEGUIBase-0

COMPILE = $(CC) $(INC_DIRS) -c
LINK = $(CC) $(LIB_DIRS) -o

FILES =  AudioManager.o AudioPlayer.o AudioResource.o InputAudioRenderListener.o InputManager.o RenderListener.o PathResource.o MeshResource.o GameResource.o GameXML.o ResourceManager.o LogManager.o AnimationRenderListener.o Utils.o GameDriver.o GameManager.o RenderManager.o

all: Ogre

Ogre:	$(FILES)
	$(LINK) Game.exe $(FILES) $(LIBS)

AudioManager.o:	AudioManager.h AudioManager.cpp
				$(COMPILE) AudioManager.cpp
	
AudioPlayer.o: AudioPlayer.h AudioPlayer.cpp
			   $(COMPILE) AudioPlayer.cpp

AudioResource.o: AudioResource.h AudioResource.cpp
				 $(COMPILE) AudioResource.cpp
	
InputAudioRenderListener.o: InputAudioRenderListener.h InputAudioRenderListener.cpp
					   $(COMPILE) InputAudioRenderListener.cpp
	
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