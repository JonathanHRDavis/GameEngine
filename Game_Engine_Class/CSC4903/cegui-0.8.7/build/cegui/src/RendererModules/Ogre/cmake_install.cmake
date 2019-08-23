# Install script for directory: C:/CSC4903/cegui-0.8.7/cegui/src/RendererModules/Ogre

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files/cegui")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/cegui-0.8.7/build/lib/libCEGUIOgreRenderer-0.dll.a")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/CSC4903/cegui-0.8.7/build/bin/libCEGUIOgreRenderer-0.dll")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cegui-0/CEGUI/RendererModules/Ogre" TYPE FILE FILES
    "C:/CSC4903/cegui-0.8.7/cegui/src/RendererModules/Ogre/../../../include/CEGUI/RendererModules/Ogre/GeometryBuffer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/RendererModules/Ogre/../../../include/CEGUI/RendererModules/Ogre/ImageCodec.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/RendererModules/Ogre/../../../include/CEGUI/RendererModules/Ogre/RenderTarget.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/RendererModules/Ogre/../../../include/CEGUI/RendererModules/Ogre/Renderer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/RendererModules/Ogre/../../../include/CEGUI/RendererModules/Ogre/ResourceProvider.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/RendererModules/Ogre/../../../include/CEGUI/RendererModules/Ogre/Texture.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/RendererModules/Ogre/../../../include/CEGUI/RendererModules/Ogre/TextureTarget.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/RendererModules/Ogre/../../../include/CEGUI/RendererModules/Ogre/WindowTarget.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/RendererModules/Ogre/RenderTarget.inl"
    )
endif()

