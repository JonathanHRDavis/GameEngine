# Install script for directory: C:/CSC4903/ogre_src_v1-8-1/CMake

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/CSC4903/ogre_src_v1-8-1/build/sdk")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/CMake" TYPE FILE FILES
    "C:/CSC4903/ogre_src_v1-8-1/CMake/Packages/FindOIS.cmake"
    "C:/CSC4903/ogre_src_v1-8-1/CMake/Packages/FindOGRE.cmake"
    "C:/CSC4903/ogre_src_v1-8-1/CMake/Utils/FindPkgMacros.cmake"
    "C:/CSC4903/ogre_src_v1-8-1/CMake/Utils/MacroLogFeature.cmake"
    "C:/CSC4903/ogre_src_v1-8-1/CMake/Utils/PreprocessorUtils.cmake"
    "C:/CSC4903/ogre_src_v1-8-1/CMake/Utils/PrecompiledHeader.cmake"
    "C:/CSC4903/ogre_src_v1-8-1/CMake/Utils/OgreAddTargets.cmake"
    "C:/CSC4903/ogre_src_v1-8-1/CMake/Utils/OgreConfigTargets.cmake"
    "C:/CSC4903/ogre_src_v1-8-1/CMake/Utils/OgreGetVersion.cmake"
    "C:/CSC4903/ogre_src_v1-8-1/CMake/Utils/OgreFindFrameworks.cmake"
    "C:/CSC4903/ogre_src_v1-8-1/CMake/Templates/VisualStudioUserFile.vcproj.user.in"
    "C:/CSC4903/ogre_src_v1-8-1/CMake/Templates/VisualStudioUserFile.vcxproj.user.in"
    )
endif()

