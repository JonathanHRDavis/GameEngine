# Install script for directory: C:/CSC4903/ogre_src_v1-8-1/OgreMain

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Release" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/ogre_src_v1-8-1/build/lib/libOgreMain.dll.a")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Release" TYPE SHARED_LIBRARY FILES "C:/CSC4903/ogre_src_v1-8-1/build/bin/OgreMain.dll")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Release/OgreMain.dll" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Release/OgreMain.dll")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "C:/TDM-GCC-64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Release/OgreMain.dll")
      endif()
    endif()
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/RelWithDebInfo" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/ogre_src_v1-8-1/build/lib/libOgreMain.dll.a")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo" TYPE SHARED_LIBRARY FILES "C:/CSC4903/ogre_src_v1-8-1/build/bin/OgreMain.dll")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo/OgreMain.dll" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo/OgreMain.dll")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "C:/TDM-GCC-64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo/OgreMain.dll")
      endif()
    endif()
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/MinSizeRel" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/ogre_src_v1-8-1/build/lib/libOgreMain.dll.a")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel" TYPE SHARED_LIBRARY FILES "C:/CSC4903/ogre_src_v1-8-1/build/bin/OgreMain.dll")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel/OgreMain.dll" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel/OgreMain.dll")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "C:/TDM-GCC-64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel/OgreMain.dll")
      endif()
    endif()
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Debug" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/ogre_src_v1-8-1/build/lib/libOgreMain.dll.a")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Debug" TYPE SHARED_LIBRARY FILES "C:/CSC4903/ogre_src_v1-8-1/build/bin/OgreMain.dll")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Debug/OgreMain.dll" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Debug/OgreMain.dll")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "C:/TDM-GCC-64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Debug/OgreMain.dll")
      endif()
    endif()
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE" TYPE FILE FILES
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/asm_math.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/Ogre.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreAlignedAllocator.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreAnimable.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreAnimation.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreAnimationState.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreAnimationTrack.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreAny.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreArchive.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreArchiveFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreArchiveManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreAtomicWrappers.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreAutoParamDataSource.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreAxisAlignedBox.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreBillboard.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreBillboardChain.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreBillboardParticleRenderer.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreBillboardSet.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreBitwise.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreBlendMode.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreBone.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreBorderPanelOverlayElement.h"
    "C:/CSC4903/ogre_src_v1-8-1/build/include/OgreBuildSettings.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreCamera.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreCodec.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreColourValue.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreCommon.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreCompositionPass.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreCompositionTargetPass.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreCompositionTechnique.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreCompositor.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreCompositorChain.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreCompositorLogic.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreCompositorInstance.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreCompositorManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreConfig.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreConfigDialog.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreConfigFile.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreConfigOptionMap.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreController.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreControllerManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreConvexBody.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreCustomCompositionPass.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreDataStream.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreDefaultHardwareBufferManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreDeflate.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreDepthBuffer.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreDistanceLodStrategy.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreDualQuaternion.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreDynLib.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreDynLibManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreEdgeListBuilder.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreEntity.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreErrorDialog.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreException.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreExternalTextureSource.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreExternalTextureSourceManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreFactoryObj.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreFileSystem.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreFont.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreFontManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreFrameListener.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreFrustum.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreGpuProgram.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreGpuProgramManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreGpuProgramParams.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreGpuProgramUsage.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreHardwareBuffer.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreHardwareBufferManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreHardwareIndexBuffer.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreHardwareOcclusionQuery.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreHardwarePixelBuffer.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreHardwareVertexBuffer.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreHeaderPrefix.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreHeaderSuffix.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreHighLevelGpuProgram.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreHighLevelGpuProgramManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreImage.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreImageCodec.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreInstanceBatch.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreInstanceBatchHW.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreInstanceBatchHW_VTF.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreInstanceBatchShader.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreInstanceBatchVTF.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreInstancedGeometry.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreInstancedEntity.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreInstanceManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreIteratorRange.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreIteratorWrapper.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreIteratorWrappers.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreKeyFrame.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreLight.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreLodListener.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreLodStrategy.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreLodStrategyManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreLog.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreLogManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreManualObject.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMaterial.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMaterialManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMaterialSerializer.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMath.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMatrix3.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMatrix4.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMemoryAllocatedObject.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMemoryAllocatorConfig.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMemoryNedAlloc.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMemoryNedPooling.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMemoryStdAlloc.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMemorySTLAllocator.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMemoryTracker.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMesh.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMeshFileFormat.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMeshManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMeshSerializer.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMeshSerializerImpl.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMovableObject.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreMovablePlane.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreNode.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreNumerics.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreOptimisedUtil.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreOverlay.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreOverlayContainer.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreOverlayElement.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreOverlayElementCommands.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreOverlayElementFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreOverlayManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgrePanelOverlayElement.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreParticle.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreParticleAffector.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreParticleAffectorFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreParticleEmitter.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreParticleEmitterCommands.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreParticleEmitterFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreParticleIterator.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreParticleScriptCompiler.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreParticleSystem.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreParticleSystemManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreParticleSystemRenderer.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgrePass.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgrePatchMesh.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgrePatchSurface.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgrePixelCountLodStrategy.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgrePixelFormat.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgrePlane.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgrePlaneBoundedVolume.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgrePlatform.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgrePlatformInformation.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgrePlugin.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgrePolygon.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgrePose.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgrePredefinedControllers.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgrePrefabFactory.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgrePrerequisites.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreProfiler.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreProgressiveMesh.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreQuaternion.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRadixSort.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRay.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRectangle.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRectangle2D.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRenderable.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRenderObjectListener.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRenderOperation.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRenderQueue.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRenderQueueInvocation.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRenderQueueListener.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRenderQueueSortingGrouping.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRenderSystem.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRenderSystemCapabilities.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRenderSystemCapabilitiesManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRenderSystemCapabilitiesSerializer.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRenderTarget.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRenderTargetListener.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRenderTexture.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRenderToVertexBuffer.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRenderWindow.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreResource.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreResourceBackgroundQueue.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreResourceGroupManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreResourceManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRibbonTrail.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRoot.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreRotationalSpline.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSceneManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSceneManagerEnumerator.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSceneNode.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSceneQuery.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreScriptCompiler.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreScriptLexer.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreScriptLoader.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreScriptParser.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreScriptTranslator.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSearchOps.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSerializer.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreShadowCameraSetup.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreShadowCameraSetupFocused.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreShadowCameraSetupLiSPSM.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreShadowCameraSetupPlaneOptimal.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreShadowCameraSetupPSSM.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreShadowCaster.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreShadowTextureManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreShadowVolumeExtrudeProgram.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSharedPtr.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSimpleRenderable.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSimpleSpline.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSingleton.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSkeleton.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSkeletonFileFormat.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSkeletonInstance.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSkeletonManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSkeletonSerializer.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSmallVector.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSphere.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSpotShadowFadePng.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreStableHeaders.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreStaticFaceGroup.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreStaticGeometry.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreStdHeaders.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreStreamSerialiser.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreString.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreStringConverter.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreStringInterface.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreStringVector.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSubEntity.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreSubMesh.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreTagPoint.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreTangentSpaceCalc.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreTechnique.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreTextAreaOverlayElement.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreTexture.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreTextureManager.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreTextureUnitState.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreTimer.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreUnifiedHighLevelGpuProgram.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreUserObjectBindings.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreUTFString.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreVector2.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreVector3.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreVector4.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreVertexBoneAssignment.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreVertexIndexData.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreViewport.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreWindowEventUtilities.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreWireBoundingBox.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreWorkQueue.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreFreeImageCodec.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/OgreDDSCodec.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/WIN32" TYPE FILE FILES
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/WIN32/OgreConfigDialogImp.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/WIN32/OgreErrorDialogImp.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/WIN32/OgreTimerImp.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/WIN32/OgreMinGWSupport.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/Threading" TYPE FILE FILES
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/Threading/OgreThreadDefines.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/Threading/OgreThreadHeaders.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/Threading/OgreDefaultWorkQueue.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/Threading/OgreThreadDefinesBoost.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/Threading/OgreThreadHeadersBoost.h"
    "C:/CSC4903/ogre_src_v1-8-1/OgreMain/include/Threading/OgreDefaultWorkQueueStandard.h"
    )
endif()

