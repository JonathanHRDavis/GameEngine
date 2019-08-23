# Install script for directory: C:/CSC4903/cegui-0.8.7/cegui/src

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/CSC4903/cegui-0.8.7/build/lib/libCEGUIBase-0.dll.a")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/CSC4903/cegui-0.8.7/build/bin/libCEGUIBase-0.dll")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libCEGUIBase-0.dll" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libCEGUIBase-0.dll")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/TDM-GCC-64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libCEGUIBase-0.dll")
    endif()
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cegui-0/CEGUI" TYPE FILE FILES
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Affector.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Animation.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/AnimationInstance.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/AnimationManager.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Animation_xmlHandler.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Base.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/BasicImage.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/BasicRenderedStringParser.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/BidiVisualMapping.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/BoundSlot.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/CEGUI.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/CentredRenderedString.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/ChainedXMLHandler.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Clipboard.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Colour.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/ColourRect.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/CompositeResourceProvider.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Config_xmlHandler.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/CoordConverter.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/DataContainer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/DefaultLogger.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/DefaultRenderedStringParser.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/DefaultResourceProvider.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/DynamicModule.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Element.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Event.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/EventArgs.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/EventSet.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Exceptions.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/FactoryModule.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/FactoryRegisterer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Font.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/FontGlyph.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/FontManager.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Font_xmlHandler.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/FormattedRenderedString.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/ForwardRefs.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/FreeFunctionSlot.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/FreeTypeFont.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/FribidiVisualMapping.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/FunctorCopySlot.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/FunctorPointerSlot.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/FunctorReferenceBinder.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/FunctorReferenceSlot.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/GUIContext.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/GUILayout_xmlHandler.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/GeometryBuffer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/GlobalEventSet.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/IconvStringTranscoder.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Image.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/ImageCodec.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/ImageFactory.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/ImageManager.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/InjectedInputReceiver.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/InputEvent.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Interpolator.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/IteratorBase.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/JustifiedRenderedString.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/KeyFrame.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/LeftAlignedRenderedString.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/LinkedEvent.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Logger.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/MemberFunctionSlot.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/MemoryAllocatedObject.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/MemoryAllocation.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/MemoryOgreAllocator.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/MemorySTLWrapper.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/MemoryStdAllocator.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/MinibidiVisualMapping.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/MinizipResourceProvider.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/MouseCursor.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/NamedElement.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/NamedXMLResourceManager.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/PCRERegexMatcher.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/PixmapFont.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Property.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/PropertyHelper.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/PropertySet.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Quaternion.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Rect.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/RefCounted.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/RegexMatcher.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/RenderEffect.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/RenderEffectFactory.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/RenderEffectManager.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/RenderQueue.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/RenderTarget.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/RenderedString.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/RenderedStringComponent.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/RenderedStringImageComponent.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/RenderedStringParser.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/RenderedStringTextComponent.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/RenderedStringWidgetComponent.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/RenderedStringWordWrapper.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Renderer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/RenderingContext.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/RenderingSurface.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/RenderingWindow.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/ResourceProvider.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/RightAlignedRenderedString.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Scheme.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/SchemeManager.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Scheme_xmlHandler.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/ScriptModule.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/SimpleTimer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Singleton.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Size.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/SlotFunctorBase.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/String.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/StringTranscoder.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/SubscriberSlot.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/System.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/SystemKeys.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/TextUtils.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Texture.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/TextureTarget.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/TplInterpolators.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/TplProperty.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/TplWRFactoryRegisterer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/TplWindowFactory.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/TplWindowFactoryRegisterer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/TplWindowProperty.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/TplWindowRendererFactory.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/TplWindowRendererProperty.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/TypedProperty.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/UDim.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Vector.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Vertex.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Win32StringTranscoder.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/Window.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/WindowFactory.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/WindowFactoryManager.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/WindowManager.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/WindowRenderer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/WindowRendererManager.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/XMLAttributes.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/XMLHandler.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/XMLParser.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/XMLSerializer.h"
    "C:/CSC4903/cegui-0.8.7/build/cegui/src/../include/CEGUI/Config.h"
    "C:/CSC4903/cegui-0.8.7/build/cegui/src/../include/CEGUI/ModuleConfig.h"
    "C:/CSC4903/cegui-0.8.7/build/cegui/src/../include/CEGUI/Version.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cegui-0/CEGUI/widgets" TYPE FILE FILES
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/All.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ButtonBase.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ClippedContainer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ComboDropList.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Combobox.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/DefaultWindow.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/DragContainer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Editbox.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/FrameWindow.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/GridLayoutContainer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/GroupBox.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/HorizontalLayoutContainer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ItemEntry.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ItemListBase.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ItemListbox.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/LayoutCell.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/LayoutContainer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ListHeader.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ListHeaderSegment.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Listbox.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ListboxItem.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ListboxTextItem.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/MenuBase.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/MenuItem.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Menubar.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/MultiColumnList.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/MultiLineEditbox.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/PopupMenu.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ProgressBar.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/PushButton.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/RadioButton.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ScrollablePane.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Scrollbar.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ScrolledContainer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ScrolledItemListBase.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/SequentialLayoutContainer.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Slider.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Spinner.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/TabButton.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/TabControl.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Thumb.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Titlebar.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/ToggleButton.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Tooltip.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/Tree.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/TreeItem.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/widgets/VerticalLayoutContainer.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cegui-0/CEGUI/falagard" TYPE FILE FILES
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/ComponentBase.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/Dimensions.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/Enums.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/EventAction.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/EventLinkDefinition.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/FalagardPropertyBase.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/FormattingSetting.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/FrameComponent.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/ImageryComponent.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/ImagerySection.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/LayerSpecification.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/NamedArea.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/NamedDefinitionCollator.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/PropertyDefinition.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/PropertyDefinitionBase.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/PropertyInitialiser.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/PropertyLinkDefinition.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/SectionSpecification.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/StateImagery.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/TextComponent.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/WidgetComponent.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/WidgetLookFeel.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/WidgetLookManager.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/XMLEnumHelper.h"
    "C:/CSC4903/cegui-0.8.7/cegui/src/../include/CEGUI/falagard/XMLHandler.h"
    )
endif()

