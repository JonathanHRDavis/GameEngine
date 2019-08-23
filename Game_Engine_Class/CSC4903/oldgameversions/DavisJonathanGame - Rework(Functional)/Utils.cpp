#include "Utils.h"
#include <cstdlib>  //atoi, atof (actual include not needed?)

int Utils::parseInt(std::string& str)
{
   return atoi(str.c_str());
}

float Utils::parseFloat(std::string& str)
{
   return atof(str.c_str());
}

void Utils::parseFloats(std::string& str, float* values)
{
   int sz = str.size();

   int loc = 0;
   int token_index = 0;
   while (loc < sz)
   {
      int index = str.find(',', loc);

      if (index == -1)
      {
         index = sz-1;
      }

      std::string sub = str.substr(loc, index);
      values[token_index] = atof(sub.c_str());

      loc = index + 1;
      token_index++;
   }
}

