#include "CompareCEGUIEvent.h"
#include "CEGUIEvent.h"

CompareCEGUIEvent::CompareCEGUIEvent()
{}

CompareCEGUIEvent::~CompareCEGUIEvent()
{}

int CompareCEGUIEvent::compare(std::string* event_key, CEGUIEvent* cegui_event)
{
	std::string* cegui_event_str = cegui_event->getEventKey();
	return event_key->compare(*cegui_event_str);
}

int CompareCEGUIEvent::compare(CEGUIEvent* cegui_event_1, CEGUIEvent* cegui_event_2)
{
	std::string* cegui_event_1_str = cegui_event_1->getEventKey();
	return compare(cegui_event_1_str, cegui_event_2);
}
