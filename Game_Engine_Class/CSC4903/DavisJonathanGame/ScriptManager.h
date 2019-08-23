#if !defined SCRIPT_MANAGER
#define SCRIPT_MANAGER

extern "C" //prevents name mangling
{
	#include <lua.h>
	#include <lauxlib.h>
	#include <lualib.h>
}

//change line 488 in luawrapper.hpp to >=502
//#include "luawrapper.hpp"
//#include "luawrapperutil.hpp"

#include <LuaBridge.h>

#include <string>
#include "CSC2110/ListArray.h"

//class RenderManager;
class GameManager;

class ScriptManager
{
	private:
		lua_State* L;
		//RenderManager* render_manager;
		GameManager* game_manager;
		
		ListArray<const char>* inputs;
		ListArray<const char>* outputs;
		
	public:
		//ScriptManager(RenderManager* render_manager);
		ScriptManager(GameManager* game_manager);
		virtual ~ScriptManager();
		
		void input(std::string& input);
		std::string output(int index); //copy!
		void reset();
		
		void buttonEventCallback(std::string& param_str, std::string& event_script);
		
		void executeScript(std::string& script_file_name, std::string& script_function_name, int num_outputs);
};

#endif