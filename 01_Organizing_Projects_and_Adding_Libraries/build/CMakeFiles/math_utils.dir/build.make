# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ezzat/Downloads/cmake_study/tutorial/01_Organizing_Projects_and_Adding_Libraries

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ezzat/Downloads/cmake_study/tutorial/01_Organizing_Projects_and_Adding_Libraries/build

# Include any dependencies generated for this target.
include CMakeFiles/math_utils.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/math_utils.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/math_utils.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/math_utils.dir/flags.make

CMakeFiles/math_utils.dir/src/math_utils.c.o: CMakeFiles/math_utils.dir/flags.make
CMakeFiles/math_utils.dir/src/math_utils.c.o: ../src/math_utils.c
CMakeFiles/math_utils.dir/src/math_utils.c.o: CMakeFiles/math_utils.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ezzat/Downloads/cmake_study/tutorial/01_Organizing_Projects_and_Adding_Libraries/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/math_utils.dir/src/math_utils.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/math_utils.dir/src/math_utils.c.o -MF CMakeFiles/math_utils.dir/src/math_utils.c.o.d -o CMakeFiles/math_utils.dir/src/math_utils.c.o -c /home/ezzat/Downloads/cmake_study/tutorial/01_Organizing_Projects_and_Adding_Libraries/src/math_utils.c

CMakeFiles/math_utils.dir/src/math_utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/math_utils.dir/src/math_utils.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ezzat/Downloads/cmake_study/tutorial/01_Organizing_Projects_and_Adding_Libraries/src/math_utils.c > CMakeFiles/math_utils.dir/src/math_utils.c.i

CMakeFiles/math_utils.dir/src/math_utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/math_utils.dir/src/math_utils.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ezzat/Downloads/cmake_study/tutorial/01_Organizing_Projects_and_Adding_Libraries/src/math_utils.c -o CMakeFiles/math_utils.dir/src/math_utils.c.s

# Object files for target math_utils
math_utils_OBJECTS = \
"CMakeFiles/math_utils.dir/src/math_utils.c.o"

# External object files for target math_utils
math_utils_EXTERNAL_OBJECTS =

libmath_utils.a: CMakeFiles/math_utils.dir/src/math_utils.c.o
libmath_utils.a: CMakeFiles/math_utils.dir/build.make
libmath_utils.a: CMakeFiles/math_utils.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ezzat/Downloads/cmake_study/tutorial/01_Organizing_Projects_and_Adding_Libraries/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libmath_utils.a"
	$(CMAKE_COMMAND) -P CMakeFiles/math_utils.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/math_utils.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/math_utils.dir/build: libmath_utils.a
.PHONY : CMakeFiles/math_utils.dir/build

CMakeFiles/math_utils.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/math_utils.dir/cmake_clean.cmake
.PHONY : CMakeFiles/math_utils.dir/clean

CMakeFiles/math_utils.dir/depend:
	cd /home/ezzat/Downloads/cmake_study/tutorial/01_Organizing_Projects_and_Adding_Libraries/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ezzat/Downloads/cmake_study/tutorial/01_Organizing_Projects_and_Adding_Libraries /home/ezzat/Downloads/cmake_study/tutorial/01_Organizing_Projects_and_Adding_Libraries /home/ezzat/Downloads/cmake_study/tutorial/01_Organizing_Projects_and_Adding_Libraries/build /home/ezzat/Downloads/cmake_study/tutorial/01_Organizing_Projects_and_Adding_Libraries/build /home/ezzat/Downloads/cmake_study/tutorial/01_Organizing_Projects_and_Adding_Libraries/build/CMakeFiles/math_utils.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/math_utils.dir/depend

