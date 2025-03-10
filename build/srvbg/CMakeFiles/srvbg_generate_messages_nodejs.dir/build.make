# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/art/xj_robot_git/Medical_Robot/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/art/xj_robot_git/Medical_Robot/build

# Utility rule file for srvbg_generate_messages_nodejs.

# Include any custom commands dependencies for this target.
include srvbg/CMakeFiles/srvbg_generate_messages_nodejs.dir/compiler_depend.make

# Include the progress variables for this target.
include srvbg/CMakeFiles/srvbg_generate_messages_nodejs.dir/progress.make

srvbg/CMakeFiles/srvbg_generate_messages_nodejs: /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/bed_recog.js
srvbg/CMakeFiles/srvbg_generate_messages_nodejs: /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/face_recog.js
srvbg/CMakeFiles/srvbg_generate_messages_nodejs: /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/nav_goal.js
srvbg/CMakeFiles/srvbg_generate_messages_nodejs: /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/people_id_lan.js
srvbg/CMakeFiles/srvbg_generate_messages_nodejs: /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/people_id_ui.js
srvbg/CMakeFiles/srvbg_generate_messages_nodejs: /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/recept_start.js
srvbg/CMakeFiles/srvbg_generate_messages_nodejs: /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/visite_start.js

/home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/bed_recog.js: /opt/ros/noetic/lib/gennodejs/gen_nodejs.py
/home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/bed_recog.js: /home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/bed_recog.srv
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/art/xj_robot_git/Medical_Robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating Javascript code from srvbg/bed_recog.srv"
	cd /home/art/xj_robot_git/Medical_Robot/build/srvbg && ../catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/bed_recog.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg -p srvbg -o /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv

/home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/face_recog.js: /opt/ros/noetic/lib/gennodejs/gen_nodejs.py
/home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/face_recog.js: /home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/face_recog.srv
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/art/xj_robot_git/Medical_Robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating Javascript code from srvbg/face_recog.srv"
	cd /home/art/xj_robot_git/Medical_Robot/build/srvbg && ../catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/face_recog.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg -p srvbg -o /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv

/home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/nav_goal.js: /opt/ros/noetic/lib/gennodejs/gen_nodejs.py
/home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/nav_goal.js: /home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/nav_goal.srv
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/art/xj_robot_git/Medical_Robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating Javascript code from srvbg/nav_goal.srv"
	cd /home/art/xj_robot_git/Medical_Robot/build/srvbg && ../catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/nav_goal.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg -p srvbg -o /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv

/home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/people_id_lan.js: /opt/ros/noetic/lib/gennodejs/gen_nodejs.py
/home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/people_id_lan.js: /home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_lan.srv
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/art/xj_robot_git/Medical_Robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating Javascript code from srvbg/people_id_lan.srv"
	cd /home/art/xj_robot_git/Medical_Robot/build/srvbg && ../catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_lan.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg -p srvbg -o /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv

/home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/people_id_ui.js: /opt/ros/noetic/lib/gennodejs/gen_nodejs.py
/home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/people_id_ui.js: /home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_ui.srv
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/art/xj_robot_git/Medical_Robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating Javascript code from srvbg/people_id_ui.srv"
	cd /home/art/xj_robot_git/Medical_Robot/build/srvbg && ../catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/people_id_ui.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg -p srvbg -o /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv

/home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/recept_start.js: /opt/ros/noetic/lib/gennodejs/gen_nodejs.py
/home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/recept_start.js: /home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/recept_start.srv
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/art/xj_robot_git/Medical_Robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Generating Javascript code from srvbg/recept_start.srv"
	cd /home/art/xj_robot_git/Medical_Robot/build/srvbg && ../catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/recept_start.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg -p srvbg -o /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv

/home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/visite_start.js: /opt/ros/noetic/lib/gennodejs/gen_nodejs.py
/home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/visite_start.js: /home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/visite_start.srv
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/art/xj_robot_git/Medical_Robot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Generating Javascript code from srvbg/visite_start.srv"
	cd /home/art/xj_robot_git/Medical_Robot/build/srvbg && ../catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/art/xj_robot_git/Medical_Robot/src/srvbg/srv/visite_start.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg -p srvbg -o /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv

srvbg_generate_messages_nodejs: srvbg/CMakeFiles/srvbg_generate_messages_nodejs
srvbg_generate_messages_nodejs: /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/bed_recog.js
srvbg_generate_messages_nodejs: /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/face_recog.js
srvbg_generate_messages_nodejs: /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/nav_goal.js
srvbg_generate_messages_nodejs: /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/people_id_lan.js
srvbg_generate_messages_nodejs: /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/people_id_ui.js
srvbg_generate_messages_nodejs: /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/recept_start.js
srvbg_generate_messages_nodejs: /home/art/xj_robot_git/Medical_Robot/devel/share/gennodejs/ros/srvbg/srv/visite_start.js
srvbg_generate_messages_nodejs: srvbg/CMakeFiles/srvbg_generate_messages_nodejs.dir/build.make
.PHONY : srvbg_generate_messages_nodejs

# Rule to build all files generated by this target.
srvbg/CMakeFiles/srvbg_generate_messages_nodejs.dir/build: srvbg_generate_messages_nodejs
.PHONY : srvbg/CMakeFiles/srvbg_generate_messages_nodejs.dir/build

srvbg/CMakeFiles/srvbg_generate_messages_nodejs.dir/clean:
	cd /home/art/xj_robot_git/Medical_Robot/build/srvbg && $(CMAKE_COMMAND) -P CMakeFiles/srvbg_generate_messages_nodejs.dir/cmake_clean.cmake
.PHONY : srvbg/CMakeFiles/srvbg_generate_messages_nodejs.dir/clean

srvbg/CMakeFiles/srvbg_generate_messages_nodejs.dir/depend:
	cd /home/art/xj_robot_git/Medical_Robot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/art/xj_robot_git/Medical_Robot/src /home/art/xj_robot_git/Medical_Robot/src/srvbg /home/art/xj_robot_git/Medical_Robot/build /home/art/xj_robot_git/Medical_Robot/build/srvbg /home/art/xj_robot_git/Medical_Robot/build/srvbg/CMakeFiles/srvbg_generate_messages_nodejs.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : srvbg/CMakeFiles/srvbg_generate_messages_nodejs.dir/depend

