#include "LogManager.h"

using namespace std;

LogManager::LogManager(std::string file_name)
{
   create(file_name);
}

LogManager::~LogManager()
{
   close();
}

void LogManager::create(std::string file_name)
{
   log_file.open(file_name.c_str());
}

void LogManager::flush()
{
   log_file << log_buffer.str();
   log_file.flush();
   log_buffer.str("");
}

void LogManager::close()
{
   log_file.close();
}

void LogManager::logComment(std::string comment_message)
{
   log_buffer << "****COMMENT****\r\n";
   flush();

   log_buffer << getTimeString() << "\r\n" << comment_message << "\r\n";
   flush();

   log_buffer << "***************\r\n";
   flush();
}

void LogManager::logProblem(std::string error_msg, std::string src_file_name, int line_number)
{
   log_buffer << "****ASSERTION FAILURE****\r\n";
   flush();

   stringstream error_str;
   error_str << "Assertion Failed: " << "\r\nSrc File: " << src_file_name << "\r\nLine Number: " << line_number << "\r\n";
   error_str << "Error Message: " << error_msg << "\r\n";
   string error_text = error_str.str();

   log_buffer << getTimeString() << "\r\n" << error_text;
   flush();

   log_buffer << "*************************\r\n";
   flush();
}

std::string LogManager::getTimeString()
{
   std::stringstream time_str;

   struct tm* pTime;
   time_t ctTime; 
   time(&ctTime);
   pTime = localtime(&ctTime);

   time_str << std::setw(2) << std::setfill('0') << pTime->tm_hour << ":";
   time_str << std::setw(2) << std::setfill('0') << pTime->tm_min << ":";
   time_str << std::setw(2) << std::setfill('0') << pTime->tm_sec;

   return time_str.str();
}
