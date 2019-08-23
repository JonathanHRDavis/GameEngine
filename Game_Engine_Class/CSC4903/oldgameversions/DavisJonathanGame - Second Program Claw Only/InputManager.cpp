#include "GameHeader.h"
#include "InputManager.h"
#include "GameManager.h"

#include <math.h>
#include <sstream>
#include <iostream>
using namespace std;

//called on every frame!
void InputManager::checkForInput()
{
	if(keyboard_ois)keyboard_ois->capture();
	/*
	if(mouse_ois)
	{
		mouse_ois->capture();
	}
	*/
	//still need to capture before using unbuffered input
	if(joystick_ois)
	{
		joystick_ois->capture();
		OIS::JoyStickState joystick_state = joystick_ois->getJoyStickState();
		OIS::JoyStickEvent e(joystick_ois, joystick_state);
		axisMoved(e, 0); //should really try to figure out what the axis should be set to
	}
}

//callback
bool InputManager::keyPressed(const OIS::KeyEvent& e)
{
//cout << "KP" << endl;
	game_manager->keyPressed(keyMap(e));
	return true;
}

//callback
bool InputManager::keyReleased(const OIS::KeyEvent& e)
{
//cout << "KR" << endl;
	game_manager->keyReleased(keyMap(e));
	return true;
}

InputManager::InputManager(GameManager* gm)
{
	game_manager = gm;
	input_manager_ois = NULL;
	keyboard_ois = NULL;
	mouse_ois = NULL;
	joystick_ois = NULL;
	
	init();
	
	window_width = game_manager->getRenderWindowWidth();
	window_height = game_manager->getRenderWindowHeight();
}

void InputManager::free()
{
	if(input_manager_ois)
	{
		input_manager_ois->destroyInputSystem(input_manager_ois);
	}
}

InputManager::~InputManager()
{
	free();
	
	input_manager_ois = NULL;
	keyboard_ois = NULL;
	mouse_ois = NULL;
	joystick_ois = NULL;
}

void InputManager::init()
{
	try
	{
		OIS::ParamList p1;
		std::ostringstream windowHndStr;
		size_t window_handle = game_manager->getRenderWindowHandle();
		
		size_t handle = window_handle;
		windowHndStr << handle;
		p1.insert(std::make_pair(std::string("WINDOW"), windowHndStr.str()));
		
		input_manager_ois = OIS::InputManager::createInputSystem(p1);
		if(input_manager_ois->getNumberOfDevices(OIS::OISKeyboard) > 0)
		{
			keyboard_ois = static_cast<OIS::Keyboard*>(input_manager_ois->createInputObject(OIS::OISKeyboard, true));
			keyboard_ois->setEventCallback(this); //forwards the information to all registered listeners
		}
		/*
		if(input_manager_ois->getNumberOfDevices(OIS::OISMouse) > 0)
		{
			mouse_ois = static_cast<OIS::Mouse*>(input_manager_ois->createInputObject(OIS::OISMouse, true));
			mouse_ois->setEventCallback(this); //forwards the information to all registered listeners
		}
		*/
		
		if(input_manager_ois->getNumberOfDevices(OIS::OISJoyStick) > 0)
		{
			joystick_ois = static_cast<OIS::JoyStick*>(input_manager_ois->createInputObject(OIS::OISJoyStick, true));
//			joystick_ois->setEventCallback(this); //forwards the information to all registered listeners
		}
	}
	
	catch(std::exception& e) //may be possible to get a good error message from ois this way
	{
		ASSERT_CRITICAL(false, e.what());
	}
	
	catch(...) //catch any other type of exception thrown by OIS, won't be able to access the actual error message
	{
		ASSERT_CRITICAL(false, "Input Manager Initialization Error");
	}
}

