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
CMAKE_SOURCE_DIR = C:\CSC4903\ogre_src_v1-8-1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\CSC4903\ogre_src_v1-8-1\build

# Include any dependencies generated for this target.
include Samples/Water/CMakeFiles/Sample_Water.dir/depend.make

# Include the progress variables for this target.
include Samples/Water/CMakeFiles/Sample_Water.dir/progress.make

# Include the compile flags for this target's objects.
include Samples/Water/CMakeFiles/Sample_Water.dir/flags.make

Samples/Water/CMakeFiles/Sample_Water.dir/src/Water.cpp.obj: Samples/Water/CMakeFiles/Sample_Water.dir/flags.make
Samples/Water/CMakeFiles/Sample_Water.dir/src/Water.cpp.obj: Samples/Water/CMakeFiles/Sample_Water.dir/includes_CXX.rsp
Samples/Water/CMakeFiles/Sample_Water.dir/src/Water.cpp.obj: ../Samples/Water/src/Water.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\CSC4903\ogre_src_v1-8-1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Samples/Water/CMakeFiles/Sample_Water.dir/src/Water.cpp.obj"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Samples\Water && C:\TDM-GCC-64\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Sample_Water.dir\src\Water.cpp.obj -c C:\CSC4903\ogre_src_v1-8-1\Samples\Water\src\Water.cpp

Samples/Water/CMakeFiles/Sample_Water.dir/src/Water.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Sample_Water.dir/src/Water.cpp.i"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Samples\Water && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\CSC4903\ogre_src_v1-8-1\Samples\Water\src\Water.cpp > CMakeFiles\Sample_Water.dir\src\Water.cpp.i

Samples/Water/CMakeFiles/Sample_Water.dir/src/Water.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Sample_Water.dir/src/Water.cpp.s"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Samples\Water && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\CSC4903\ogre_src_v1-8-1\Samples\Water\src\Water.cpp -o CMakeFiles\Sample_Water.dir\src\Water.cpp.s

Samples/Water/CMakeFiles/Sample_Water.dir/src/Water.cpp.obj.requires:

.PHONY : Samples/Water/CMakeFiles/Sample_Water.dir/src/Water.cpp.obj.requires

Samples/Water/CMakeFiles/Sample_Water.dir/src/Water.cpp.obj.provides: Samples/Water/CMakeFiles/Sample_Water.dir/src/Water.cpp.obj.requires
	$(MAKE) -f Samples\Water\CMakeFiles\Sample_Water.dir\build.make Samples/Water/CMakeFiles/Sample_Water.dir/src/Water.cpp.obj.provides.build
.PHONY : Samples/Water/CMakeFiles/Sample_Water.dir/src/Water.cpp.obj.provides

Samples/Water/CMakeFiles/Sample_Water.dir/src/Water.cpp.obj.provides.build: Samples/Water/CMakeFiles/Sample_Water.dir/src/Water.cpp.obj


Samples/Water/CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.obj: Samples/Water/CMakeFiles/Sample_Water.dir/flags.make
Samples/Water/CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.obj: Samples/Water/CMakeFiles/Sample_Water.dir/includes_CXX.rsp
Samples/Water/CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.obj: ../Samples/Water/src/WaterMesh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\CSC4903\ogre_src_v1-8-1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Samples/Water/CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.obj"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Samples\Water && C:\TDM-GCC-64\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Sample_Water.dir\src\WaterMesh.cpp.obj -c C:\CSC4903\ogre_src_v1-8-1\Samples\Water\src\WaterMesh.cpp

Samples/Water/CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.i"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Samples\Water && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\CSC4903\ogre_src_v1-8-1\Samples\Water\src\WaterMesh.cpp > CMakeFiles\Sample_Water.dir\src\WaterMesh.cpp.i

