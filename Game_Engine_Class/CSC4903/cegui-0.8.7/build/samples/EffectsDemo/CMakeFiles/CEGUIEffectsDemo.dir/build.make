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
include samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/depend.make

# Include the progress variables for this target.
include samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/progress.make

# Include the compile flags for this target's objects.
include samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/flags.make

samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.obj: samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/flags.make
samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.obj: samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/includes_CXX.rsp
samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.obj: ../samples/EffectsDemo/EffectsDemo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\CSC4903\cegui-0.8.7\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.obj"
	cd /d C:\CSC4903\cegui-0.8.7\build\samples\EffectsDemo && c:\TDM-GCC-64\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\CEGUIEffectsDemo.dir\EffectsDemo.cpp.obj -c C:\CSC4903\cegui-0.8.7\samples\EffectsDemo\EffectsDemo.cpp

samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.i"
	cd /d C:\CSC4903\cegui-0.8.7\build\samples\EffectsDemo && c:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\CSC4903\cegui-0.8.7\samples\EffectsDemo\EffectsDemo.cpp > CMakeFiles\CEGUIEffectsDemo.dir\EffectsDemo.cpp.i

samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.s"
	cd /d C:\CSC4903\cegui-0.8.7\build\samples\EffectsDemo && c:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\CSC4903\cegui-0.8.7\samples\EffectsDemo\EffectsDemo.cpp -o CMakeFiles\CEGUIEffectsDemo.dir\EffectsDemo.cpp.s

samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.obj.requires:

.PHONY : samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.obj.requires

samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.obj.provides: samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.obj.requires
	$(MAKE) -f samples\EffectsDemo\CMakeFiles\CEGUIEffectsDemo.dir\build.make samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.obj.provides.build
.PHONY : samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.obj.provides

samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.obj.provides.build: samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.obj


# Object files for target CEGUIEffectsDemo
CEGUIEffectsDemo_OBJECTS = \
"CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.obj"

# External object files for target CEGUIEffectsDemo
CEGUIEffectsDemo_EXTERNAL_OBJECTS =

bin/libCEGUIEffectsDemo.dll: samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.obj
bin/libCEGUIEffectsDemo.dll: samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/build.make
bin/libCEGUIEffectsDemo.dll: lib/libCEGUIBase-0.dll.a
bin/libCEGUIEffectsDemo.dll: ../dependencies/lib/dynamic/libfreetype.dll.a
bin/libCEGUIEffectsDemo.dll: ../dependencies/lib/dynamic/libpcre.dll.a
bin/libCEGUIEffectsDemo.dll: samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/linklibs.rsp
bin/libCEGUIEffectsDemo.dll: samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/objects1.rsp
bin/libCEGUIEffectsDemo.dll: samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\CSC4903\cegui-0.8.7\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ..\..\bin\libCEGUIEffectsDemo.dll"
	cd /d C:\CSC4903\cegui-0.8.7\build\samples\EffectsDemo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\CEGUIEffectsDemo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/build: bin/libCEGUIEffectsDemo.dll

.PHONY : samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/build

samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/requires: samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/EffectsDemo.cpp.obj.requires

.PHONY : samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/requires

samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/clean:
	cd /d C:\CSC4903\cegui-0.8.7\build\samples\EffectsDemo && $(CMAKE_COMMAND) -P CMakeFiles\CEGUIEffectsDemo.dir\cmake_clean.cmake
.PHONY : samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/clean

samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\CSC4903\cegui-0.8.7 C:\CSC4903\cegui-0.8.7\samples\EffectsDemo C:\CSC4903\cegui-0.8.7\build C:\CSC4903\cegui-0.8.7\build\samples\EffectsDemo C:\CSC4903\cegui-0.8.7\build\samples\EffectsDemo\CMakeFiles\CEGUIEffectsDemo.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : samples/EffectsDemo/CMakeFiles/CEGUIEffectsDemo.dir/depend

