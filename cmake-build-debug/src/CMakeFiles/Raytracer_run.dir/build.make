# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /home/matthijs/cmake-3.21.7/bin/cmake

# The command to remove a file.
RM = /home/matthijs/cmake-3.21.7/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/Matthijs/CLionProjects/Raytracer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug

# Include any dependencies generated for this target.
include src/CMakeFiles/Raytracer_run.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/Raytracer_run.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/Raytracer_run.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/Raytracer_run.dir/flags.make

src/CMakeFiles/Raytracer_run.dir/Canvas.cpp.o: src/CMakeFiles/Raytracer_run.dir/flags.make
src/CMakeFiles/Raytracer_run.dir/Canvas.cpp.o: ../src/Canvas.cpp
src/CMakeFiles/Raytracer_run.dir/Canvas.cpp.o: src/CMakeFiles/Raytracer_run.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/Raytracer_run.dir/Canvas.cpp.o"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/Raytracer_run.dir/Canvas.cpp.o -MF CMakeFiles/Raytracer_run.dir/Canvas.cpp.o.d -o CMakeFiles/Raytracer_run.dir/Canvas.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Canvas.cpp

src/CMakeFiles/Raytracer_run.dir/Canvas.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer_run.dir/Canvas.cpp.i"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Canvas.cpp > CMakeFiles/Raytracer_run.dir/Canvas.cpp.i

src/CMakeFiles/Raytracer_run.dir/Canvas.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer_run.dir/Canvas.cpp.s"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Canvas.cpp -o CMakeFiles/Raytracer_run.dir/Canvas.cpp.s

src/CMakeFiles/Raytracer_run.dir/Color.cpp.o: src/CMakeFiles/Raytracer_run.dir/flags.make
src/CMakeFiles/Raytracer_run.dir/Color.cpp.o: ../src/Color.cpp
src/CMakeFiles/Raytracer_run.dir/Color.cpp.o: src/CMakeFiles/Raytracer_run.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/Raytracer_run.dir/Color.cpp.o"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/Raytracer_run.dir/Color.cpp.o -MF CMakeFiles/Raytracer_run.dir/Color.cpp.o.d -o CMakeFiles/Raytracer_run.dir/Color.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Color.cpp

src/CMakeFiles/Raytracer_run.dir/Color.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer_run.dir/Color.cpp.i"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Color.cpp > CMakeFiles/Raytracer_run.dir/Color.cpp.i

src/CMakeFiles/Raytracer_run.dir/Color.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer_run.dir/Color.cpp.s"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Color.cpp -o CMakeFiles/Raytracer_run.dir/Color.cpp.s

src/CMakeFiles/Raytracer_run.dir/Matrix.cpp.o: src/CMakeFiles/Raytracer_run.dir/flags.make
src/CMakeFiles/Raytracer_run.dir/Matrix.cpp.o: ../src/Matrix.cpp
src/CMakeFiles/Raytracer_run.dir/Matrix.cpp.o: src/CMakeFiles/Raytracer_run.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/Raytracer_run.dir/Matrix.cpp.o"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/Raytracer_run.dir/Matrix.cpp.o -MF CMakeFiles/Raytracer_run.dir/Matrix.cpp.o.d -o CMakeFiles/Raytracer_run.dir/Matrix.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix.cpp

src/CMakeFiles/Raytracer_run.dir/Matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer_run.dir/Matrix.cpp.i"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix.cpp > CMakeFiles/Raytracer_run.dir/Matrix.cpp.i

src/CMakeFiles/Raytracer_run.dir/Matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer_run.dir/Matrix.cpp.s"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix.cpp -o CMakeFiles/Raytracer_run.dir/Matrix.cpp.s

src/CMakeFiles/Raytracer_run.dir/Matrix2.cpp.o: src/CMakeFiles/Raytracer_run.dir/flags.make
src/CMakeFiles/Raytracer_run.dir/Matrix2.cpp.o: ../src/Matrix2.cpp
src/CMakeFiles/Raytracer_run.dir/Matrix2.cpp.o: src/CMakeFiles/Raytracer_run.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/Raytracer_run.dir/Matrix2.cpp.o"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/Raytracer_run.dir/Matrix2.cpp.o -MF CMakeFiles/Raytracer_run.dir/Matrix2.cpp.o.d -o CMakeFiles/Raytracer_run.dir/Matrix2.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix2.cpp

src/CMakeFiles/Raytracer_run.dir/Matrix2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer_run.dir/Matrix2.cpp.i"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix2.cpp > CMakeFiles/Raytracer_run.dir/Matrix2.cpp.i

src/CMakeFiles/Raytracer_run.dir/Matrix2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer_run.dir/Matrix2.cpp.s"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix2.cpp -o CMakeFiles/Raytracer_run.dir/Matrix2.cpp.s

src/CMakeFiles/Raytracer_run.dir/Matrix3.cpp.o: src/CMakeFiles/Raytracer_run.dir/flags.make
src/CMakeFiles/Raytracer_run.dir/Matrix3.cpp.o: ../src/Matrix3.cpp
src/CMakeFiles/Raytracer_run.dir/Matrix3.cpp.o: src/CMakeFiles/Raytracer_run.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/Raytracer_run.dir/Matrix3.cpp.o"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/Raytracer_run.dir/Matrix3.cpp.o -MF CMakeFiles/Raytracer_run.dir/Matrix3.cpp.o.d -o CMakeFiles/Raytracer_run.dir/Matrix3.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix3.cpp

