execute_process(COMMAND "/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/base_local_planner/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/base_local_planner/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
