# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "srvbg: 0 messages, 7 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(srvbg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/bed_recog.srv" NAME_WE)
add_custom_target(_srvbg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srvbg" "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/bed_recog.srv" ""
)

get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/face_recog.srv" NAME_WE)
add_custom_target(_srvbg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srvbg" "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/face_recog.srv" ""
)

get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/nav_goal.srv" NAME_WE)
add_custom_target(_srvbg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srvbg" "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/nav_goal.srv" ""
)

get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_lan.srv" NAME_WE)
add_custom_target(_srvbg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srvbg" "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_lan.srv" ""
)

get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_ui.srv" NAME_WE)
add_custom_target(_srvbg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srvbg" "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_ui.srv" ""
)

get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/recept_start.srv" NAME_WE)
add_custom_target(_srvbg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srvbg" "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/recept_start.srv" ""
)

get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/visite_start.srv" NAME_WE)
add_custom_target(_srvbg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srvbg" "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/visite_start.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/bed_recog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srvbg
)
_generate_srv_cpp(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/face_recog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srvbg
)
_generate_srv_cpp(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/nav_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srvbg
)
_generate_srv_cpp(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_lan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srvbg
)
_generate_srv_cpp(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_ui.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srvbg
)
_generate_srv_cpp(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/recept_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srvbg
)
_generate_srv_cpp(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/visite_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srvbg
)

### Generating Module File
_generate_module_cpp(srvbg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srvbg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(srvbg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(srvbg_generate_messages srvbg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/bed_recog.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_cpp _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/face_recog.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_cpp _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/nav_goal.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_cpp _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_lan.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_cpp _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_ui.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_cpp _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/recept_start.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_cpp _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/visite_start.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_cpp _srvbg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srvbg_gencpp)
add_dependencies(srvbg_gencpp srvbg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srvbg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/bed_recog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srvbg
)
_generate_srv_eus(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/face_recog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srvbg
)
_generate_srv_eus(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/nav_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srvbg
)
_generate_srv_eus(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_lan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srvbg
)
_generate_srv_eus(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_ui.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srvbg
)
_generate_srv_eus(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/recept_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srvbg
)
_generate_srv_eus(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/visite_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srvbg
)

### Generating Module File
_generate_module_eus(srvbg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srvbg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(srvbg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(srvbg_generate_messages srvbg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/bed_recog.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_eus _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/face_recog.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_eus _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/nav_goal.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_eus _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_lan.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_eus _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_ui.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_eus _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/recept_start.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_eus _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/visite_start.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_eus _srvbg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srvbg_geneus)
add_dependencies(srvbg_geneus srvbg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srvbg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/bed_recog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srvbg
)
_generate_srv_lisp(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/face_recog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srvbg
)
_generate_srv_lisp(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/nav_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srvbg
)
_generate_srv_lisp(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_lan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srvbg
)
_generate_srv_lisp(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_ui.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srvbg
)
_generate_srv_lisp(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/recept_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srvbg
)
_generate_srv_lisp(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/visite_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srvbg
)

### Generating Module File
_generate_module_lisp(srvbg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srvbg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(srvbg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(srvbg_generate_messages srvbg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/bed_recog.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_lisp _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/face_recog.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_lisp _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/nav_goal.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_lisp _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_lan.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_lisp _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_ui.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_lisp _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/recept_start.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_lisp _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/visite_start.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_lisp _srvbg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srvbg_genlisp)
add_dependencies(srvbg_genlisp srvbg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srvbg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/bed_recog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srvbg
)
_generate_srv_nodejs(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/face_recog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srvbg
)
_generate_srv_nodejs(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/nav_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srvbg
)
_generate_srv_nodejs(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_lan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srvbg
)
_generate_srv_nodejs(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_ui.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srvbg
)
_generate_srv_nodejs(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/recept_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srvbg
)
_generate_srv_nodejs(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/visite_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srvbg
)

### Generating Module File
_generate_module_nodejs(srvbg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srvbg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(srvbg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(srvbg_generate_messages srvbg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/bed_recog.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_nodejs _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/face_recog.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_nodejs _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/nav_goal.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_nodejs _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_lan.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_nodejs _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_ui.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_nodejs _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/recept_start.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_nodejs _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/visite_start.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_nodejs _srvbg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srvbg_gennodejs)
add_dependencies(srvbg_gennodejs srvbg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srvbg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/bed_recog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srvbg
)
_generate_srv_py(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/face_recog.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srvbg
)
_generate_srv_py(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/nav_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srvbg
)
_generate_srv_py(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_lan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srvbg
)
_generate_srv_py(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_ui.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srvbg
)
_generate_srv_py(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/recept_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srvbg
)
_generate_srv_py(srvbg
  "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/visite_start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srvbg
)

### Generating Module File
_generate_module_py(srvbg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srvbg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(srvbg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(srvbg_generate_messages srvbg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/bed_recog.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_py _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/face_recog.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_py _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/nav_goal.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_py _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_lan.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_py _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_ui.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_py _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/recept_start.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_py _srvbg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/visite_start.srv" NAME_WE)
add_dependencies(srvbg_generate_messages_py _srvbg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srvbg_genpy)
add_dependencies(srvbg_genpy srvbg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srvbg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srvbg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srvbg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(srvbg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(srvbg_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srvbg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srvbg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(srvbg_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(srvbg_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srvbg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srvbg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(srvbg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(srvbg_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srvbg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srvbg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(srvbg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(srvbg_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srvbg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srvbg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srvbg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(srvbg_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(srvbg_generate_messages_py nav_msgs_generate_messages_py)
endif()
