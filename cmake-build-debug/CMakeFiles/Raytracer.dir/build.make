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
include CMakeFiles/Raytracer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Raytracer.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Raytracer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Raytracer.dir/flags.make

CMakeFiles/Raytracer.dir/main.cpp.o: CMakeFiles/Raytracer.dir/flags.make
CMakeFiles/Raytracer.dir/main.cpp.o: ../main.cpp
CMakeFiles/Raytracer.dir/main.cpp.o: CMakeFiles/Raytracer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Raytracer.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Raytracer.dir/main.cpp.o -MF CMakeFiles/Raytracer.dir/main.cpp.o.d -o CMakeFiles/Raytracer.dir/main.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/main.cpp

CMakeFiles/Raytracer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/main.cpp > CMakeFiles/Raytracer.dir/main.cpp.i

CMakeFiles/Raytracer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/main.cpp -o CMakeFiles/Raytracer.dir/main.cpp.s

CMakeFiles/Raytracer.dir/src/Tuple.cpp.o: CMakeFiles/Raytracer.dir/flags.make
CMakeFiles/Raytracer.dir/src/Tuple.cpp.o: ../src/Tuple.cpp
CMakeFiles/Raytracer.dir/src/Tuple.cpp.o: CMakeFiles/Raytracer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Raytracer.dir/src/Tuple.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Raytracer.dir/src/Tuple.cpp.o -MF CMakeFiles/Raytracer.dir/src/Tuple.cpp.o.d -o CMakeFiles/Raytracer.dir/src/Tuple.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Tuple.cpp

CMakeFiles/Raytracer.dir/src/Tuple.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer.dir/src/Tuple.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Tuple.cpp > CMakeFiles/Raytracer.dir/src/Tuple.cpp.i

CMakeFiles/Raytracer.dir/src/Tuple.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer.dir/src/Tuple.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Tuple.cpp -o CMakeFiles/Raytracer.dir/src/Tuple.cpp.s

CMakeFiles/Raytracer.dir/src/Color.cpp.o: CMakeFiles/Raytracer.dir/flags.make
CMakeFiles/Raytracer.dir/src/Color.cpp.o: ../src/Color.cpp
CMakeFiles/Raytracer.dir/src/Color.cpp.o: CMakeFiles/Raytracer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Raytracer.dir/src/Color.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Raytracer.dir/src/Color.cpp.o -MF CMakeFiles/Raytracer.dir/src/Color.cpp.o.d -o CMakeFiles/Raytracer.dir/src/Color.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Color.cpp

CMakeFiles/Raytracer.dir/src/Color.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer.dir/src/Color.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Color.cpp > CMakeFiles/Raytracer.dir/src/Color.cpp.i

CMakeFiles/Raytracer.dir/src/Color.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer.dir/src/Color.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Color.cpp -o CMakeFiles/Raytracer.dir/src/Color.cpp.s

CMakeFiles/Raytracer.dir/src/Canvas.cpp.o: CMakeFiles/Raytracer.dir/flags.make
CMakeFiles/Raytracer.dir/src/Canvas.cpp.o: ../src/Canvas.cpp
CMakeFiles/Raytracer.dir/src/Canvas.cpp.o: CMakeFiles/Raytracer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Raytracer.dir/src/Canvas.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Raytracer.dir/src/Canvas.cpp.o -MF CMakeFiles/Raytracer.dir/src/Canvas.cpp.o.d -o CMakeFiles/Raytracer.dir/src/Canvas.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Canvas.cpp

CMakeFiles/Raytracer.dir/src/Canvas.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer.dir/src/Canvas.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Canvas.cpp > CMakeFiles/Raytracer.dir/src/Canvas.cpp.i

CMakeFiles/Raytracer.dir/src/Canvas.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer.dir/src/Canvas.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Canvas.cpp -o CMakeFiles/Raytracer.dir/src/Canvas.cpp.s

CMakeFiles/Raytracer.dir/src/Matrix4.cpp.o: CMakeFiles/Raytracer.dir/flags.make
CMakeFiles/Raytracer.dir/src/Matrix4.cpp.o: ../src/Matrix4.cpp
CMakeFiles/Raytracer.dir/src/Matrix4.cpp.o: CMakeFiles/Raytracer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Raytracer.dir/src/Matrix4.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Raytracer.dir/src/Matrix4.cpp.o -MF CMakeFiles/Raytracer.dir/src/Matrix4.cpp.o.d -o CMakeFiles/Raytracer.dir/src/Matrix4.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix4.cpp

CMakeFiles/Raytracer.dir/src/Matrix4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer.dir/src/Matrix4.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix4.cpp > CMakeFiles/Raytracer.dir/src/Matrix4.cpp.i

CMakeFiles/Raytracer.dir/src/Matrix4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer.dir/src/Matrix4.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix4.cpp -o CMakeFiles/Raytracer.dir/src/Matrix4.cpp.s

