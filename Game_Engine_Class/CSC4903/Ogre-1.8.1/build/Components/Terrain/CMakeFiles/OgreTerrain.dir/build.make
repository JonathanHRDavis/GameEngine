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
include Components/Terrain/CMakeFiles/OgreTerrain.dir/depend.make

# Include the progress variables for this target.
include Components/Terrain/CMakeFiles/OgreTerrain.dir/progress.make

# Include the compile flags for this target's objects.
include Components/Terrain/CMakeFiles/OgreTerrain.dir/flags.make

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.obj: Components/Terrain/CMakeFiles/OgreTerrain.dir/flags.make
Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.obj: Components/Terrain/CMakeFiles/OgreTerrain.dir/includes_CXX.rsp
Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.obj: ../Components/Terrain/src/OgreTerrain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\CSC4903\ogre_src_v1-8-1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.obj"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\OgreTerrain.dir\src\OgreTerrain.cpp.obj -c C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrain.cpp

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.i"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrain.cpp > CMakeFiles\OgreTerrain.dir\src\OgreTerrain.cpp.i

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.s"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrain.cpp -o CMakeFiles\OgreTerrain.dir\src\OgreTerrain.cpp.s

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.obj.requires:

.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.obj.requires

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.obj.provides: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.obj.requires
	$(MAKE) -f Components\Terrain\CMakeFiles\OgreTerrain.dir\build.make Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.obj.provides.build
.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.obj.provides

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.obj.provides.build: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.obj


Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.obj: Components/Terrain/CMakeFiles/OgreTerrain.dir/flags.make
Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.obj: Components/Terrain/CMakeFiles/OgreTerrain.dir/includes_CXX.rsp
Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.obj: ../Components/Terrain/src/OgreTerrainGroup.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\CSC4903\ogre_src_v1-8-1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.obj"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\OgreTerrain.dir\src\OgreTerrainGroup.cpp.obj -c C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainGroup.cpp

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.i"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainGroup.cpp > CMakeFiles\OgreTerrain.dir\src\OgreTerrainGroup.cpp.i

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.s"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainGroup.cpp -o CMakeFiles\OgreTerrain.dir\src\OgreTerrainGroup.cpp.s

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.obj.requires:

.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.obj.requires

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.obj.provides: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.obj.requires
	$(MAKE) -f Components\Terrain\CMakeFiles\OgreTerrain.dir\build.make Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.obj.provides.build
.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.obj.provides

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.obj.provides.build: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.obj


Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.obj: Components/Terrain/CMakeFiles/OgreTerrain.dir/flags.make
Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.obj: Components/Terrain/CMakeFiles/OgreTerrain.dir/includes_CXX.rsp
Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.obj: ../Components/Terrain/src/OgreTerrainLayerBlendMap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\CSC4903\ogre_src_v1-8-1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.obj"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\OgreTerrain.dir\src\OgreTerrainLayerBlendMap.cpp.obj -c C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainLayerBlendMap.cpp

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.i"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainLayerBlendMap.cpp > CMakeFiles\OgreTerrain.dir\src\OgreTerrainLayerBlendMap.cpp.i

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.s"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainLayerBlendMap.cpp -o CMakeFiles\OgreTerrain.dir\src\OgreTerrainLayerBlendMap.cpp.s

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.obj.requires:

.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.obj.requires

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.obj.provides: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.obj.requires
	$(MAKE) -f Components\Terrain\CMakeFiles\OgreTerrain.dir\build.make Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.obj.provides.build
.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.obj.provides

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.obj.provides.build: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.obj


Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.obj: Components/Terrain/CMakeFiles/OgreTerrain.dir/flags.make
Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.obj: Components/Terrain/CMakeFiles/OgreTerrain.dir/includes_CXX.rsp
Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.obj: ../Components/Terrain/src/OgreTerrainMaterialGenerator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\CSC4903\ogre_src_v1-8-1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.obj"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\OgreTerrain.dir\src\OgreTerrainMaterialGenerator.cpp.obj -c C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainMaterialGenerator.cpp

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.i"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainMaterialGenerator.cpp > CMakeFiles\OgreTerrain.dir\src\OgreTerrainMaterialGenerator.cpp.i

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.s"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainMaterialGenerator.cpp -o CMakeFiles\OgreTerrain.dir\src\OgreTerrainMaterialGenerator.cpp.s

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.obj.requires:

.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.obj.requires

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.obj.provides: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.obj.requires
	$(MAKE) -f Components\Terrain\CMakeFiles\OgreTerrain.dir\build.make Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.obj.provides.build
