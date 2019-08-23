@echo off
cls

set DRIVE_LETTER=%1:
set PATH=%DRIVE_LETTER%\TDM-GCC-64\bin;c:\Windows;c:\Windows\system32

g++ -I./ -c tinyxmlerror.cpp
g++ -I./ -c tinystr.cpp
g++ -I./ -c tinyxml.cpp
g++ -I./ -c tinyxmlparser.cpp

ar -r libtinyxml.a tinyxmlerror.o tinystr.o tinyxml.o tinyxmlparser.o
::ar -r libtinyxml2.a tinyxmlerror.o tinystr.o tinyxml2.o tinyxmlparser.o
