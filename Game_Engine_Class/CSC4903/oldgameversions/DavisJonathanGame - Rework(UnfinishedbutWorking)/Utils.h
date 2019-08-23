#if !defined UTILS_H
#define UTILS_H

#include <string>

class Utils
{
   private:

   public:
	  static int parseInt(std::string& str);
      static float parseFloat(std::string& str);
      static void parseFloats(std::string& str, float* values);
};

#endif
