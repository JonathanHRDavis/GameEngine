# Install script for directory: C:/CSC4903/ogre_src_v1-8-1/Samples

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE" TYPE FILE FILES
    "C:/CSC4903/ogre_src_v1-8-1/Samples/Common/include/ExampleApplication.h"
    "C:/CSC4903/ogre_src_v1-8-1/Samples/Common/include/ExampleFrameListener.h"
    "C:/CSC4903/ogre_src_v1-8-1/Samples/Common/include/ExampleLoadingBar.h"
    "C:/CSC4903/ogre_src_v1-8-1/Samples/Common/include/FileSystemLayer.h"
    "C:/CSC4903/ogre_src_v1-8-1/Samples/Common/include/OgreStaticPluginLoader.h"
    "C:/CSC4903/ogre_src_v1-8-1/Samples/Common/include/Sample.h"
    "C:/CSC4903/ogre_src_v1-8-1/Samples/Common/include/SampleContext.h"
    "C:/CSC4903/ogre_src_v1-8-1/Samples/Common/include/SamplePlugin.h"
    "C:/CSC4903/ogre_src_v1-8-1/Samples/Common/include/SdkCameraMan.h"
    "C:/CSC4903/ogre_src_v1-8-1/Samples/Common/include/SdkSample.h"
    "C:/CSC4903/ogre_src_v1-8-1/Samples/Common/include/SdkTrays.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/BezierPatch/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/CameraTrack/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/Character/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/Compositor/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/DualQuaternion/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/DynTex/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/FacialAnimation/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/Grass/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/Instancing/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/Lighting/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/NewInstancing/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/OceanDemo/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/ParticleFX/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/ShaderSystem/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/Shadows/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/SkeletalAnimation/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/SkyBox/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/SkyDome/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/SkyPlane/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/Smoke/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/SphereMapping/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/TextureFX/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/TextureArray/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/Transparency/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/VolumeTex/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/Water/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/BSP/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/CelShading/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/DeferredShading/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/CubeMapping/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/Dot3Bump/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/Fresnel/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/Isosurf/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/ParticleGS/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/SSAO/cmake_install.cmake")
  include("C:/CSC4903/ogre_src_v1-8-1/build/Samples/Browser/cmake_install.cmake")

endif()