.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.obj.provides

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.obj.provides.build: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.obj


Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.obj: Components/Terrain/CMakeFiles/OgreTerrain.dir/flags.make
Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.obj: Components/Terrain/CMakeFiles/OgreTerrain.dir/includes_CXX.rsp
Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.obj: ../Components/Terrain/src/OgreTerrainMaterialGeneratorA.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\CSC4903\ogre_src_v1-8-1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.obj"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\OgreTerrain.dir\src\OgreTerrainMaterialGeneratorA.cpp.obj -c C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainMaterialGeneratorA.cpp

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.i"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainMaterialGeneratorA.cpp > CMakeFiles\OgreTerrain.dir\src\OgreTerrainMaterialGeneratorA.cpp.i

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.s"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainMaterialGeneratorA.cpp -o CMakeFiles\OgreTerrain.dir\src\OgreTerrainMaterialGeneratorA.cpp.s

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.obj.requires:

.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.obj.requires

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.obj.provides: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.obj.requires
	$(MAKE) -f Components\Terrain\CMakeFiles\OgreTerrain.dir\build.make Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.obj.provides.build
.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.obj.provides

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.obj.provides.build: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.obj


Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.obj: Components/Terrain/CMakeFiles/OgreTerrain.dir/flags.make
Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.obj: Components/Terrain/CMakeFiles/OgreTerrain.dir/includes_CXX.rsp
Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.obj: ../Components/Terrain/src/OgreTerrainQuadTreeNode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\CSC4903\ogre_src_v1-8-1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.obj"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\OgreTerrain.dir\src\OgreTerrainQuadTreeNode.cpp.obj -c C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainQuadTreeNode.cpp

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.i"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainQuadTreeNode.cpp > CMakeFiles\OgreTerrain.dir\src\OgreTerrainQuadTreeNode.cpp.i

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.s"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainQuadTreeNode.cpp -o CMakeFiles\OgreTerrain.dir\src\OgreTerrainQuadTreeNode.cpp.s

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.obj.requires:

.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.obj.requires

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.obj.provides: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.obj.requires
	$(MAKE) -f Components\Terrain\CMakeFiles\OgreTerrain.dir\build.make Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.obj.provides.build
.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.obj.provides

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.obj.provides.build: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.obj


Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.obj: Components/Terrain/CMakeFiles/OgreTerrain.dir/flags.make
Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.obj: Components/Terrain/CMakeFiles/OgreTerrain.dir/includes_CXX.rsp
Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.obj: ../Components/Terrain/src/OgreTerrainPaging.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\CSC4903\ogre_src_v1-8-1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.obj"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\OgreTerrain.dir\src\OgreTerrainPaging.cpp.obj -c C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainPaging.cpp

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.i"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainPaging.cpp > CMakeFiles\OgreTerrain.dir\src\OgreTerrainPaging.cpp.i

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.s"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainPaging.cpp -o CMakeFiles\OgreTerrain.dir\src\OgreTerrainPaging.cpp.s

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.obj.requires:

.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.obj.requires

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.obj.provides: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.obj.requires
	$(MAKE) -f Components\Terrain\CMakeFiles\OgreTerrain.dir\build.make Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.obj.provides.build
.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.obj.provides

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.obj.provides.build: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.obj


Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.obj: Components/Terrain/CMakeFiles/OgreTerrain.dir/flags.make
Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.obj: Components/Terrain/CMakeFiles/OgreTerrain.dir/includes_CXX.rsp
Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.obj: ../Components/Terrain/src/OgreTerrainPagedWorldSection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\CSC4903\ogre_src_v1-8-1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.obj"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\OgreTerrain.dir\src\OgreTerrainPagedWorldSection.cpp.obj -c C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainPagedWorldSection.cpp

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.i"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainPagedWorldSection.cpp > CMakeFiles\OgreTerrain.dir\src\OgreTerrainPagedWorldSection.cpp.i

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.s"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && C:\TDM-GCC-64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\CSC4903\ogre_src_v1-8-1\Components\Terrain\src\OgreTerrainPagedWorldSection.cpp -o CMakeFiles\OgreTerrain.dir\src\OgreTerrainPagedWorldSection.cpp.s

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.obj.requires:

.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.obj.requires

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.obj.provides: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.obj.requires
	$(MAKE) -f Components\Terrain\CMakeFiles\OgreTerrain.dir\build.make Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.obj.provides.build
.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.obj.provides

Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.obj.provides.build: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.obj


