#include "GUIManager.h"
#include "RenderManager.h"
//#include "CEGUIEvent.h"
//#include "CompareCEGUIEvent.h"
#include "CSC2110/AVLTreeIterator.h"

GUIManager::GUIManager(RenderManager* rm)
{
	render_manager = rm;
	root_window = NULL;
	gui_context = NULL;
	
	cegui_ogre_renderer = getRenderer();
	//createGUIContext();
	/*
	comparator = new CompareCEGUIEvent();
	event_table = new TableAVL<CEGUIEvent, std::string>(comparator);
	
	place the function pointer/string identifier enttry in the event table
	cegui_function_ptr play_combobox_sample_func_ptr = %GUIManager::playComboboxSample;
	CEGUIEvent* cegui_event = new CEGUIEvent("playComboboxSample", play_combobox_sample_func_ptr);
	event_table->tableInsert(cegui_event);
	
	cegui_function_ptr do_nothing_func_ptr = &GUIManager::doNothing;
	cegui_event = new CEGUIEvent("doNothing", do_nothing_func_ptr);
	event_table->tableInsert(cegui_event);
	*/
}

GUIManager::~GUIManager()
{
	cegui_ogre_renderer = NULL;
}

/*
void GUIManager::processEvent(std::string type_str, std::string name_str, std::string procedure_str)
{
	CEGUIEvent* cegui_event = event_table->tableRetrieve(&procedure_str);
	cegui_function_ptr event_function_ptr = cegui_event->getFunctionPtr();
	
	if(type_str == "button")
	{
		CEGUI::PushButton* push_button = static_cast<CEGUI::PushButton*>(root_window->getChild(name_str));
		push_button->subscribeEvent(CEGUI::PushButton::EventCLicked, CEGUI::Event::Subscriber(event_function_ptr, this));
	}
}
*/

void GUIManager::buttonEvent2(const CEGUI::EventArgs& e)
{
	std::string script_name = "./assets/lua_scripts/button_event2.lua";
	std::string param_str = "1";
	render_manager->buttonEventCallback(param_str, script_name);
	render_manager->playAudio(2,2);
}

void GUIManager::buttonEvent(const CEGUI::EventArgs& e)
{
	//render_manager->buttonEvent();
	//std::cout << "Button Clicked!!!" << std::endl;
	
	CEGUI::Editbox* edit_box = static_cast<CEGUI::Editbox*>(root_window->getChild("FrameWindow/Editbox"));
	CEGUI::String edit_box_text = edit_box->getText();
	CEGUI::Combobox* combo_box = static_cast<CEGUI::Combobox*>(root_window->getChild("FrameWindow/Combobox"));
	CEGUI::String combo_box_text = combo_box->getText();
	
	bool playBoing = false;
	
	if(!combo_box_text.compare("THEME"))
	{
		if((!edit_box_text.compare("1")) || (!edit_box_text.compare("ONE")))
		{
			render_manager->playAudio(1,1);
		}
		else if((!edit_box_text.compare("2")) || (!edit_box_text.compare("TWO")))
		{
			render_manager->playAudio(1,2);
		}
		else if((!edit_box_text.compare("3")) || (!edit_box_text.compare("THREE")))
		{
			render_manager->playAudio(1,3);
		}
		else if((!edit_box_text.compare("4")) || (!edit_box_text.compare("FOUR")))
		{
			render_manager->playAudio(1,4);
		}
		else if(!edit_box_text.compare("NONE"))
		{
			//render_manager->playAudio(0,0);
			std::string script_name = "./assets/lua_scripts/stop_theme.lua";
			std::string param_str = "1";
			render_manager->buttonEventCallback(param_str, script_name);
		}
		else
			playBoing = true;
	}
	else if(!combo_box_text.compare("SOUND"))
	{
		if((!edit_box_text.compare("1")) || (!edit_box_text.compare("ONE")))
		{
			render_manager->playAudio(2,1);
		}		
		else if((!edit_box_text.compare("2")) || (!edit_box_text.compare("TWO")))
		{
			render_manager->playAudio(2,2);
		}
		else if((!edit_box_text.compare("3")) || (!edit_box_text.compare("THREE")))
		{
			render_manager->playAudio(2,3);
		}
		else if(!edit_box_text.compare("SEGA") || (!edit_box_text.compare("EASTER EGG")))
		{
			render_manager->playAudio(2,4);
		}
		else
			playBoing = true;
	}
	else
	{
		std::string script_name = "./assets/lua_scripts/button_event1.lua";
		std::string param_str = "1";
		render_manager->buttonEventCallback(param_str, script_name);
		//render_manager->buttonEvent();
	}
	
	if(playBoing)
	{		
		std::string script_name = "./assets/lua_scripts/button_event1.lua";
		std::string param_str = "1";
		render_manager->buttonEventCallback(param_str, script_name);
		//render_manager->buttonEvent();
	}
}

void GUIManager::editboxEvent(const CEGUI::EventArgs& e)
{

}

