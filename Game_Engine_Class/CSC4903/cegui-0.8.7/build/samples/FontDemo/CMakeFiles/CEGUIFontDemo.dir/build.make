# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\CSC4903\cegui-0.8.7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\CSC4903\cegui-0.8.7\build

# Include any dependencies generated for this target.
include samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/depend.make

# Include the progress variables for this target.
include samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/progress.make

# Include the compile flags for this target's objects.
include samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/flags.make

samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.obj: samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/flags.make
samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.obj: samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/includes_CXX.rsp
samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.obj: ../samples/FontDemo/Sample_FontDemo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\CSC4903\cegui-0.8.7\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.obj"
	cd /d C:\CSC4903\cegui-0.8.7\build\samples\FontDemo && c:\TDM-GCC-64\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\CEGUIFontDemo.dir\Sample_FontDemo.cpp.obj -c C:\CSC4903\cegui-0.8.7\samples\FontDemo\Sample_FontDemo.cpp

samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.i"
	cd /d C:\CSC4903\cegui-0.8.7\build\samples\FontDemo && c:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\CSC4903\cegui-0.8.7\samples\FontDemo\Sample_FontDemo.cpp > CMakeFiles\CEGUIFontDemo.dir\Sample_FontDemo.cpp.i

samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.s"
	cd /d C:\CSC4903\cegui-0.8.7\build\samples\FontDemo && c:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\CSC4903\cegui-0.8.7\samples\FontDemo\Sample_FontDemo.cpp -o CMakeFiles\CEGUIFontDemo.dir\Sample_FontDemo.cpp.s

samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.obj.requires:

.PHONY : samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.obj.requires

samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.obj.provides: samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.obj.requires
	$(MAKE) -f samples\FontDemo\CMakeFiles\CEGUIFontDemo.dir\build.make samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.obj.provides.build
.PHONY : samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.obj.provides

samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.obj.provides.build: samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.obj


# Object files for target CEGUIFontDemo
CEGUIFontDemo_OBJECTS = \
"CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.obj"

# External object files for target CEGUIFontDemo
CEGUIFontDemo_EXTERNAL_OBJECTS =

bin/libCEGUIFontDemo.dll: samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.obj
bin/libCEGUIFontDemo.dll: samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/build.make
bin/libCEGUIFontDemo.dll: lib/libCEGUIBase-0.dll.a
bin/libCEGUIFontDemo.dll: ../dependencies/lib/dynamic/libfreetype.dll.a
bin/libCEGUIFontDemo.dll: ../dependencies/lib/dynamic/libpcre.dll.a
bin/libCEGUIFontDemo.dll: samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/linklibs.rsp
bin/libCEGUIFontDemo.dll: samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/objects1.rsp
bin/libCEGUIFontDemo.dll: samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\CSC4903\cegui-0.8.7\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ..\..\bin\libCEGUIFontDemo.dll"
	cd /d C:\CSC4903\cegui-0.8.7\build\samples\FontDemo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\CEGUIFontDemo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/build: bin/libCEGUIFontDemo.dll

.PHONY : samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/build

samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/requires: samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/Sample_FontDemo.cpp.obj.requires

.PHONY : samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/requires

samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/clean:
	cd /d C:\CSC4903\cegui-0.8.7\build\samples\FontDemo && $(CMAKE_COMMAND) -P CMakeFiles\CEGUIFontDemo.dir\cmake_clean.cmake
.PHONY : samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/clean

samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\CSC4903\cegui-0.8.7 C:\CSC4903\cegui-0.8.7\samples\FontDemo C:\CSC4903\cegui-0.8.7\build C:\CSC4903\cegui-0.8.7\build\samples\FontDemo C:\CSC4903\cegui-0.8.7\build\samples\FontDemo\CMakeFiles\CEGUIFontDemo.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : samples/FontDemo/CMakeFiles/CEGUIFontDemo.dir/depend

