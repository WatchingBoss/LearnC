# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion-2017.3.1/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion-2017.3.1/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubu/CLionProjects/LearningC/second

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubu/CLionProjects/LearningC/second/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/second.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/second.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/second.dir/flags.make

CMakeFiles/second.dir/main.c.o: CMakeFiles/second.dir/flags.make
CMakeFiles/second.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubu/CLionProjects/LearningC/second/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/second.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/second.dir/main.c.o   -c /home/ubu/CLionProjects/LearningC/second/main.c

CMakeFiles/second.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/second.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubu/CLionProjects/LearningC/second/main.c > CMakeFiles/second.dir/main.c.i

CMakeFiles/second.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/second.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubu/CLionProjects/LearningC/second/main.c -o CMakeFiles/second.dir/main.c.s

CMakeFiles/second.dir/main.c.o.requires:

.PHONY : CMakeFiles/second.dir/main.c.o.requires

CMakeFiles/second.dir/main.c.o.provides: CMakeFiles/second.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/second.dir/build.make CMakeFiles/second.dir/main.c.o.provides.build
.PHONY : CMakeFiles/second.dir/main.c.o.provides

CMakeFiles/second.dir/main.c.o.provides.build: CMakeFiles/second.dir/main.c.o


# Object files for target second
second_OBJECTS = \
"CMakeFiles/second.dir/main.c.o"

# External object files for target second
second_EXTERNAL_OBJECTS =

second: CMakeFiles/second.dir/main.c.o
second: CMakeFiles/second.dir/build.make
second: CMakeFiles/second.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubu/CLionProjects/LearningC/second/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable second"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/second.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/second.dir/build: second

.PHONY : CMakeFiles/second.dir/build

CMakeFiles/second.dir/requires: CMakeFiles/second.dir/main.c.o.requires

.PHONY : CMakeFiles/second.dir/requires

CMakeFiles/second.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/second.dir/cmake_clean.cmake
.PHONY : CMakeFiles/second.dir/clean

CMakeFiles/second.dir/depend:
	cd /home/ubu/CLionProjects/LearningC/second/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubu/CLionProjects/LearningC/second /home/ubu/CLionProjects/LearningC/second /home/ubu/CLionProjects/LearningC/second/cmake-build-debug /home/ubu/CLionProjects/LearningC/second/cmake-build-debug /home/ubu/CLionProjects/LearningC/second/cmake-build-debug/CMakeFiles/second.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/second.dir/depend

