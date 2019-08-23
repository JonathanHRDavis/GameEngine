#include "AudioResource.h"
#include "GameManager.h"

#include <cstdlib>

std::string AudioResource::getAudioResourceName()
{
	return audio_resource_name;
}

AudioResourceType AudioResource::getAudioResourceType()
{
	return audio_resource_type;
}

AudioResource::AudioResource(std::string level_name, std::string audio_file_name, std::string audio_name, AudioResourceType audio_type) : GameResource(level_name, audio_file_name, AUDIO)
{
	audio_resource_type = audio_type;
	audio_resource_name = audio_name;
}

AudioResource::~AudioResource()
{}

AudioResourceInfo* AudioResource::getAudioResourceInfo()
{
	return ar_info;
}

void AudioResource::load()
{

}

void AudioResource::unload()
{

}


void AudioResource::load(GameManager* game_manager)
{
	ar_info = game_manager->createAudioResourceInfo();
	
	if(audio_resource_type == SAMPLE)
	{
		game_manager->loadSampleAudioResource(getResourceFileName(), ar_info);
	}
	else
	{
		game_manager->loadStreamAudioResource(getResourceFileName(), ar_info);
	}
}

void AudioResource::unload(GameManager* game_manager)
{
	if(audio_resource_type == SAMPLE)
	{
		game_manager->unloadSampleAudioResource(ar_info);
	}
	else
	{
		game_manager->unloadStreamAudioResource(ar_info);
	}
	
	free(ar_info);
}
