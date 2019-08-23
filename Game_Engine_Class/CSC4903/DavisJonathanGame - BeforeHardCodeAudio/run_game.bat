@echo off
cls

set DRIVE_LETTER=C:
set GAME_PATH=%DRIVE_LETTER%/CSC4903/

set OGRE_PATH=%GAME_PATH%/Ogre-1.8.1
set BOOST_PATH=%GAME_PATH%/boost_1_63_0
set FREEIMAGE_PATH=%GAME_PATH%/FreeImage-3.17.0_Win32Win64
set ZLIB_PATH=%GAME_PATH%/zlib-1.2.11
set OIS_PATH=%GAME_PATH%/ois


set TDM=%DRIVE_LETTER%/TDM-GCC-64

set PATH=%TDM%/bin;%OIS_PATH%/lib;%OGRE_PATH%/build/bin;%BOOST_PATH%/stage/lib;%ZLIB_PATH%/lib;%FREEIMAGE_PATH%/lib;c:/windows

game