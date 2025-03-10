# Install script for directory: /home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/simu

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xj_robot_simu/msg" TYPE FILE FILES
    "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/simu/msg/carpose.msg"
    "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/simu/msg/fusion_analysis.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xj_robot_simu/cmake" TYPE FILE FILES "/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/simu/catkin_generated/installspace/xj_robot_simu-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/art/xj_robot_git/Medical_Robot/devel/include/xj_robot_simu")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/art/xj_robot_git/Medical_Robot/devel/share/roseus/ros/xj_robot_simu")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/art/xj_robot_git/Medical_Robot/devel/share/common-lisp/ros/xj_robot_simu")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/xj_robot_simu")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/art/xj_robot_git/Medical_Robot/devel/lib/python3/dist-packages/xj_robot_simu")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/art/xj_robot_git/Medical_Robot/devel/lib/python3/dist-packages/xj_robot_simu")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/simu/catkin_generated/installspace/xj_robot_simu.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xj_robot_simu/cmake" TYPE FILE FILES "/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/simu/catkin_generated/installspace/xj_robot_simu-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xj_robot_simu/cmake" TYPE FILE FILES
    "/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/simu/catkin_generated/installspace/xj_robot_simuConfig.cmake"
    "/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/simu/catkin_generated/installspace/xj_robot_simuConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xj_robot_simu" TYPE FILE FILES "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/simu/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/xj_robot_simu" TYPE PROGRAM FILES "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/simu/teleop/teleop_key")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/xj_robot_simu" TYPE DIRECTORY FILES "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/simu/include" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xj_robot_simu" TYPE DIRECTORY FILES
    "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/simu/launch"
    "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/simu/rviz"
    "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/simu/urdf"
    "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/simu/worlds"
    )
endif()

