# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "xj_robot_pnc: 0 messages, 5 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(xj_robot_pnc_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/exe_path.srv" NAME_WE)
add_custom_target(_xj_robot_pnc_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xj_robot_pnc" "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/exe_path.srv" ""
)

get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_start.srv" NAME_WE)
add_custom_target(_xj_robot_pnc_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xj_robot_pnc" "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_start.srv" ""
)

get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_stop.srv" NAME_WE)
add_custom_target(_xj_robot_pnc_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xj_robot_pnc" "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_stop.srv" ""
)

get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/xj_robot_task.srv" NAME_WE)
add_custom_target(_xj_robot_pnc_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xj_robot_pnc" "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/xj_robot_task.srv" ""
)

get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/nav_goal.srv" NAME_WE)
add_custom_target(_xj_robot_pnc_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xj_robot_pnc" "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/nav_goal.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/exe_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_cpp(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_cpp(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_cpp(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/xj_robot_task.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_cpp(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/nav_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xj_robot_pnc
)

### Generating Module File
_generate_module_cpp(xj_robot_pnc
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xj_robot_pnc
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(xj_robot_pnc_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(xj_robot_pnc_generate_messages xj_robot_pnc_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/exe_path.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_cpp _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_start.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_cpp _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_stop.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_cpp _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/xj_robot_task.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_cpp _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/nav_goal.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_cpp _xj_robot_pnc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xj_robot_pnc_gencpp)
add_dependencies(xj_robot_pnc_gencpp xj_robot_pnc_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xj_robot_pnc_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/exe_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_eus(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_eus(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_eus(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/xj_robot_task.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_eus(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/nav_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xj_robot_pnc
)

### Generating Module File
_generate_module_eus(xj_robot_pnc
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xj_robot_pnc
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(xj_robot_pnc_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(xj_robot_pnc_generate_messages xj_robot_pnc_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/exe_path.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_eus _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_start.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_eus _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_stop.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_eus _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/xj_robot_task.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_eus _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/nav_goal.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_eus _xj_robot_pnc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xj_robot_pnc_geneus)
add_dependencies(xj_robot_pnc_geneus xj_robot_pnc_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xj_robot_pnc_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/exe_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_lisp(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_lisp(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_lisp(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/xj_robot_task.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_lisp(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/nav_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xj_robot_pnc
)

### Generating Module File
_generate_module_lisp(xj_robot_pnc
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xj_robot_pnc
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(xj_robot_pnc_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(xj_robot_pnc_generate_messages xj_robot_pnc_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/exe_path.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_lisp _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_start.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_lisp _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_stop.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_lisp _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/xj_robot_task.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_lisp _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/nav_goal.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_lisp _xj_robot_pnc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xj_robot_pnc_genlisp)
add_dependencies(xj_robot_pnc_genlisp xj_robot_pnc_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xj_robot_pnc_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/exe_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_nodejs(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_nodejs(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_nodejs(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/xj_robot_task.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_nodejs(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/nav_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xj_robot_pnc
)

### Generating Module File
_generate_module_nodejs(xj_robot_pnc
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xj_robot_pnc
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(xj_robot_pnc_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(xj_robot_pnc_generate_messages xj_robot_pnc_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/exe_path.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_nodejs _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_start.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_nodejs _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_stop.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_nodejs _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/xj_robot_task.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_nodejs _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/nav_goal.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_nodejs _xj_robot_pnc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xj_robot_pnc_gennodejs)
add_dependencies(xj_robot_pnc_gennodejs xj_robot_pnc_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xj_robot_pnc_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/exe_path.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_py(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_py(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_py(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/xj_robot_task.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xj_robot_pnc
)
_generate_srv_py(xj_robot_pnc
  "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/nav_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xj_robot_pnc
)

### Generating Module File
_generate_module_py(xj_robot_pnc
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xj_robot_pnc
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(xj_robot_pnc_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(xj_robot_pnc_generate_messages xj_robot_pnc_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/exe_path.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_py _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_start.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_py _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/record_stop.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_py _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/xj_robot_task.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_py _xj_robot_pnc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/pnc/srv/nav_goal.srv" NAME_WE)
add_dependencies(xj_robot_pnc_generate_messages_py _xj_robot_pnc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xj_robot_pnc_genpy)
add_dependencies(xj_robot_pnc_genpy xj_robot_pnc_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xj_robot_pnc_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xj_robot_pnc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xj_robot_pnc
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xj_robot_pnc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/xj_robot_pnc
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xj_robot_pnc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xj_robot_pnc
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xj_robot_pnc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/xj_robot_pnc
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xj_robot_pnc)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xj_robot_pnc\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xj_robot_pnc
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