std::string InputManager::keyMap(const OIS::KeyEvent& e)
{
	std::string game_key = "INVALID_KEY";
	OIS::KeyCode key_code = e.key;
	
	if(key_code == OIS::KC_ESCAPE)
	{
		game_key = "ESCAPE";
	}
	
	else if(key_code == OIS::KC_0)
	{
		game_key = "0";
	}
	
	else if(key_code == OIS::KC_1)
	{
		game_key = "1";
	}
	
	else if(key_code == OIS::KC_2)
	{
		game_key = "2";
	}
	
	else if(key_code == OIS::KC_RIGHT)
	{
		game_key = "RIGHT";
	}
	
	else if(key_code == OIS::KC_LEFT)
	{
		game_key = "LEFT";
	}
	
	else if(key_code == OIS::KC_UP)
	{
		game_key = "UP";
	}
	
	else if(key_code == OIS::KC_DOWN)
	{
		game_key = "DOWN";
	}
	
	else if(key_code == OIS::KC_W)
	{
		game_key = "W";
	}
	
	else if(key_code == OIS::KC_A)
	{
		game_key = "A";
	}
	
	else if(key_code == OIS::KC_S)
	{
		game_key = "S";
	}
	
	else if(key_code == OIS::KC_D)
	{
		game_key = "D";
	}
	
	return game_key;
}

bool InputManager::sliderMoved(const OIS::JoyStickEvent& e, int index){return true;}
bool InputManager::povMoved(const OIS::JoyStickEvent& e, int index){return true;}
bool InputManager::vector3Moved (const OIS::JoyStickEvent& e, int index){return true;}

bool InputManager::buttonPressed(const OIS::JoyStickEvent& e, int button)
{
	return true;
}

bool InputManager::buttonReleased(const OIS::JoyStickEvent& e, int button)
{
	return true;
}

bool InputManager::axisMoved(const OIS::JoyStickEvent& e, int axis)
{
	
	int TOL = 10000;
	int NEG_TOL = -10000;
	
	//After testing this on Dr. Boshart's machine, I found that depending upon your drivers
	//the element in the e.state.mAxis[] array which correpsonds to particular axis can vary,
	//you may have to change this part in accordance with your drivers
	float amount[6] = {e.state.mAxes[0].abs, e.state.mAxes[1].abs,
		e.state.mAxes[2].abs, e.state.mAxes[3].abs,
		e.state.mAxes[4].abs, e.state.mAxes[5].abs};
		
	/*	
	cout << endl;
	cout << "[0]:" << amount[0] << " [1]:" << amount[1] << "\n"
	<< "[2]:" << amount[2] << " [3]:" << amount[3] << "\n"
	<< "[4]:" << amount[4] << " [5]:" << amount[5] << endl;
	*/

	//[0] Positive: RightStick Down
	//[0] Negative: RightSTick Up
	//[1] Positive: RightStick Right
	//[1] Negative: RightStick Left
	//[2] Positive: LeftStick Down
	//[2] Negative: LeftStick Up
	//[3] Positive: LeftStick Right
	//[3] Negative: LeftStick Left
	//[4] Positive: Right Trigger
	//[5] Positive: Left Trigger
	
	float north_south = 0;
	float east_west = 0;
	
	if(amount[2] > TOL || amount[2] < NEG_TOL)
	{
		north_south = amount[2]/32767.0;
	}
	
	if(amount[3] > TOL || amount[3] < NEG_TOL)
	{
		east_west = amount[3]/32767.0;
	}
	
	game_manager->leftJoystickAxisMoved(north_south, east_west);
	
	//reset to test the right joystick
	north_south = 0;
	east_west = 0;
	if(amount[0] > TOL || amount[0] < NEG_TOL)
	{
		north_south = amount[0]/32767.0;
	}
	
	if(amount[1] > TOL || amount[1] < NEG_TOL)
	{
		east_west = amount[1]/32767.0;
	}
	
	game_manager->rightJoystickAxisMoved(north_south, east_west);
	
	if(amount[4] > TOL)
	{
		float value = amount[4]/32767.0;
		game_manager->rightTriggerJoystick(value);
	}
	
	if(amount[5] > TOL)
	{
		float value = amount[4]/32767.0;
		game_manager->leftTriggerJoystick(value);
	}
	
	return true;
}

std::string InputManager::joystickAxisMap(int axis)
{
	if(axis == 0)
	{
		return "L_NS";
	}
	
	else if(axis == 1)
	{
		return "L_EW";
	}
	
	else if(axis == 3)
	{
		return "R_NS";
	}
	
	else
	{
		return "R_EW";
	}	
}

std::string InputManager::joystickButtonMap(int button)
{
	if(button == 0)
	{
		return "A";
	}
	
	else if(button == 1)
	{
		return "B";
	}
	
	else if(button == 2)
	{
		return "X";
	}
	
	else if(button == 3)
	{
		return "Y";
	}
	
	else if(button == 4)
	{
		return "L";
	}
	
	else
	{
		return "R";
	}
}
