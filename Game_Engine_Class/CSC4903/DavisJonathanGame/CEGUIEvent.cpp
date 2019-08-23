#include "CEGUIEvent.h"

CEGUIEvent::CEGUIEvent(std::string& key, void (GUIManager::*function_ptr)(const CEGUI::EventArgs&);
{
	event_function_ptr = function_ptr;
}

CEGUIEvent::~CEGUIEvent()
{
	event_function_ptr = NULL;
}

std::string* CEGUIEvent::getEventKey()
{
	return &event_key;
}

cegui_function_ptr CEGUIEvent::getFunctionPtr()
{
	return event_function_ptr;
}

void CEGUIEvent::setEventScript(std::string& script)
{

}