# Install script for directory: C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Release" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/ogre_src_v1-8-1/build/lib/libOgreRTShaderSystem.dll.a")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Release" TYPE SHARED_LIBRARY FILES "C:/CSC4903/ogre_src_v1-8-1/build/bin/OgreRTShaderSystem.dll")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Release/OgreRTShaderSystem.dll" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Release/OgreRTShaderSystem.dll")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "C:/TDM-GCC-64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Release/OgreRTShaderSystem.dll")
      endif()
    endif()
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/RelWithDebInfo" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/ogre_src_v1-8-1/build/lib/libOgreRTShaderSystem.dll.a")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo" TYPE SHARED_LIBRARY FILES "C:/CSC4903/ogre_src_v1-8-1/build/bin/OgreRTShaderSystem.dll")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo/OgreRTShaderSystem.dll" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo/OgreRTShaderSystem.dll")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "C:/TDM-GCC-64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo/OgreRTShaderSystem.dll")
      endif()
    endif()
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/MinSizeRel" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/ogre_src_v1-8-1/build/lib/libOgreRTShaderSystem.dll.a")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel" TYPE SHARED_LIBRARY FILES "C:/CSC4903/ogre_src_v1-8-1/build/bin/OgreRTShaderSystem.dll")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel/OgreRTShaderSystem.dll" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel/OgreRTShaderSystem.dll")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "C:/TDM-GCC-64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel/OgreRTShaderSystem.dll")
      endif()
    endif()
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Debug" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/ogre_src_v1-8-1/build/lib/libOgreRTShaderSystem.dll.a")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Debug" TYPE SHARED_LIBRARY FILES "C:/CSC4903/ogre_src_v1-8-1/build/bin/OgreRTShaderSystem.dll")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Debug/OgreRTShaderSystem.dll" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Debug/OgreRTShaderSystem.dll")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "C:/TDM-GCC-64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Debug/OgreRTShaderSystem.dll")
      endif()
    endif()
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RTShaderSystem" TYPE FILE FILES
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreRTShaderSystem.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderPrerequisites.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderFFPColour.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderFFPFog.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderFFPLighting.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderFFPRenderState.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderFFPRenderStateBuilder.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderFFPTexturing.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderFFPTransform.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderFunction.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderFunctionAtom.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderGenerator.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderParameter.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderProgram.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderProgramManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderProgramSet.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderProgramWriter.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderRenderState.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderSubRenderState.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderExNormalMapLighting.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderExPerPixelLighting.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderExIntegratedPSSM3.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderScriptTranslator.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderMaterialSerializerListener.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderProgramProcessor.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderCGProgramProcessor.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderCGProgramWriter.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderGLSLProgramProcessor.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderGLSLProgramWriter.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderGLSLESProgramProcessor.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderGLSLESProgramWriter.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderProgramWriterManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderHLSLProgramProcessor.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderHLSLProgramWriter.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderExLayeredBlending.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderExHardwareSkinning.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderExDualQuaternionSkinning.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderExLinearSkinning.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderExHardwareSkinningTechnique.h"
    "C:/CSC4903/ogre_src_v1-8-1/Components/RTShaderSystem/include/OgreShaderExTextureAtlasSampler.h"
    )
endif()

