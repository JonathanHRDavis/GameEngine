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
include Samples/Shadows/CMakeFiles/Sample_Shadows.dir/depend.make

# Include the progress variables for this target.
include Samples/Shadows/CMakeFiles/Sample_Shadows.dir/progress.make

# Include the compile flags for this target's objects.
include Samples/Shadows/CMakeFiles/Sample_Shadows.dir/flags.make

Samples/Shadows/CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.obj: Samples/Shadows/CMakeFiles/Sample_Shadows.dir/flags.make
Samples/Shadows/CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.obj: Samples/Shadows/CMakeFiles/Sample_Shadows.dir/includes_CXX.rsp
Samples/Shadows/CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.obj: ../Samples/Shadows/src/Shadows.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\CSC4903\ogre_src_v1-8-1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Samples/Shadows/CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.obj"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Samples\Shadows && C:\TDM-GCC-64\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Sample_Shadows.dir\src\Shadows.cpp.obj -c C:\CSC4903\ogre_src_v1-8-1\Samples\Shadows\src\Shadows.cpp

Samples/Shadows/CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.i"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Samples\Shadows && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\CSC4903\ogre_src_v1-8-1\Samples\Shadows\src\Shadows.cpp > CMakeFiles\Sample_Shadows.dir\src\Shadows.cpp.i

Samples/Shadows/CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.s"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Samples\Shadows && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\CSC4903\ogre_src_v1-8-1\Samples\Shadows\src\Shadows.cpp -o CMakeFiles\Sample_Shadows.dir\src\Shadows.cpp.s

Samples/Shadows/CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.obj.requires:

.PHONY : Samples/Shadows/CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.obj.requires

Samples/Shadows/CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.obj.provides: Samples/Shadows/CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.obj.requires
	$(MAKE) -f Samples\Shadows\CMakeFiles\Sample_Shadows.dir\build.make Samples/Shadows/CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.obj.provides.build
.PHONY : Samples/Shadows/CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.obj.provides

Samples/Shadows/CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.obj.provides.build: Samples/Shadows/CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.obj


# Object files for target Sample_Shadows
Sample_Shadows_OBJECTS = \
"CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.obj"

# External object files for target Sample_Shadows
Sample_Shadows_EXTERNAL_OBJECTS =

bin/Sample_Shadows.dll: Samples/Shadows/CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.obj
bin/Sample_Shadows.dll: Samples/Shadows/CMakeFiles/Sample_Shadows.dir/build.make
bin/Sample_Shadows.dll: lib/libOgreRTShaderSystem.dll.a
bin/Sample_Shadows.dll: C:/CSC4903/ois/lib/libOIS.dll.a
bin/Sample_Shadows.dll: lib/libOgreMain.dll.a
bin/Sample_Shadows.dll: C:/CSC4903/freetype-2.7.1/lib/libfreetype.a
bin/Sample_Shadows.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_thread-mgw51-mt-1_63.a
bin/Sample_Shadows.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_date_time-mgw51-mt-1_63.a
bin/Sample_Shadows.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_system-mgw51-mt-1_63.a
bin/Sample_Shadows.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_chrono-mgw51-mt-1_63.a
bin/Sample_Shadows.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_atomic-mgw51-mt-1_63.a
bin/Sample_Shadows.dll: C:/CSC4903/FreeImage-3.17.0_Win32Win64/lib/libfreeimage.a
bin/Sample_Shadows.dll: Samples/Shadows/CMakeFiles/Sample_Shadows.dir/linklibs.rsp
bin/Sample_Shadows.dll: Samples/Shadows/CMakeFiles/Sample_Shadows.dir/objects1.rsp
bin/Sample_Shadows.dll: Samples/Shadows/CMakeFiles/Sample_Shadows.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\CSC4903\ogre_src_v1-8-1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ..\..\bin\Sample_Shadows.dll"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Samples\Shadows && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Sample_Shadows.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Samples/Shadows/CMakeFiles/Sample_Shadows.dir/build: bin/Sample_Shadows.dll

.PHONY : Samples/Shadows/CMakeFiles/Sample_Shadows.dir/build

Samples/Shadows/CMakeFiles/Sample_Shadows.dir/requires: Samples/Shadows/CMakeFiles/Sample_Shadows.dir/src/Shadows.cpp.obj.requires

.PHONY : Samples/Shadows/CMakeFiles/Sample_Shadows.dir/requires

Samples/Shadows/CMakeFiles/Sample_Shadows.dir/clean:
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Samples\Shadows && $(CMAKE_COMMAND) -P CMakeFiles\Sample_Shadows.dir\cmake_clean.cmake
.PHONY : Samples/Shadows/CMakeFiles/Sample_Shadows.dir/clean

Samples/Shadows/CMakeFiles/Sample_Shadows.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\CSC4903\ogre_src_v1-8-1 C:\CSC4903\ogre_src_v1-8-1\Samples\Shadows C:\CSC4903\ogre_src_v1-8-1\build C:\CSC4903\ogre_src_v1-8-1\build\Samples\Shadows C:\CSC4903\ogre_src_v1-8-1\build\Samples\Shadows\CMakeFiles\Sample_Shadows.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : Samples/Shadows/CMakeFiles/Sample_Shadows.dir/depend

