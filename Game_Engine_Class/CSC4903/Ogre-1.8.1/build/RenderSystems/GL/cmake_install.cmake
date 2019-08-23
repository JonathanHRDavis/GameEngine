# Install script for directory: C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL

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
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Release/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/ogre_src_v1-8-1/build/lib/libRenderSystem_GL.dll.a")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Release" TYPE SHARED_LIBRARY FILES "C:/CSC4903/ogre_src_v1-8-1/build/bin/RenderSystem_GL.dll")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Release/RenderSystem_GL.dll" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Release/RenderSystem_GL.dll")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "C:/TDM-GCC-64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Release/RenderSystem_GL.dll")
      endif()
    endif()
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/RelWithDebInfo/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/ogre_src_v1-8-1/build/lib/libRenderSystem_GL.dll.a")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo" TYPE SHARED_LIBRARY FILES "C:/CSC4903/ogre_src_v1-8-1/build/bin/RenderSystem_GL.dll")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo/RenderSystem_GL.dll" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo/RenderSystem_GL.dll")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "C:/TDM-GCC-64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo/RenderSystem_GL.dll")
      endif()
    endif()
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/MinSizeRel/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/ogre_src_v1-8-1/build/lib/libRenderSystem_GL.dll.a")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel" TYPE SHARED_LIBRARY FILES "C:/CSC4903/ogre_src_v1-8-1/build/bin/RenderSystem_GL.dll")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel/RenderSystem_GL.dll" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel/RenderSystem_GL.dll")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "C:/TDM-GCC-64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel/RenderSystem_GL.dll")
      endif()
    endif()
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Debug/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/ogre_src_v1-8-1/build/lib/libRenderSystem_GL.dll.a")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Debug" TYPE SHARED_LIBRARY FILES "C:/CSC4903/ogre_src_v1-8-1/build/bin/RenderSystem_GL.dll")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Debug/RenderSystem_GL.dll" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Debug/RenderSystem_GL.dll")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "C:/TDM-GCC-64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Debug/RenderSystem_GL.dll")
      endif()
    endif()
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/GL" TYPE FILE FILES
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLATIFSInit.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLContext.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLDefaultHardwareBufferManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLDepthBuffer.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLFBOMultiRenderTarget.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLFBORenderTexture.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLFrameBufferObject.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLGpuNvparseProgram.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLGpuProgram.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLGpuProgramManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLHardwareBufferManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLHardwareIndexBuffer.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLHardwareOcclusionQuery.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLHardwarePixelBuffer.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLHardwareVertexBuffer.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLPBRenderTexture.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLPBuffer.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLPixelFormat.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLPlugin.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLPrerequisites.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLRenderSystem.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLRenderTexture.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLRenderToVertexBuffer.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLSupport.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLTexture.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreGLTextureManager.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/GL" TYPE FILE FILES
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreWin32Context.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreWin32GLSupport.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreWin32Prerequisites.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreWin32RenderTexture.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/OgreWin32Window.h"
    "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/src/win32/OgreGLUtil.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/GL" TYPE DIRECTORY FILES "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/include/GL")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/GL" TYPE DIRECTORY FILES "C:/CSC4903/ogre_src_v1-8-1/RenderSystems/GL/src/GLSL/include/")
endif()

