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
CMAKE_SOURCE_DIR = /home/ubu/CLionProjects/LearningC.git/Linux/Let_us_C/Chapter_1/first

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubu/CLionProjects/LearningC.git/Linux/Let_us_C/Chapter_1/first/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/some.c.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/some.c.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/some.c.dir/flags.make

CMakeFiles/some.c.dir/some.c.o: CMakeFiles/some.c.dir/flags.make
CMakeFiles/some.c.dir/some.c.o: ../some.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubu/CLionProjects/LearningC.git/Linux/Let_us_C/Chapter_1/first/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/some.c.dir/some.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/some.c.dir/some.c.o   -c /home/ubu/CLionProjects/LearningC.git/Linux/Let_us_C/Chapter_1/first/some.c

CMakeFiles/some.c.dir/some.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/some.c.dir/some.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubu/CLionProjects/LearningC.git/Linux/Let_us_C/Chapter_1/first/some.c > CMakeFiles/some.c.dir/some.c.i

CMakeFiles/some.c.dir/some.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/some.c.dir/some.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubu/CLionProjects/LearningC.git/Linux/Let_us_C/Chapter_1/first/some.c -o CMakeFiles/some.c.dir/some.c.s

CMakeFiles/some.c.dir/some.c.o.requires:

.PHONY : CMakeFiles/some.c.dir/some.c.o.requires

CMakeFiles/some.c.dir/some.c.o.provides: CMakeFiles/some.c.dir/some.c.o.requires
	$(MAKE) -f CMakeFiles/some.c.dir/build.make CMakeFiles/some.c.dir/some.c.o.provides.build
.PHONY : CMakeFiles/some.c.dir/some.c.o.provides

CMakeFiles/some.c.dir/some.c.o.provides.build: CMakeFiles/some.c.dir/some.c.o


# Object files for target some.c
some_c_OBJECTS = \
"CMakeFiles/some.c.dir/some.c.o"

# External object files for target some.c
some_c_EXTERNAL_OBJECTS =

some.c: CMakeFiles/some.c.dir/some.c.o
some.c: CMakeFiles/some.c.dir/build.make
some.c: CMakeFiles/some.c.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubu/CLionProjects/LearningC.git/Linux/Let_us_C/Chapter_1/first/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable some.c"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/some.c.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/some.c.dir/build: some.c

.PHONY : CMakeFiles/some.c.dir/build

CMakeFiles/some.c.dir/requires: CMakeFiles/some.c.dir/some.c.o.requires

.PHONY : CMakeFiles/some.c.dir/requires

CMakeFiles/some.c.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/some.c.dir/cmake_clean.cmake
.PHONY : CMakeFiles/some.c.dir/clean

CMakeFiles/some.c.dir/depend:
	cd /home/ubu/CLionProjects/LearningC.git/Linux/Let_us_C/Chapter_1/first/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubu/CLionProjects/LearningC.git/Linux/Let_us_C/Chapter_1/first /home/ubu/CLionProjects/LearningC.git/Linux/Let_us_C/Chapter_1/first /home/ubu/CLionProjects/LearningC.git/Linux/Let_us_C/Chapter_1/first/cmake-build-debug /home/ubu/CLionProjects/LearningC.git/Linux/Let_us_C/Chapter_1/first/cmake-build-debug /home/ubu/CLionProjects/LearningC.git/Linux/Let_us_C/Chapter_1/first/cmake-build-debug/CMakeFiles/some.c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/some.c.dir/depend