CMakeFiles/Raytracer.dir/src/Matrix3.cpp.o: CMakeFiles/Raytracer.dir/flags.make
CMakeFiles/Raytracer.dir/src/Matrix3.cpp.o: ../src/Matrix3.cpp
CMakeFiles/Raytracer.dir/src/Matrix3.cpp.o: CMakeFiles/Raytracer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Raytracer.dir/src/Matrix3.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Raytracer.dir/src/Matrix3.cpp.o -MF CMakeFiles/Raytracer.dir/src/Matrix3.cpp.o.d -o CMakeFiles/Raytracer.dir/src/Matrix3.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix3.cpp

CMakeFiles/Raytracer.dir/src/Matrix3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer.dir/src/Matrix3.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix3.cpp > CMakeFiles/Raytracer.dir/src/Matrix3.cpp.i

CMakeFiles/Raytracer.dir/src/Matrix3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer.dir/src/Matrix3.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix3.cpp -o CMakeFiles/Raytracer.dir/src/Matrix3.cpp.s

CMakeFiles/Raytracer.dir/src/Matrix.cpp.o: CMakeFiles/Raytracer.dir/flags.make
CMakeFiles/Raytracer.dir/src/Matrix.cpp.o: ../src/Matrix.cpp
CMakeFiles/Raytracer.dir/src/Matrix.cpp.o: CMakeFiles/Raytracer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Raytracer.dir/src/Matrix.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Raytracer.dir/src/Matrix.cpp.o -MF CMakeFiles/Raytracer.dir/src/Matrix.cpp.o.d -o CMakeFiles/Raytracer.dir/src/Matrix.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix.cpp

CMakeFiles/Raytracer.dir/src/Matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer.dir/src/Matrix.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix.cpp > CMakeFiles/Raytracer.dir/src/Matrix.cpp.i

CMakeFiles/Raytracer.dir/src/Matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer.dir/src/Matrix.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix.cpp -o CMakeFiles/Raytracer.dir/src/Matrix.cpp.s

CMakeFiles/Raytracer.dir/src/Matrix2.cpp.o: CMakeFiles/Raytracer.dir/flags.make
CMakeFiles/Raytracer.dir/src/Matrix2.cpp.o: ../src/Matrix2.cpp
CMakeFiles/Raytracer.dir/src/Matrix2.cpp.o: CMakeFiles/Raytracer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Raytracer.dir/src/Matrix2.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Raytracer.dir/src/Matrix2.cpp.o -MF CMakeFiles/Raytracer.dir/src/Matrix2.cpp.o.d -o CMakeFiles/Raytracer.dir/src/Matrix2.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix2.cpp

CMakeFiles/Raytracer.dir/src/Matrix2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer.dir/src/Matrix2.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix2.cpp > CMakeFiles/Raytracer.dir/src/Matrix2.cpp.i

CMakeFiles/Raytracer.dir/src/Matrix2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer.dir/src/Matrix2.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/src/Matrix2.cpp -o CMakeFiles/Raytracer.dir/src/Matrix2.cpp.s

# Object files for target Raytracer
Raytracer_OBJECTS = \
"CMakeFiles/Raytracer.dir/main.cpp.o" \
"CMakeFiles/Raytracer.dir/src/Tuple.cpp.o" \
"CMakeFiles/Raytracer.dir/src/Color.cpp.o" \
"CMakeFiles/Raytracer.dir/src/Canvas.cpp.o" \
"CMakeFiles/Raytracer.dir/src/Matrix4.cpp.o" \
"CMakeFiles/Raytracer.dir/src/Matrix3.cpp.o" \
"CMakeFiles/Raytracer.dir/src/Matrix.cpp.o" \
"CMakeFiles/Raytracer.dir/src/Matrix2.cpp.o"

# External object files for target Raytracer
Raytracer_EXTERNAL_OBJECTS =

Raytracer: CMakeFiles/Raytracer.dir/main.cpp.o
Raytracer: CMakeFiles/Raytracer.dir/src/Tuple.cpp.o
Raytracer: CMakeFiles/Raytracer.dir/src/Color.cpp.o
Raytracer: CMakeFiles/Raytracer.dir/src/Canvas.cpp.o
Raytracer: CMakeFiles/Raytracer.dir/src/Matrix4.cpp.o
Raytracer: CMakeFiles/Raytracer.dir/src/Matrix3.cpp.o
Raytracer: CMakeFiles/Raytracer.dir/src/Matrix.cpp.o
Raytracer: CMakeFiles/Raytracer.dir/src/Matrix2.cpp.o
Raytracer: CMakeFiles/Raytracer.dir/build.make
Raytracer: CMakeFiles/Raytracer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable Raytracer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Raytracer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Raytracer.dir/build: Raytracer
.PHONY : CMakeFiles/Raytracer.dir/build

CMakeFiles/Raytracer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Raytracer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Raytracer.dir/clean

CMakeFiles/Raytracer.dir/depend:
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Matthijs/CLionProjects/Raytracer /mnt/c/Users/Matthijs/CLionProjects/Raytracer /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles/Raytracer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Raytracer.dir/depend

