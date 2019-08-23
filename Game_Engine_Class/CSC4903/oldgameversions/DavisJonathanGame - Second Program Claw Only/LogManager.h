#if !defined LOG_MANAGER
#define LOG_MANAGER

#include <ctime>
#include <iomanip>
#include <fstream>
#include <sstream>

class LogManager
{
   private:
      std::stringstream log_buffer;
      std::ofstream log_file;

      void create(std::string file_name);

      void flush();
      void close();

      std::string getTimeString();

   public:
      LogManager(std::string file_name);
      virtual ~LogManager();

      void logProblem(std::string error_msg, std::string file_name, int line_number);
      void logComment(std::string comment_message);
};

#endif
