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
include Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/depend.make

# Include the progress variables for this target.
include Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/progress.make

# Include the compile flags for this target's objects.
include Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/flags.make

Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.obj: Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/flags.make
Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.obj: Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/includes_CXX.rsp
Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.obj: ../Samples/Fresnel/src/Fresnel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\CSC4903\ogre_src_v1-8-1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.obj"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Samples\Fresnel && C:\TDM-GCC-64\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Sample_Fresnel.dir\src\Fresnel.cpp.obj -c C:\CSC4903\ogre_src_v1-8-1\Samples\Fresnel\src\Fresnel.cpp

Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.i"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Samples\Fresnel && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\CSC4903\ogre_src_v1-8-1\Samples\Fresnel\src\Fresnel.cpp > CMakeFiles\Sample_Fresnel.dir\src\Fresnel.cpp.i

Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.s"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Samples\Fresnel && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\CSC4903\ogre_src_v1-8-1\Samples\Fresnel\src\Fresnel.cpp -o CMakeFiles\Sample_Fresnel.dir\src\Fresnel.cpp.s

Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.obj.requires:

.PHONY : Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.obj.requires

Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.obj.provides: Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.obj.requires
	$(MAKE) -f Samples\Fresnel\CMakeFiles\Sample_Fresnel.dir\build.make Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.obj.provides.build
.PHONY : Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.obj.provides

Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.obj.provides.build: Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.obj


# Object files for target Sample_Fresnel
Sample_Fresnel_OBJECTS = \
"CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.obj"

# External object files for target Sample_Fresnel
Sample_Fresnel_EXTERNAL_OBJECTS =

bin/Sample_Fresnel.dll: Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.obj
bin/Sample_Fresnel.dll: Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/build.make
bin/Sample_Fresnel.dll: lib/libOgreRTShaderSystem.dll.a
bin/Sample_Fresnel.dll: C:/CSC4903/ois/lib/libOIS.dll.a
bin/Sample_Fresnel.dll: lib/libOgreMain.dll.a
bin/Sample_Fresnel.dll: C:/CSC4903/freetype-2.7.1/lib/libfreetype.a
bin/Sample_Fresnel.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_thread-mgw51-mt-1_63.a
bin/Sample_Fresnel.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_date_time-mgw51-mt-1_63.a
bin/Sample_Fresnel.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_system-mgw51-mt-1_63.a
bin/Sample_Fresnel.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_chrono-mgw51-mt-1_63.a
bin/Sample_Fresnel.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_atomic-mgw51-mt-1_63.a
bin/Sample_Fresnel.dll: C:/CSC4903/FreeImage-3.17.0_Win32Win64/lib/libfreeimage.a
bin/Sample_Fresnel.dll: Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/linklibs.rsp
bin/Sample_Fresnel.dll: Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/objects1.rsp
bin/Sample_Fresnel.dll: Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\CSC4903\ogre_src_v1-8-1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ..\..\bin\Sample_Fresnel.dll"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Samples\Fresnel && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Sample_Fresnel.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/build: bin/Sample_Fresnel.dll

.PHONY : Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/build

Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/requires: Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/src/Fresnel.cpp.obj.requires

.PHONY : Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/requires

Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/clean:
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Samples\Fresnel && $(CMAKE_COMMAND) -P CMakeFiles\Sample_Fresnel.dir\cmake_clean.cmake
.PHONY : Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/clean

Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\CSC4903\ogre_src_v1-8-1 C:\CSC4903\ogre_src_v1-8-1\Samples\Fresnel C:\CSC4903\ogre_src_v1-8-1\build C:\CSC4903\ogre_src_v1-8-1\build\Samples\Fresnel C:\CSC4903\ogre_src_v1-8-1\build\Samples\Fresnel\CMakeFiles\Sample_Fresnel.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : Samples/Fresnel/CMakeFiles/Sample_Fresnel.dir/depend

