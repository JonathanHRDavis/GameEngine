@echo off
cls

set DRIVE_LETTER=%1:
set GAME_DIR=%DRIVE_LETTER%/CSC4903
set CMAKE=C:/Program Files/CMake
set DIRECT_X=%GAME_DIR%/ois/dx_dinput
set OIS_DIR=%GAME_DIR%/ois
set TDM=%DRIVE_LETTER%/TDM-GCC-64
set PATH=%TDM%/bin;%CMAKE%/bin;c:/windows

cmake -G "MinGW Makefiles" -D DXSDK_DIR=%DIRECT_X% -D DirectX_INCLUDE_DIR=%DIRECT_X%/include -D DirectX_DINPUT8_LIBRARY=%DIRECT_X%/lib/libdinput8.a -D DirectX_DXGUID_LIBRARY=%DIRECT_X%/lib/libdxguid.a -D CMAKE_C_COMPILER=%TDM%/bin/gcc.exe -D CMAKE_CXX_COMPILER=%TDM%/bin/g++.exe -D CMAKE_BUILD_TYPE="Release" ../

::mingw32-make

::-D DXSDK_DIR=%DIRECT_X%