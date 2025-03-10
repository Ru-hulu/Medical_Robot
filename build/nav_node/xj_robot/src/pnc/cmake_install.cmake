# Install script for directory: /home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xj_robot_pnc/srv" TYPE FILE FILES
    "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/exe_path.srv"
    "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_start.srv"
    "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_stop.srv"
    "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/xj_robot_task.srv"
    "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/nav_goal.srv"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xj_robot_pnc/cmake" TYPE FILE FILES "/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/pnc/catkin_generated/installspace/xj_robot_pnc-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/art/xj_robot_git/Medical_Robot/devel/include/xj_robot_pnc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/art/xj_robot_git/Medical_Robot/devel/share/roseus/ros/xj_robot_pnc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/art/xj_robot_git/Medical_Robot/devel/share/common-lisp/ros/xj_robot_pnc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/xj_robot_pnc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/art/xj_robot_git/Medical_Robot/devel/lib/python3/dist-packages/xj_robot_pnc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/art/xj_robot_git/Medical_Robot/devel/lib/python3/dist-packages/xj_robot_pnc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/pnc/catkin_generated/installspace/xj_robot_pnc.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xj_robot_pnc/cmake" TYPE FILE FILES "/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/pnc/catkin_generated/installspace/xj_robot_pnc-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xj_robot_pnc/cmake" TYPE FILE FILES
    "/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/pnc/catkin_generated/installspace/xj_robot_pncConfig.cmake"
    "/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/pnc/catkin_generated/installspace/xj_robot_pncConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/xj_robot_pnc" TYPE FILE FILES "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/package.xml")
endif()

