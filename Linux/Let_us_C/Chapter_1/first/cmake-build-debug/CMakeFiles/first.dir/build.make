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
CMAKE_SOURCE_DIR = /home/ubu/CLionProjects/LearningC/Let_us_C/Chapter_1/first

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubu/CLionProjects/LearningC/Let_us_C/Chapter_1/first/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/first.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/first.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/first.dir/flags.make

CMakeFiles/first.dir/main.c.o: CMakeFiles/first.dir/flags.make
CMakeFiles/first.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubu/CLionProjects/LearningC/Let_us_C/Chapter_1/first/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/first.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/first.dir/main.c.o   -c /home/ubu/CLionProjects/LearningC/Let_us_C/Chapter_1/first/main.c

CMakeFiles/first.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/first.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubu/CLionProjects/LearningC/Let_us_C/Chapter_1/first/main.c > CMakeFiles/first.dir/main.c.i

CMakeFiles/first.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/first.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubu/CLionProjects/LearningC/Let_us_C/Chapter_1/first/main.c -o CMakeFiles/first.dir/main.c.s

CMakeFiles/first.dir/main.c.o.requires:

.PHONY : CMakeFiles/first.dir/main.c.o.requires

CMakeFiles/first.dir/main.c.o.provides: CMakeFiles/first.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/first.dir/build.make CMakeFiles/first.dir/main.c.o.provides.build
.PHONY : CMakeFiles/first.dir/main.c.o.provides

CMakeFiles/first.dir/main.c.o.provides.build: CMakeFiles/first.dir/main.c.o


# Object files for target first
first_OBJECTS = \
"CMakeFiles/first.dir/main.c.o"

# External object files for target first
first_EXTERNAL_OBJECTS =

first: CMakeFiles/first.dir/main.c.o
first: CMakeFiles/first.dir/build.make
first: CMakeFiles/first.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubu/CLionProjects/LearningC/Let_us_C/Chapter_1/first/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable first"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/first.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/first.dir/build: first

.PHONY : CMakeFiles/first.dir/build

CMakeFiles/first.dir/requires: CMakeFiles/first.dir/main.c.o.requires

.PHONY : CMakeFiles/first.dir/requires

CMakeFiles/first.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/first.dir/cmake_clean.cmake
.PHONY : CMakeFiles/first.dir/clean

CMakeFiles/first.dir/depend:
	cd /home/ubu/CLionProjects/LearningC/Let_us_C/Chapter_1/first/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubu/CLionProjects/LearningC/Let_us_C/Chapter_1/first /home/ubu/CLionProjects/LearningC/Let_us_C/Chapter_1/first /home/ubu/CLionProjects/LearningC/Let_us_C/Chapter_1/first/cmake-build-debug /home/ubu/CLionProjects/LearningC/Let_us_C/Chapter_1/first/cmake-build-debug /home/ubu/CLionProjects/LearningC/Let_us_C/Chapter_1/first/cmake-build-debug/CMakeFiles/first.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/first.dir/depend