# Object files for target OgreTerrain
OgreTerrain_OBJECTS = \
"CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.obj" \
"CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.obj" \
"CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.obj" \
"CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.obj" \
"CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.obj" \
"CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.obj" \
"CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.obj" \
"CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.obj"

# External object files for target OgreTerrain
OgreTerrain_EXTERNAL_OBJECTS =

bin/OgreTerrain.dll: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.obj
bin/OgreTerrain.dll: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.obj
bin/OgreTerrain.dll: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.obj
bin/OgreTerrain.dll: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.obj
bin/OgreTerrain.dll: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.obj
bin/OgreTerrain.dll: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.obj
bin/OgreTerrain.dll: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.obj
bin/OgreTerrain.dll: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.obj
bin/OgreTerrain.dll: Components/Terrain/CMakeFiles/OgreTerrain.dir/build.make
bin/OgreTerrain.dll: lib/libOgrePaging.dll.a
bin/OgreTerrain.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_thread-mgw51-mt-1_63.a
bin/OgreTerrain.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_date_time-mgw51-mt-1_63.a
bin/OgreTerrain.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_system-mgw51-mt-1_63.a
bin/OgreTerrain.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_chrono-mgw51-mt-1_63.a
bin/OgreTerrain.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_atomic-mgw51-mt-1_63.a
bin/OgreTerrain.dll: lib/libOgreMain.dll.a
bin/OgreTerrain.dll: C:/CSC4903/freetype-2.7.1/lib/libfreetype.a
bin/OgreTerrain.dll: C:/CSC4903/FreeImage-3.17.0_Win32Win64/lib/libfreeimage.a
bin/OgreTerrain.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_thread-mgw51-mt-1_63.a
bin/OgreTerrain.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_date_time-mgw51-mt-1_63.a
bin/OgreTerrain.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_system-mgw51-mt-1_63.a
bin/OgreTerrain.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_chrono-mgw51-mt-1_63.a
bin/OgreTerrain.dll: C:/CSC4903/boost_1_63_0/stage/lib/libboost_atomic-mgw51-mt-1_63.a
bin/OgreTerrain.dll: Components/Terrain/CMakeFiles/OgreTerrain.dir/linklibs.rsp
bin/OgreTerrain.dll: Components/Terrain/CMakeFiles/OgreTerrain.dir/objects1.rsp
bin/OgreTerrain.dll: Components/Terrain/CMakeFiles/OgreTerrain.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\CSC4903\ogre_src_v1-8-1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX shared library ..\..\bin\OgreTerrain.dll"
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\OgreTerrain.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Components/Terrain/CMakeFiles/OgreTerrain.dir/build: bin/OgreTerrain.dll

.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/build

Components/Terrain/CMakeFiles/OgreTerrain.dir/requires: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrain.cpp.obj.requires
Components/Terrain/CMakeFiles/OgreTerrain.dir/requires: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainGroup.cpp.obj.requires
Components/Terrain/CMakeFiles/OgreTerrain.dir/requires: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainLayerBlendMap.cpp.obj.requires
Components/Terrain/CMakeFiles/OgreTerrain.dir/requires: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGenerator.cpp.obj.requires
Components/Terrain/CMakeFiles/OgreTerrain.dir/requires: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainMaterialGeneratorA.cpp.obj.requires
Components/Terrain/CMakeFiles/OgreTerrain.dir/requires: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainQuadTreeNode.cpp.obj.requires
Components/Terrain/CMakeFiles/OgreTerrain.dir/requires: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPaging.cpp.obj.requires
Components/Terrain/CMakeFiles/OgreTerrain.dir/requires: Components/Terrain/CMakeFiles/OgreTerrain.dir/src/OgreTerrainPagedWorldSection.cpp.obj.requires

.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/requires

Components/Terrain/CMakeFiles/OgreTerrain.dir/clean:
	cd /d C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain && $(CMAKE_COMMAND) -P CMakeFiles\OgreTerrain.dir\cmake_clean.cmake
.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/clean

Components/Terrain/CMakeFiles/OgreTerrain.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\CSC4903\ogre_src_v1-8-1 C:\CSC4903\ogre_src_v1-8-1\Components\Terrain C:\CSC4903\ogre_src_v1-8-1\build C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain C:\CSC4903\ogre_src_v1-8-1\build\Components\Terrain\CMakeFiles\OgreTerrain.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : Components/Terrain/CMakeFiles/OgreTerrain.dir/depend