src/CMakeFiles/Raytracer_run.dir/Matrix3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer_run.dir/Matrix3.cpp.i"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix3.cpp > CMakeFiles/Raytracer_run.dir/Matrix3.cpp.i

src/CMakeFiles/Raytracer_run.dir/Matrix3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer_run.dir/Matrix3.cpp.s"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix3.cpp -o CMakeFiles/Raytracer_run.dir/Matrix3.cpp.s

src/CMakeFiles/Raytracer_run.dir/Matrix4.cpp.o: src/CMakeFiles/Raytracer_run.dir/flags.make
src/CMakeFiles/Raytracer_run.dir/Matrix4.cpp.o: ../src/Matrix4.cpp
src/CMakeFiles/Raytracer_run.dir/Matrix4.cpp.o: src/CMakeFiles/Raytracer_run.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/Raytracer_run.dir/Matrix4.cpp.o"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/Raytracer_run.dir/Matrix4.cpp.o -MF CMakeFiles/Raytracer_run.dir/Matrix4.cpp.o.d -o CMakeFiles/Raytracer_run.dir/Matrix4.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix4.cpp

src/CMakeFiles/Raytracer_run.dir/Matrix4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer_run.dir/Matrix4.cpp.i"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix4.cpp > CMakeFiles/Raytracer_run.dir/Matrix4.cpp.i

src/CMakeFiles/Raytracer_run.dir/Matrix4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer_run.dir/Matrix4.cpp.s"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix4.cpp -o CMakeFiles/Raytracer_run.dir/Matrix4.cpp.s

src/CMakeFiles/Raytracer_run.dir/Tuple.cpp.o: src/CMakeFiles/Raytracer_run.dir/flags.make
src/CMakeFiles/Raytracer_run.dir/Tuple.cpp.o: ../src/Tuple.cpp
src/CMakeFiles/Raytracer_run.dir/Tuple.cpp.o: src/CMakeFiles/Raytracer_run.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/Raytracer_run.dir/Tuple.cpp.o"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/Raytracer_run.dir/Tuple.cpp.o -MF CMakeFiles/Raytracer_run.dir/Tuple.cpp.o.d -o CMakeFiles/Raytracer_run.dir/Tuple.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Tuple.cpp

src/CMakeFiles/Raytracer_run.dir/Tuple.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer_run.dir/Tuple.cpp.i"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Tuple.cpp > CMakeFiles/Raytracer_run.dir/Tuple.cpp.i

src/CMakeFiles/Raytracer_run.dir/Tuple.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer_run.dir/Tuple.cpp.s"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Tuple.cpp -o CMakeFiles/Raytracer_run.dir/Tuple.cpp.s

# Object files for target Raytracer_run
Raytracer_run_OBJECTS = \
"CMakeFiles/Raytracer_run.dir/Canvas.cpp.o" \
"CMakeFiles/Raytracer_run.dir/Color.cpp.o" \
"CMakeFiles/Raytracer_run.dir/Matrix.cpp.o" \
"CMakeFiles/Raytracer_run.dir/Matrix2.cpp.o" \
"CMakeFiles/Raytracer_run.dir/Matrix3.cpp.o" \
"CMakeFiles/Raytracer_run.dir/Matrix4.cpp.o" \
"CMakeFiles/Raytracer_run.dir/Tuple.cpp.o"

# External object files for target Raytracer_run
Raytracer_run_EXTERNAL_OBJECTS =

src/Raytracer_run: src/CMakeFiles/Raytracer_run.dir/Canvas.cpp.o
src/Raytracer_run: src/CMakeFiles/Raytracer_run.dir/Color.cpp.o
src/Raytracer_run: src/CMakeFiles/Raytracer_run.dir/Matrix.cpp.o
src/Raytracer_run: src/CMakeFiles/Raytracer_run.dir/Matrix2.cpp.o
src/Raytracer_run: src/CMakeFiles/Raytracer_run.dir/Matrix3.cpp.o
src/Raytracer_run: src/CMakeFiles/Raytracer_run.dir/Matrix4.cpp.o
src/Raytracer_run: src/CMakeFiles/Raytracer_run.dir/Tuple.cpp.o
src/Raytracer_run: src/CMakeFiles/Raytracer_run.dir/build.make
src/Raytracer_run: src/CMakeFiles/Raytracer_run.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable Raytracer_run"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Raytracer_run.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/Raytracer_run.dir/build: src/Raytracer_run
.PHONY : src/CMakeFiles/Raytracer_run.dir/build

src/CMakeFiles/Raytracer_run.dir/clean:
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/Raytracer_run.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/Raytracer_run.dir/clean

src/CMakeFiles/Raytracer_run.dir/depend:
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Matthijs/CLionProjects/Raytracer /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/src/CMakeFiles/Raytracer_run.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/Raytracer_run.dir/depend