Samples/Water/CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.s"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Samples\Water && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\CSC4903\ogre_src_v1-8-1\Samples\Water\src\WaterMesh.cpp -o CMakeFiles\Sample_Water.dir\src\WaterMesh.cpp.s

Samples/Water/CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.obj.requires:

.PHONY : Samples/Water/CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.obj.requires

Samples/Water/CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.obj.provides: Samples/Water/CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.obj.requires
	$(MAKE) -f Samples\Water\CMakeFiles\Sample_Water.dir\build.make Samples/Water/CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.obj.provides.build
.PHONY : Samples/Water/CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.obj.provides

Samples/Water/CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.obj.provides.build: Samples/Water/CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.obj


# Object files for target Sample_Water
Sample_Water_OBJECTS = \
"CMakeFiles/Sample_Water.dir/src/Water.cpp.obj" \
"CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.obj"

# External object files for target Sample_Water
Sample_Water_EXTERNAL_OBJECTS =

bin/Sample_Water.dll: Samples/Water/CMakeFiles/Sample_Water.dir/src/Water.cpp.obj
bin/Sample_Water.dll: Samples/Water/CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.obj
bin/Sample_Water.dll: Samples/Water/CMakeFiles/Sample_Water.dir/build.make
bin/Sample_Water.dll: lib/libOgreRTShaderSystem.dll.a
bin/Sample_Water.dll: C:/CSC4903/ois/lib/libOIS.dll.a
bin/Sample_Water.dll: lib/libOgreMain.dll.a
bin/Sample_Water.dll: C:/CSC4903/freetype-2.7.1/lib/libfreetype.a
bin/Sample_Water.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_thread-mgw51-mt-1_63.a
bin/Sample_Water.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_date_time-mgw51-mt-1_63.a
bin/Sample_Water.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_system-mgw51-mt-1_63.a
bin/Sample_Water.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_chrono-mgw51-mt-1_63.a
bin/Sample_Water.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_atomic-mgw51-mt-1_63.a
bin/Sample_Water.dll: C:/CSC4903/FreeImage-3.17.0_Win32Win64/lib/libfreeimage.a
bin/Sample_Water.dll: Samples/Water/CMakeFiles/Sample_Water.dir/linklibs.rsp
bin/Sample_Water.dll: Samples/Water/CMakeFiles/Sample_Water.dir/objects1.rsp
bin/Sample_Water.dll: Samples/Water/CMakeFiles/Sample_Water.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\CSC4903\ogre_src_v1-8-1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library ..\..\bin\Sample_Water.dll"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Samples\Water && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Sample_Water.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Samples/Water/CMakeFiles/Sample_Water.dir/build: bin/Sample_Water.dll

.PHONY : Samples/Water/CMakeFiles/Sample_Water.dir/build

Samples/Water/CMakeFiles/Sample_Water.dir/requires: Samples/Water/CMakeFiles/Sample_Water.dir/src/Water.cpp.obj.requires
Samples/Water/CMakeFiles/Sample_Water.dir/requires: Samples/Water/CMakeFiles/Sample_Water.dir/src/WaterMesh.cpp.obj.requires

.PHONY : Samples/Water/CMakeFiles/Sample_Water.dir/requires

Samples/Water/CMakeFiles/Sample_Water.dir/clean:
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Samples\Water && $(CMAKE_COMMAND) -P CMakeFiles\Sample_Water.dir\cmake_clean.cmake
.PHONY : Samples/Water/CMakeFiles/Sample_Water.dir/clean

Samples/Water/CMakeFiles/Sample_Water.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\CSC4903\ogre_src_v1-8-1 C:\CSC4903\ogre_src_v1-8-1\Samples\Water C:\CSC4903\ogre_src_v1-8-1\build C:\CSC4903\ogre_src_v1-8-1\build\Samples\Water C:\CSC4903\ogre_src_v1-8-1\build\Samples\Water\CMakeFiles\Sample_Water.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : Samples/Water/CMakeFiles/Sample_Water.dir/depend

