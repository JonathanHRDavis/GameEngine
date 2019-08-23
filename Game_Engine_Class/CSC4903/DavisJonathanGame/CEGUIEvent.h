if !defined CEGUI_EVENT
#define CEGUI_EVENT

#include "CEGUI/CEGUI.h"
class GUIManager;

typedef void (GUIManager::*cegui_function_ptr)(const CEGUI::EventArgs&);

class CEGUIEvent
{
	private:
		cegui_function_ptr event_function_ptr;
		std::string event_key;
		std::string event_script;
		
	public:
		CEGUIEvent(std::string& event_key, cegui_function_ptr event_function_ptr);
		virtual ~CEGUIEvent();
		std::string* getEventKey();
		std::string& getEventScript();
		cegui_function_ptr getFunctionPtr();
		
		void setEventScript(std::string& script);
		
};

#endif