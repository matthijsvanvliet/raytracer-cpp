# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /home/matthijs/cmake-3.19.2/bin/cmake

# The command to remove a file.
RM = /home/matthijs/cmake-3.19.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/Matthijs/CLionProjects/Raytracer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug

# Include any dependencies generated for this target.
include test/CMakeFiles/test_run.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test_run.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test_run.dir/flags.make

test/CMakeFiles/test_run.dir/TupleTest.cpp.o: test/CMakeFiles/test_run.dir/flags.make
test/CMakeFiles/test_run.dir/TupleTest.cpp.o: ../test/TupleTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/test_run.dir/TupleTest.cpp.o"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_run.dir/TupleTest.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/TupleTest.cpp

test/CMakeFiles/test_run.dir/TupleTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_run.dir/TupleTest.cpp.i"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/TupleTest.cpp > CMakeFiles/test_run.dir/TupleTest.cpp.i

test/CMakeFiles/test_run.dir/TupleTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_run.dir/TupleTest.cpp.s"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/TupleTest.cpp -o CMakeFiles/test_run.dir/TupleTest.cpp.s

# Object files for target test_run
test_run_OBJECTS = \
"CMakeFiles/test_run.dir/TupleTest.cpp.o"

# External object files for target test_run
test_run_EXTERNAL_OBJECTS =

test/test_run: test/CMakeFiles/test_run.dir/TupleTest.cpp.o
test/test_run: test/CMakeFiles/test_run.dir/build.make
test/test_run: lib/libgtestd.a
test/test_run: lib/libgtest_maind.a
test/test_run: lib/libgtestd.a
test/test_run: test/CMakeFiles/test_run.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_run"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_run.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test_run.dir/build: test/test_run

.PHONY : test/CMakeFiles/test_run.dir/build

test/CMakeFiles/test_run.dir/clean:
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && $(CMAKE_COMMAND) -P CMakeFiles/test_run.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test_run.dir/clean

test/CMakeFiles/test_run.dir/depend:
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Matthijs/CLionProjects/Raytracer /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test/CMakeFiles/test_run.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/test_run.dir/depend

