# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.9

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2017.3.1\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2017.3.1\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = F:\Documents\Projects_C\Learning\factorial

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\Documents\Projects_C\Learning\factorial\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/factorial.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/factorial.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/factorial.dir/flags.make

CMakeFiles/factorial.dir/main.c.obj: CMakeFiles/factorial.dir/flags.make
CMakeFiles/factorial.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\Documents\Projects_C\Learning\factorial\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/factorial.dir/main.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\factorial.dir\main.c.obj   -c F:\Documents\Projects_C\Learning\factorial\main.c

CMakeFiles/factorial.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/factorial.dir/main.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E F:\Documents\Projects_C\Learning\factorial\main.c > CMakeFiles\factorial.dir\main.c.i

CMakeFiles/factorial.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/factorial.dir/main.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S F:\Documents\Projects_C\Learning\factorial\main.c -o CMakeFiles\factorial.dir\main.c.s

CMakeFiles/factorial.dir/main.c.obj.requires:

.PHONY : CMakeFiles/factorial.dir/main.c.obj.requires

CMakeFiles/factorial.dir/main.c.obj.provides: CMakeFiles/factorial.dir/main.c.obj.requires
	$(MAKE) -f CMakeFiles\factorial.dir\build.make CMakeFiles/factorial.dir/main.c.obj.provides.build
.PHONY : CMakeFiles/factorial.dir/main.c.obj.provides

CMakeFiles/factorial.dir/main.c.obj.provides.build: CMakeFiles/factorial.dir/main.c.obj


# Object files for target factorial
factorial_OBJECTS = \
"CMakeFiles/factorial.dir/main.c.obj"

# External object files for target factorial
factorial_EXTERNAL_OBJECTS =

factorial.exe: CMakeFiles/factorial.dir/main.c.obj
factorial.exe: CMakeFiles/factorial.dir/build.make
factorial.exe: CMakeFiles/factorial.dir/linklibs.rsp
factorial.exe: CMakeFiles/factorial.dir/objects1.rsp
factorial.exe: CMakeFiles/factorial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\Documents\Projects_C\Learning\factorial\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable factorial.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\factorial.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/factorial.dir/build: factorial.exe

.PHONY : CMakeFiles/factorial.dir/build

CMakeFiles/factorial.dir/requires: CMakeFiles/factorial.dir/main.c.obj.requires

.PHONY : CMakeFiles/factorial.dir/requires

CMakeFiles/factorial.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\factorial.dir\cmake_clean.cmake
.PHONY : CMakeFiles/factorial.dir/clean

CMakeFiles/factorial.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\Documents\Projects_C\Learning\factorial F:\Documents\Projects_C\Learning\factorial F:\Documents\Projects_C\Learning\factorial\cmake-build-debug F:\Documents\Projects_C\Learning\factorial\cmake-build-debug F:\Documents\Projects_C\Learning\factorial\cmake-build-debug\CMakeFiles\factorial.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/factorial.dir/depend

