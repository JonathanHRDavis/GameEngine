# Install script for directory: C:/CSC4903/cegui-0.8.7/cegui/src/RendererModules/Direct3D9

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/cegui")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/cegui-0.8.7/build/lib/libCEGUIDirect3D9Renderer-0.dll.a")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/CSC4903/cegui-0.8.7/build/bin/libCEGUIDirect3D9Renderer-0.dll")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libCEGUIDirect3D9Renderer-0.dll" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libCEGUIDirect3D9Renderer-0.dll")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/TDM-GCC-64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libCEGUIDirect3D9Renderer-0.dll")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cegui-0/CEGUI/RendererModules/Direct3D9" TYPE FILE FILES
    "C:/CSC4903/cegui-0.8.7/cegui/src/RendererModules/Direct3D9/../../../include/CEGUI/RendererModules/Direct3D9/GeometryBuffer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/RendererModules/Direct3D9/../../../include/CEGUI/RendererModules/Direct3D9/RenderTarget.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/RendererModules/Direct3D9/../../../include/CEGUI/RendererModules/Direct3D9/Renderer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/RendererModules/Direct3D9/../../../include/CEGUI/RendererModules/Direct3D9/Texture.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/RendererModules/Direct3D9/../../../include/CEGUI/RendererModules/Direct3D9/TextureTarget.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/RendererModules/Direct3D9/../../../include/CEGUI/RendererModules/Direct3D9/ViewportTarget.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/RendererModules/Direct3D9/RenderTarget.inl"
    )
endif()

