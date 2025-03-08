cmake_minimum_required(VERSION 3.0.2)
project(srvbg)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  message_generation
  message_runtime
  roscpp
  rospy
  std_msgs
  nav_msgs
 )

add_service_files(
  FILES
  bed_recog.srv  
  face_recog.srv  
  nav_goal.srv  
  people_id_lan.srv  
  people_id_ui.srv  
  recept_start.srv  
  visite_start.srv
  )


generate_messages(
  DEPENDENCIES
  std_msgs
  nav_msgs
)


catkin_package(
  CATKIN_DEPENDS message_generation message_runtime roscpp rospy std_msgs nav_msgs
)


include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

