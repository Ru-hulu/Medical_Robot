# Install script for directory: /home/art/xj_robot_git/Medical_Robot/src

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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/art/xj_robot_git/Medical_Robot/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/art/xj_robot_git/Medical_Robot/install" TYPE PROGRAM FILES "/home/art/xj_robot_git/Medical_Robot/build/catkin_generated/installspace/_setup_util.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/art/xj_robot_git/Medical_Robot/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/art/xj_robot_git/Medical_Robot/install" TYPE PROGRAM FILES "/home/art/xj_robot_git/Medical_Robot/build/catkin_generated/installspace/env.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/art/xj_robot_git/Medical_Robot/install/setup.bash;/home/art/xj_robot_git/Medical_Robot/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/art/xj_robot_git/Medical_Robot/install" TYPE FILE FILES
    "/home/art/xj_robot_git/Medical_Robot/build/catkin_generated/installspace/setup.bash"
    "/home/art/xj_robot_git/Medical_Robot/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/art/xj_robot_git/Medical_Robot/install/setup.sh;/home/art/xj_robot_git/Medical_Robot/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/art/xj_robot_git/Medical_Robot/install" TYPE FILE FILES
    "/home/art/xj_robot_git/Medical_Robot/build/catkin_generated/installspace/setup.sh"
    "/home/art/xj_robot_git/Medical_Robot/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/art/xj_robot_git/Medical_Robot/install/setup.zsh;/home/art/xj_robot_git/Medical_Robot/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/art/xj_robot_git/Medical_Robot/install" TYPE FILE FILES
    "/home/art/xj_robot_git/Medical_Robot/build/catkin_generated/installspace/setup.zsh"
    "/home/art/xj_robot_git/Medical_Robot/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/art/xj_robot_git/Medical_Robot/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/art/xj_robot_git/Medical_Robot/install" TYPE FILE FILES "/home/art/xj_robot_git/Medical_Robot/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/art/xj_robot_git/Medical_Robot/build/gtest/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/move_base_flex/move_base_flex/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/navigation/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation_experimental/navigation_experimental/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/fast_gicp/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/move_base_flex/mbf_abstract_core/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/move_base_flex/mbf_msgs/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/map_server/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/srvbg/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/car/car_move/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/hdl_global_localization/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/livox_repub/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/ndt_omp/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/pcd2pgm/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/amcl/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/fake_localization/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/hdl_localization/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/move_base_flex/mbf_utility/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/move_base_flex/mbf_abstract_nav/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/move_base_flex/mbf_simple_nav/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation_experimental/pose_base_controller/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/car/car_driver/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/visite_node/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/voxel_grid/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/costmap_2d/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/costmap_prohibition_layer/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/nav_core/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/base_local_planner/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation_experimental/assisted_teleop/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/carrot_planner/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/clear_costmap_recovery/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/dwa_local_planner/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation_experimental/goal_passer/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/move_base_flex/mbf_costmap_core/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/move_base_flex/mbf_costmap_nav/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/move_slow_and_clear/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/navfn/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/global_planner/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation_experimental/pose_follower/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/rotate_recovery/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/move_base/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation_experimental/sbpl_lattice_planner/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation_experimental/sbpl_recovery/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/teb_local_planner/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation_experimental/twist_recovery/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/pnc/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/simu/cmake_install.cmake")
  include("/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/slam/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
  file(WRITE "/home/art/xj_robot_git/Medical_Robot/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
