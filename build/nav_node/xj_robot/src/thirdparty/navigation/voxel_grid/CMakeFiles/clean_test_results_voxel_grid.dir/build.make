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

# Utility rule file for clean_test_results_voxel_grid.

# Include any custom commands dependencies for this target.
include nav_node/xj_robot/src/thirdparty/navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/compiler_depend.make

# Include the progress variables for this target.
include nav_node/xj_robot/src/thirdparty/navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/progress.make

nav_node/xj_robot/src/thirdparty/navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid:
	cd /home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/voxel_grid && /usr/bin/python3 /opt/ros/noetic/share/catkin/cmake/test/remove_test_results.py /home/art/xj_robot_git/Medical_Robot/build/test_results/voxel_grid

clean_test_results_voxel_grid: nav_node/xj_robot/src/thirdparty/navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid
clean_test_results_voxel_grid: nav_node/xj_robot/src/thirdparty/navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/build.make
.PHONY : clean_test_results_voxel_grid

# Rule to build all files generated by this target.
nav_node/xj_robot/src/thirdparty/navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/build: clean_test_results_voxel_grid
.PHONY : nav_node/xj_robot/src/thirdparty/navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/build

nav_node/xj_robot/src/thirdparty/navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/clean:
	cd /home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/voxel_grid && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_voxel_grid.dir/cmake_clean.cmake
.PHONY : nav_node/xj_robot/src/thirdparty/navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/clean

nav_node/xj_robot/src/thirdparty/navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/depend:
	cd /home/art/xj_robot_git/Medical_Robot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/art/xj_robot_git/Medical_Robot/src /home/art/xj_robot_git/Medical_Robot/src/nav_node/xj_robot/src/thirdparty/navigation/voxel_grid /home/art/xj_robot_git/Medical_Robot/build /home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/voxel_grid /home/art/xj_robot_git/Medical_Robot/build/nav_node/xj_robot/src/thirdparty/navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : nav_node/xj_robot/src/thirdparty/navigation/voxel_grid/CMakeFiles/clean_test_results_voxel_grid.dir/depend