void GUIManager::keyPressed(std::string game_key)
{
	if(game_key == "ENTER")
	{
		gui_context->injectKeyDown(CEGUI::Key::Return);
		gui_context->injectKeyUp(CEGUI::Key::Return);
	}
	else if(game_key == "SPACE")
		gui_context->injectChar(' ');
	else if(game_key == "BACK")
	{
		gui_context->injectKeyDown(CEGUI::Key::Backspace);
		gui_context->injectKeyUp(CEGUI::Key::Backspace);
	}
	else
	gui_context->injectChar((char) game_key[0]);
}

void GUIManager::mousePressed(uint32 x_click, uint32 y_click, uint32 mouse_button)
{
	CEGUI::MouseButton mouse_enum = CEGUI::NoButton;
	
	if(mouse_button == 1)
	{
		mouse_enum = CEGUI::LeftButton;
	}
	else if(mouse_button == 2)
	{
		mouse_enum = CEGUI::RightButton;
	}
	
	//need both of these
	gui_context->injectMouseButtonDown(mouse_enum);
	gui_context->injectMouseButtonUp(mouse_enum);
}

void GUIManager::mouseMoved(uint32 x_click, uint32 y_click, int x_rel, int y_rel)
{
	gui_context->injectMouseMove(x_rel, y_rel);
}

CEGUI::OgreRenderer* GUIManager::getRenderer()
{
	static CEGUI::OgreRenderer& cegui_ogre_renderer = CEGUI::OgreRenderer::bootstrapSystem();
	return &cegui_ogre_renderer;
}

void GUIManager::createGUIContext()
{
	//create (load) the TaharezLook scheme filebuf
	//(this auto-loads the TaharezLook looknfeel and imageset files)
	CEGUI::SchemeManager::getSingleton().createFromFile("TaharezLook.scheme");
	//create (load) a font
	//The first font loaded automatically becomes the default font, but note
	//that the scheme might have already loaded a font, so there may already
	//be a default set - if we want the "DejaVuSans-10" font to definitely
	//be the default, we should set the default explicitly afterwards
	//CEGUI::FontManager::getSingleton().createFromFile("GreatVibes-16.font");
	CEGUI::FontManager::getSingleton().createFromFile("Jura-13.font");
	
	CEGUI::System& system = CEGUI::System::getSingleton();
	gui_context = &system.createGUIContext(cegui_ogre_renderer->getDefaultRenderTarget());
	//gui_context->setDefaultFont("GreatVibes-16");
	gui_context->setDefaultFont("Jura-13");
	gui_context->getMouseCursor().setDefaultImage("TaharezLook/MouseArrow");
	gui_context->setDefaultTooltipType("TaharezLook/Tooltip");
	
	CEGUI::WindowManager* wmgr = &CEGUI::WindowManager::getSingleton();
	root_window = wmgr->loadLayoutFromFile("MyDemo.layout");
	gui_context->setRootWindow(root_window);
	
	CEGUI::PushButton* push_button = static_cast<CEGUI::PushButton*>(root_window->getChild("FrameWindow/Button"));
	push_button->subscribeEvent(CEGUI::PushButton::EventClicked, CEGUI::Event::Subscriber(&GUIManager::buttonEvent, this));
	
	
	CEGUI::PushButton* push_button2 = static_cast<CEGUI::PushButton*>(root_window->getChild("FrameWindow/Button2"));
	push_button2->subscribeEvent(CEGUI::PushButton::EventClicked, CEGUI::Event::Subscriber(&GUIManager::buttonEvent2, this));
	
	
	CEGUI::Editbox* edit_box = static_cast<CEGUI::Editbox*>(root_window->getChild("FrameWindow/Editbox"));
	edit_box->subscribeEvent(CEGUI::Editbox::EventTextAccepted, CEGUI::Event::Subscriber(&GUIManager::editboxEvent, this));
	
	CEGUI::Combobox* combo_box = static_cast<CEGUI::Combobox*>(root_window->getChild("FrameWindow/Combobox"));
	combo_box->setReadOnly(true);
	
	
	CEGUI::ListboxTextItem* combo_item = new CEGUI::ListboxTextItem("THEME");
	combo_item->setSelectionBrushImage("TaharezLook/ButtonMiddleHighlight");
	combo_box->addItem(combo_item);
	CEGUI::ListboxTextItem* combo_item2 = new CEGUI::ListboxTextItem("SOUND");
	combo_item2->setSelectionBrushImage("TaharezLook/ButtonMiddleHighlight");
	combo_box->addItem(combo_item2);
	//combo_item->setSelected(true);
	//combo_box->setText(combo_item->getText());

	
	
}

void GUIManager::destroyGUIContext()
{
	CEGUI::System& system = CEGUI::System::getSingleton();
	if(gui_context != NULL)
	{
		system.destroyGUIContext(*gui_context); //this crashes if I do anything with the G
		gui_context = NULL;
	}
}

void GUIManager::loadLevel(std::string level_name)
{
	createGUIContext();
}