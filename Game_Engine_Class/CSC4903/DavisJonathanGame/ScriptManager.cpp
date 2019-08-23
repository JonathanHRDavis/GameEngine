#include "ScriptManager.h"
//#include "RenderManager.h"
#include "GameManager.h"

void ScriptManager::reset()
{
	inputs->removeAll();
	outputs->removeAll();
}

void ScriptManager::input(std::string& input_str)
{
	const char* parameter = input_str.c_str();
	
	inputs->add(parameter);
}

std::string ScriptManager::output(int index)
{
	const char* output = outputs->get(index);
	std::string output_str(output);
	return output_str;
}

//ScriptManager::ScriptManager(RenderManager* rm)
ScriptManager::ScriptManager(GameManager* gm)
{
	//render_manager = rm;
	game_manager = gm;
	L = luaL_newstate();
	luaL_openlibs(L);
	
	inputs = new ListArray<const char>();
	outputs = new ListArray<const char>();
	
	luabridge::getGlobalNamespace(L)
	.beginClass<GameManager>("GameManager")
		.addFunction("stopTheme", &GameManager::stopTheme)
		.addFunction("ringPulse", &GameManager::ringPulse)
		.addFunction("spawnElephant", &GameManager::spawnElephant)
	.endClass();
	
	luabridge::push(L, game_manager);
	lua_setglobal(L, "game_manager");
}

ScriptManager::~ScriptManager()
{
	reset();
	delete inputs;
	inputs = NULL;
	delete outputs;
	outputs = NULL;
	
	lua_close(L);
	//render_manager= NULL;
	game_manager = NULL;
}

void ScriptManager::buttonEventCallback(std::string& param_str, std::string& event_script)
{
	luabridge::push(L, param_str.c_str());
	lua_setglobal(L, "parameter_str");
	
	int script = luaL_dofile(L, event_script.c_str());
	
	if(script != 0)
	{
		lua_pop(L, 1);
	}
}

void ScriptManager::executeScript(std::string& script_file_name, std::string& script_function_name, int num_outputs)
{
	int num_inputs = inputs->size();

	luaL_dofile(L, script_file_name.c_str());
	lua_getglobal (L, script_function_name.c_str());
	
	for(int i = 1; i <= num_inputs; i++)
	{
		const char* input = inputs->get(i);
		lua_pushstring(L, input);
	}

	lua_pcall(L, num_inputs, num_outputs, 0);

	//remember pop is in the reverse order
	for (int i = num_outputs - 1; i >= 0; i--)
	{
		const char* temp = lua_tostring(L, -1);
		outputs->add(temp);
		lua_pop(L, 1);
	}
	
}