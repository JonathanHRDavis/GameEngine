# Install script for directory: C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Release/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/ogre_src_v1-8-1/build/lib/libPlugin_ParticleFX.dll.a")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Release" TYPE SHARED_LIBRARY FILES "C:/CSC4903/ogre_src_v1-8-1/build/bin/Plugin_ParticleFX.dll")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Release/Plugin_ParticleFX.dll" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Release/Plugin_ParticleFX.dll")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "C:/TDM-GCC-64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Release/Plugin_ParticleFX.dll")
      endif()
    endif()
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/RelWithDebInfo/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/ogre_src_v1-8-1/build/lib/libPlugin_ParticleFX.dll.a")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo" TYPE SHARED_LIBRARY FILES "C:/CSC4903/ogre_src_v1-8-1/build/bin/Plugin_ParticleFX.dll")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo/Plugin_ParticleFX.dll" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo/Plugin_ParticleFX.dll")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "C:/TDM-GCC-64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo/Plugin_ParticleFX.dll")
      endif()
    endif()
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/MinSizeRel/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/ogre_src_v1-8-1/build/lib/libPlugin_ParticleFX.dll.a")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel" TYPE SHARED_LIBRARY FILES "C:/CSC4903/ogre_src_v1-8-1/build/bin/Plugin_ParticleFX.dll")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel/Plugin_ParticleFX.dll" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel/Plugin_ParticleFX.dll")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "C:/TDM-GCC-64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel/Plugin_ParticleFX.dll")
      endif()
    endif()
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Debug/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/ogre_src_v1-8-1/build/lib/libPlugin_ParticleFX.dll.a")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Debug" TYPE SHARED_LIBRARY FILES "C:/CSC4903/ogre_src_v1-8-1/build/bin/Plugin_ParticleFX.dll")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Debug/Plugin_ParticleFX.dll" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Debug/Plugin_ParticleFX.dll")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "C:/TDM-GCC-64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Debug/Plugin_ParticleFX.dll")
      endif()
    endif()
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/Plugins/ParticleFX" TYPE FILE FILES
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreAreaEmitter.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreBoxEmitterFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreBoxEmitter.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreColourFaderAffector2.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreColourFaderAffectorFactory2.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreColourFaderAffectorFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreColourFaderAffector.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreColourImageAffectorFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreColourImageAffector.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreColourInterpolatorAffectorFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreColourInterpolatorAffector.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreCylinderEmitterFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreCylinderEmitter.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreDeflectorPlaneAffectorFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreDeflectorPlaneAffector.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreDirectionRandomiserAffectorFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreDirectionRandomiserAffector.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreEllipsoidEmitterFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreEllipsoidEmitter.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreHollowEllipsoidEmitterFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreHollowEllipsoidEmitter.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreLinearForceAffectorFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreLinearForceAffector.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreParticleFXPlugin.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreParticleFXPrerequisites.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgrePointEmitterFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgrePointEmitter.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreRingEmitterFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreRingEmitter.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreRotationAffectorFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreRotationAffector.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreScaleAffectorFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/PlugIns/ParticleFX/include/OgreScaleAffector.h"
    )
endif()

