@echo off
cls

set DRIVE_LETTER=%1:
set TDM_PATH=%DRIVE_LETTER%/TDM-GCC-64
set GAME_PATH=%DRIVE_LETTER%/CSC4903
set OGRE_PATH=%GAME_PATH%/ogre_src_v1-8-1/build
set OIS_PATH=%GAME_PATH%/ois
set FREE_IMAGE_PATH=%GAME_PATH%/FreeImage-3.17.0_Win32Win64
set ZLIB_PATH=%GAME_PATH%/zlib-1.2.11
set PATH=%TDM%/bin;%OGRE_PATH%/bin;%OIS_PATH%/lib;%FREE_IMAGE_PATH%/lib;%ZLIB_PATH%/lib;c:/windows

SampleBrowser