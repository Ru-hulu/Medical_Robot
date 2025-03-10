# Install script for directory: /home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/thirdparty/navigation_experimental/sbpl_lattice_planner

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/art/xj_robot_git/Medical_Robot/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sbpl_lattice_planner/msg" TYPE FILE FILES "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/thirdparty/navigation_experimental/sbpl_lattice_planner/msg/SBPLLatticePlannerStats.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sbpl_lattice_planner/cmake" TYPE FILE FILES "/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation_experimental/sbpl_lattice_planner/catkin_generated/installspace/sbpl_lattice_planner-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/art/xj_robot_git/Medical_Robot/devel/include/sbpl_lattice_planner")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/art/xj_robot_git/Medical_Robot/devel/share/roseus/ros/sbpl_lattice_planner")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/art/xj_robot_git/Medical_Robot/devel/share/common-lisp/ros/sbpl_lattice_planner")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/sbpl_lattice_planner")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/art/xj_robot_git/Medical_Robot/devel/lib/python3/dist-packages/sbpl_lattice_planner")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/art/xj_robot_git/Medical_Robot/devel/lib/python3/dist-packages/sbpl_lattice_planner")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation_experimental/sbpl_lattice_planner/catkin_generated/installspace/sbpl_lattice_planner.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sbpl_lattice_planner/cmake" TYPE FILE FILES "/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation_experimental/sbpl_lattice_planner/catkin_generated/installspace/sbpl_lattice_planner-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sbpl_lattice_planner/cmake" TYPE FILE FILES
    "/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation_experimental/sbpl_lattice_planner/catkin_generated/installspace/sbpl_lattice_plannerConfig.cmake"
    "/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation_experimental/sbpl_lattice_planner/catkin_generated/installspace/sbpl_lattice_plannerConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sbpl_lattice_planner" TYPE FILE FILES "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/thirdparty/navigation_experimental/sbpl_lattice_planner/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsbpl_lattice_planner.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsbpl_lattice_planner.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsbpl_lattice_planner.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/art/xj_robot_git/Medical_Robot/devel/lib/libsbpl_lattice_planner.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsbpl_lattice_planner.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsbpl_lattice_planner.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsbpl_lattice_planner.so"
         OLD_RPATH "/home/art/xj_robot_git/Medical_Robot/devel/lib:/opt/ros/noetic/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsbpl_lattice_planner.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sbpl_lattice_planner" TYPE DIRECTORY FILES "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/thirdparty/navigation_experimental/sbpl_lattice_planner/include/sbpl_lattice_planner/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/\\.svn$" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sbpl_lattice_planner" TYPE FILE FILES "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/thirdparty/navigation_experimental/sbpl_lattice_planner/bgp_plugin.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sbpl_lattice_planner" TYPE DIRECTORY FILES
    "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/thirdparty/navigation_experimental/sbpl_lattice_planner/launch"
    "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/thirdparty/navigation_experimental/sbpl_lattice_planner/matlab"
    "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/thirdparty/navigation_experimental/sbpl_lattice_planner/rviz"
    "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/thirdparty/navigation_experimental/sbpl_lattice_planner/worlds"
    )
endif()

