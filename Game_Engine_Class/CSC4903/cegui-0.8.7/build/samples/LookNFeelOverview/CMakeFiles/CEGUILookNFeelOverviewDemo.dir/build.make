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
include samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/depend.make

# Include the progress variables for this target.
include samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/progress.make

# Include the compile flags for this target's objects.
include samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/flags.make

samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.obj: samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/flags.make
samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.obj: samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/includes_CXX.rsp
samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.obj: ../samples/LookNFeelOverview/LookNFeelOverview.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\CSC4903\cegui-0.8.7\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.obj"
	cd /d C:\CSC4903\cegui-0.8.7\build\samples\LookNFeelOverview && c:\TDM-GCC-64\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\CEGUILookNFeelOverviewDemo.dir\LookNFeelOverview.cpp.obj -c C:\CSC4903\cegui-0.8.7\samples\LookNFeelOverview\LookNFeelOverview.cpp

samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.i"
	cd /d C:\CSC4903\cegui-0.8.7\build\samples\LookNFeelOverview && c:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\CSC4903\cegui-0.8.7\samples\LookNFeelOverview\LookNFeelOverview.cpp > CMakeFiles\CEGUILookNFeelOverviewDemo.dir\LookNFeelOverview.cpp.i

samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.s"
	cd /d C:\CSC4903\cegui-0.8.7\build\samples\LookNFeelOverview && c:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\CSC4903\cegui-0.8.7\samples\LookNFeelOverview\LookNFeelOverview.cpp -o CMakeFiles\CEGUILookNFeelOverviewDemo.dir\LookNFeelOverview.cpp.s

samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.obj.requires:

.PHONY : samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.obj.requires

samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.obj.provides: samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.obj.requires
	$(MAKE) -f samples\LookNFeelOverview\CMakeFiles\CEGUILookNFeelOverviewDemo.dir\build.make samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.obj.provides.build
.PHONY : samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.obj.provides

samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.obj.provides.build: samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.obj


# Object files for target CEGUILookNFeelOverviewDemo
CEGUILookNFeelOverviewDemo_OBJECTS = \
"CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.obj"

# External object files for target CEGUILookNFeelOverviewDemo
CEGUILookNFeelOverviewDemo_EXTERNAL_OBJECTS =

bin/libCEGUILookNFeelOverviewDemo.dll: samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.obj
bin/libCEGUILookNFeelOverviewDemo.dll: samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/build.make
bin/libCEGUILookNFeelOverviewDemo.dll: lib/libCEGUIBase-0.dll.a
bin/libCEGUILookNFeelOverviewDemo.dll: ../dependencies/lib/dynamic/libfreetype.dll.a
bin/libCEGUILookNFeelOverviewDemo.dll: ../dependencies/lib/dynamic/libpcre.dll.a
bin/libCEGUILookNFeelOverviewDemo.dll: samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/linklibs.rsp
bin/libCEGUILookNFeelOverviewDemo.dll: samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/objects1.rsp
bin/libCEGUILookNFeelOverviewDemo.dll: samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\CSC4903\cegui-0.8.7\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ..\..\bin\libCEGUILookNFeelOverviewDemo.dll"
	cd /d C:\CSC4903\cegui-0.8.7\build\samples\LookNFeelOverview && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\CEGUILookNFeelOverviewDemo.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/build: bin/libCEGUILookNFeelOverviewDemo.dll

.PHONY : samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/build

samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/requires: samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/LookNFeelOverview.cpp.obj.requires

.PHONY : samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/requires

samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/clean:
	cd /d C:\CSC4903\cegui-0.8.7\build\samples\LookNFeelOverview && $(CMAKE_COMMAND) -P CMakeFiles\CEGUILookNFeelOverviewDemo.dir\cmake_clean.cmake
.PHONY : samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/clean

samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\CSC4903\cegui-0.8.7 C:\CSC4903\cegui-0.8.7\samples\LookNFeelOverview C:\CSC4903\cegui-0.8.7\build C:\CSC4903\cegui-0.8.7\build\samples\LookNFeelOverview C:\CSC4903\cegui-0.8.7\build\samples\LookNFeelOverview\CMakeFiles\CEGUILookNFeelOverviewDemo.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : samples/LookNFeelOverview/CMakeFiles/CEGUILookNFeelOverviewDemo.dir/depend

