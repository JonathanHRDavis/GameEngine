#if !defined GUI_MANAGER
#define GUI_MANAGER

#include "GameHeader.h"
#include "GameManager.h"

#include "CEGUI/CEGUI.h"
#include "CEGUI/RendererModules/Ogre/Renderer.h"

//#include "CSC2110/Comparator.h"
#include "CSC2110/TableAVL.h"

//typedef void (GUIManager::*cegui_function_ptr)(const CEGUI::EventArgs&)();

class RenderManager;
class CEGUIEvent;

class GUIManager
{
	private:
		RenderManager* render_manager;
		static CEGUI::OgreRenderer* getRenderer(); //singleton
		CEGUI::OgreRenderer* cegui_ogre_renderer;
		
		void createGUIContext();
		//void createGUIContext(std::string scheme, std::string font, std::string cursor, std::string tooltip, std::string layout)
		CEGUI::GUIContext* gui_context;
		CEGUI::Window* root_window;
		void destroyGUIContext();
		
	public:
	
		GUIManager(RenderManager* rm);
		virtual ~GUIManager();
		
		void loadLevel(std::string level_name);
		void unloadLevel();
		
		void keyPressed(std::string game_key);
		void mouseMoved(uint32 mouse_x, uint32 mouse_y, int mouse_rel_x, int mouse_rel_y);
		void mousePressed(uint32 mouse_x, uint32 mouse_y, uint32 mouse_button);
		
		void buttonEvent(const CEGUI::EventArgs& e);
		void buttonEvent2(const CEGUI::EventArgs& e);
		void editboxEvent(const CEGUI::EventArgs& e);

};

#endif
