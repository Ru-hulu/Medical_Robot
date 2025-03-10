# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "car_driver: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icar_driver:/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/car/car_driver/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(car_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/car/car_driver/msg/RealCMD.msg" NAME_WE)
add_custom_target(_car_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "car_driver" "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/car/car_driver/msg/RealCMD.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(car_driver
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/car/car_driver/msg/RealCMD.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_driver
)

### Generating Services

### Generating Module File
_generate_module_cpp(car_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(car_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(car_driver_generate_messages car_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/car/car_driver/msg/RealCMD.msg" NAME_WE)
add_dependencies(car_driver_generate_messages_cpp _car_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(car_driver_gencpp)
add_dependencies(car_driver_gencpp car_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS car_driver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(car_driver
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/car/car_driver/msg/RealCMD.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_driver
)

### Generating Services

### Generating Module File
_generate_module_eus(car_driver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_driver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(car_driver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(car_driver_generate_messages car_driver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/car/car_driver/msg/RealCMD.msg" NAME_WE)
add_dependencies(car_driver_generate_messages_eus _car_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(car_driver_geneus)
add_dependencies(car_driver_geneus car_driver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS car_driver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(car_driver
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/car/car_driver/msg/RealCMD.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_driver
)

### Generating Services

### Generating Module File
_generate_module_lisp(car_driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(car_driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(car_driver_generate_messages car_driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/car/car_driver/msg/RealCMD.msg" NAME_WE)
add_dependencies(car_driver_generate_messages_lisp _car_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(car_driver_genlisp)
add_dependencies(car_driver_genlisp car_driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS car_driver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(car_driver
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/car/car_driver/msg/RealCMD.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_driver
)

### Generating Services

### Generating Module File
_generate_module_nodejs(car_driver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_driver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(car_driver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(car_driver_generate_messages car_driver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/car/car_driver/msg/RealCMD.msg" NAME_WE)
add_dependencies(car_driver_generate_messages_nodejs _car_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(car_driver_gennodejs)
add_dependencies(car_driver_gennodejs car_driver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS car_driver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(car_driver
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/car/car_driver/msg/RealCMD.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_driver
)

### Generating Services

### Generating Module File
_generate_module_py(car_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(car_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(car_driver_generate_messages car_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/car/car_driver/msg/RealCMD.msg" NAME_WE)
add_dependencies(car_driver_generate_messages_py _car_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(car_driver_genpy)
add_dependencies(car_driver_genpy car_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS car_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/car_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/car_driver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/car_driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/car_driver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/car_driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
