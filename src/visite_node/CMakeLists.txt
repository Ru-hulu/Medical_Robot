cmake_minimum_required(VERSION 3.0.2)
project(visite_node)
set(CMAKE_BUILD_TYPE "Debug") 
find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  std_srvs
  srvbg
  )
 
catkin_package(
 INCLUDE_DIRS include
 LIBRARIES center_node
 CATKIN_DEPENDS std_msgs std_srvs
 DEPENDS system_lib
)
 
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)
 

add_executable(visite_node src/main.cpp src/visite_node.cpp)

target_link_libraries(visite_node
  ${catkin_LIBRARIES}
)