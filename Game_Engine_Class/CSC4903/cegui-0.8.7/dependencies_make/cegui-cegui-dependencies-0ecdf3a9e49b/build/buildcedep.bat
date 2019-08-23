@echo off
cls

set DRIVE_LETTER=%1:
set GAME_DIR=%DRIVE_LETTER%/CSC4903
set CMAKE=C:/Program Files/CMake
set TDM=%DRIVE_LETTER%/TDM-GCC-64
set PATH=%TDM%/bin;%CMAKE%/bin;c:/windows

set OGRE_DIR=%GAME_DIR%/Ogre-1.8.1
set BOOST_DIR=%GAME_DIR%/boost_1_63_0
set OIS_DIR=%GAME_DIR%/ois
::set FREETYPE_DIR=%GAME_DIR%/freetype-2.7.1
::set ZLIB_DIR=%GAME_DIR%/zlib-1.2.11
::set FREEIMAGE_DIR=%GAME_DIR%/FreeImage-3.17.0_Win32Win64
::set TINYXML_DIR=%GAME_DIR%/tinyxml_2.6.2

cmake -G "MinGW Makefiles" -D BOOST_ROOT=%BOOST_DIR% -D OGRE_LIB=%OGRE_DIR%/lib/OgreMain.lib -D OGRE_SDK=%OGRE_DIR%/build -D OGRE_HOME=%OGRE_DIR%/lib -D OIS_LIB=%OIS_DIR% -D CMAKE_C_COMPILER=%TDM%/bin/gcc.exe -D CMAKE_CXX_COMPILER=%TDM%/bin/g++.exe -D CMAKE_BUILD_TYPE="Release" ../
::cmake -G "MinGW Makefiles" -D BOOST_ROOT=%BOOST_DIR% -D OIS_INCLUDE_DIR=%OIS_DIR%/include -D OIS_LIB=%OIS_DIR%/lib/libOIS.dll.a -D OIS_H_PATH=%OIS_DIR%/include -D FreeImage_INCLUDE_DIR=%FREEIMAGE_DIR%/lib -D FreeImage_LIBRARY_REL=%FREEIMAGE_DIR%/lib/libfreeimage.a -D TINYXML_INCLUDE_DIR=%TINYXML_DIR%/include -D TINYXML_LIBRARIES=%TINYXML_DIR%/lib/libtinyxml.a -D ZLIB_INCLUDE_DIR=%ZLIB_DIR% -D ZLIB_LIBRARY_REL=%ZLIB_DIR%/lib/libzlib.dll.a -D FREETYPE_LIBRARY_REL=%FREETYPE_DIR%/lib/libfreetype.a -D FREETYPE_INCLUDE_DIR=%FREETYPE_DIR%/include -D FREETYPE_FT2BUILD_INCLUDE_DIR=%FREETYPE_DIR%/include -D CMAKE_C_COMPILER=%TDM%/bin/gcc.exe -D CMAKE_CXX_COMPILER=%TDM%/bin/g++.exe -D CMAKE_BUILD_TYPE="Release" ../
::cmake -G "MinGW Makefiles" ../

::mingw32-make
