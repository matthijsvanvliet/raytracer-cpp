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
CMAKE_SOURCE_DIR = /mnt/c/Users/Matthijs/CLionProjects/Raytracer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug

# Include any dependencies generated for this target.
include test/CMakeFiles/Raytracer_tst.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/Raytracer_tst.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/Raytracer_tst.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/Raytracer_tst.dir/flags.make

test/CMakeFiles/Raytracer_tst.dir/AllTests.cpp.o: test/CMakeFiles/Raytracer_tst.dir/flags.make
test/CMakeFiles/Raytracer_tst.dir/AllTests.cpp.o: ../test/AllTests.cpp
test/CMakeFiles/Raytracer_tst.dir/AllTests.cpp.o: test/CMakeFiles/Raytracer_tst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/Raytracer_tst.dir/AllTests.cpp.o"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/Raytracer_tst.dir/AllTests.cpp.o -MF CMakeFiles/Raytracer_tst.dir/AllTests.cpp.o.d -o CMakeFiles/Raytracer_tst.dir/AllTests.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/AllTests.cpp

test/CMakeFiles/Raytracer_tst.dir/AllTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer_tst.dir/AllTests.cpp.i"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/AllTests.cpp > CMakeFiles/Raytracer_tst.dir/AllTests.cpp.i

test/CMakeFiles/Raytracer_tst.dir/AllTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer_tst.dir/AllTests.cpp.s"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/AllTests.cpp -o CMakeFiles/Raytracer_tst.dir/AllTests.cpp.s

test/CMakeFiles/Raytracer_tst.dir/CanvasTest.cpp.o: test/CMakeFiles/Raytracer_tst.dir/flags.make
test/CMakeFiles/Raytracer_tst.dir/CanvasTest.cpp.o: ../test/CanvasTest.cpp
test/CMakeFiles/Raytracer_tst.dir/CanvasTest.cpp.o: test/CMakeFiles/Raytracer_tst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/Raytracer_tst.dir/CanvasTest.cpp.o"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/Raytracer_tst.dir/CanvasTest.cpp.o -MF CMakeFiles/Raytracer_tst.dir/CanvasTest.cpp.o.d -o CMakeFiles/Raytracer_tst.dir/CanvasTest.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/CanvasTest.cpp

test/CMakeFiles/Raytracer_tst.dir/CanvasTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer_tst.dir/CanvasTest.cpp.i"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/CanvasTest.cpp > CMakeFiles/Raytracer_tst.dir/CanvasTest.cpp.i

test/CMakeFiles/Raytracer_tst.dir/CanvasTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer_tst.dir/CanvasTest.cpp.s"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/CanvasTest.cpp -o CMakeFiles/Raytracer_tst.dir/CanvasTest.cpp.s

test/CMakeFiles/Raytracer_tst.dir/IntersectionTest.cpp.o: test/CMakeFiles/Raytracer_tst.dir/flags.make
test/CMakeFiles/Raytracer_tst.dir/IntersectionTest.cpp.o: ../test/IntersectionTest.cpp
test/CMakeFiles/Raytracer_tst.dir/IntersectionTest.cpp.o: test/CMakeFiles/Raytracer_tst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object test/CMakeFiles/Raytracer_tst.dir/IntersectionTest.cpp.o"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/Raytracer_tst.dir/IntersectionTest.cpp.o -MF CMakeFiles/Raytracer_tst.dir/IntersectionTest.cpp.o.d -o CMakeFiles/Raytracer_tst.dir/IntersectionTest.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/IntersectionTest.cpp

test/CMakeFiles/Raytracer_tst.dir/IntersectionTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer_tst.dir/IntersectionTest.cpp.i"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/IntersectionTest.cpp > CMakeFiles/Raytracer_tst.dir/IntersectionTest.cpp.i

test/CMakeFiles/Raytracer_tst.dir/IntersectionTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer_tst.dir/IntersectionTest.cpp.s"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/IntersectionTest.cpp -o CMakeFiles/Raytracer_tst.dir/IntersectionTest.cpp.s

test/CMakeFiles/Raytracer_tst.dir/MatrixTest.cpp.o: test/CMakeFiles/Raytracer_tst.dir/flags.make
test/CMakeFiles/Raytracer_tst.dir/MatrixTest.cpp.o: ../test/MatrixTest.cpp
test/CMakeFiles/Raytracer_tst.dir/MatrixTest.cpp.o: test/CMakeFiles/Raytracer_tst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object test/CMakeFiles/Raytracer_tst.dir/MatrixTest.cpp.o"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/Raytracer_tst.dir/MatrixTest.cpp.o -MF CMakeFiles/Raytracer_tst.dir/MatrixTest.cpp.o.d -o CMakeFiles/Raytracer_tst.dir/MatrixTest.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/MatrixTest.cpp

test/CMakeFiles/Raytracer_tst.dir/MatrixTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer_tst.dir/MatrixTest.cpp.i"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/MatrixTest.cpp > CMakeFiles/Raytracer_tst.dir/MatrixTest.cpp.i

test/CMakeFiles/Raytracer_tst.dir/MatrixTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer_tst.dir/MatrixTest.cpp.s"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/MatrixTest.cpp -o CMakeFiles/Raytracer_tst.dir/MatrixTest.cpp.s

test/CMakeFiles/Raytracer_tst.dir/RaysTest.cpp.o: test/CMakeFiles/Raytracer_tst.dir/flags.make
test/CMakeFiles/Raytracer_tst.dir/RaysTest.cpp.o: ../test/RaysTest.cpp
test/CMakeFiles/Raytracer_tst.dir/RaysTest.cpp.o: test/CMakeFiles/Raytracer_tst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object test/CMakeFiles/Raytracer_tst.dir/RaysTest.cpp.o"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/Raytracer_tst.dir/RaysTest.cpp.o -MF CMakeFiles/Raytracer_tst.dir/RaysTest.cpp.o.d -o CMakeFiles/Raytracer_tst.dir/RaysTest.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/RaysTest.cpp

test/CMakeFiles/Raytracer_tst.dir/RaysTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer_tst.dir/RaysTest.cpp.i"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/RaysTest.cpp > CMakeFiles/Raytracer_tst.dir/RaysTest.cpp.i

test/CMakeFiles/Raytracer_tst.dir/RaysTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer_tst.dir/RaysTest.cpp.s"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/RaysTest.cpp -o CMakeFiles/Raytracer_tst.dir/RaysTest.cpp.s

test/CMakeFiles/Raytracer_tst.dir/SpheresTest.cpp.o: test/CMakeFiles/Raytracer_tst.dir/flags.make
test/CMakeFiles/Raytracer_tst.dir/SpheresTest.cpp.o: ../test/SpheresTest.cpp
test/CMakeFiles/Raytracer_tst.dir/SpheresTest.cpp.o: test/CMakeFiles/Raytracer_tst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object test/CMakeFiles/Raytracer_tst.dir/SpheresTest.cpp.o"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/Raytracer_tst.dir/SpheresTest.cpp.o -MF CMakeFiles/Raytracer_tst.dir/SpheresTest.cpp.o.d -o CMakeFiles/Raytracer_tst.dir/SpheresTest.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/SpheresTest.cpp

test/CMakeFiles/Raytracer_tst.dir/SpheresTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer_tst.dir/SpheresTest.cpp.i"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/SpheresTest.cpp > CMakeFiles/Raytracer_tst.dir/SpheresTest.cpp.i

test/CMakeFiles/Raytracer_tst.dir/SpheresTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer_tst.dir/SpheresTest.cpp.s"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/SpheresTest.cpp -o CMakeFiles/Raytracer_tst.dir/SpheresTest.cpp.s

test/CMakeFiles/Raytracer_tst.dir/TransformationsTest.cpp.o: test/CMakeFiles/Raytracer_tst.dir/flags.make
test/CMakeFiles/Raytracer_tst.dir/TransformationsTest.cpp.o: ../test/TransformationsTest.cpp
test/CMakeFiles/Raytracer_tst.dir/TransformationsTest.cpp.o: test/CMakeFiles/Raytracer_tst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object test/CMakeFiles/Raytracer_tst.dir/TransformationsTest.cpp.o"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/Raytracer_tst.dir/TransformationsTest.cpp.o -MF CMakeFiles/Raytracer_tst.dir/TransformationsTest.cpp.o.d -o CMakeFiles/Raytracer_tst.dir/TransformationsTest.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/TransformationsTest.cpp

test/CMakeFiles/Raytracer_tst.dir/TransformationsTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer_tst.dir/TransformationsTest.cpp.i"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/TransformationsTest.cpp > CMakeFiles/Raytracer_tst.dir/TransformationsTest.cpp.i

test/CMakeFiles/Raytracer_tst.dir/TransformationsTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer_tst.dir/TransformationsTest.cpp.s"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/TransformationsTest.cpp -o CMakeFiles/Raytracer_tst.dir/TransformationsTest.cpp.s

test/CMakeFiles/Raytracer_tst.dir/TupleTest.cpp.o: test/CMakeFiles/Raytracer_tst.dir/flags.make
test/CMakeFiles/Raytracer_tst.dir/TupleTest.cpp.o: ../test/TupleTest.cpp
test/CMakeFiles/Raytracer_tst.dir/TupleTest.cpp.o: test/CMakeFiles/Raytracer_tst.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object test/CMakeFiles/Raytracer_tst.dir/TupleTest.cpp.o"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/Raytracer_tst.dir/TupleTest.cpp.o -MF CMakeFiles/Raytracer_tst.dir/TupleTest.cpp.o.d -o CMakeFiles/Raytracer_tst.dir/TupleTest.cpp.o -c /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/TupleTest.cpp

test/CMakeFiles/Raytracer_tst.dir/TupleTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Raytracer_tst.dir/TupleTest.cpp.i"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/TupleTest.cpp > CMakeFiles/Raytracer_tst.dir/TupleTest.cpp.i

test/CMakeFiles/Raytracer_tst.dir/TupleTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Raytracer_tst.dir/TupleTest.cpp.s"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test/TupleTest.cpp -o CMakeFiles/Raytracer_tst.dir/TupleTest.cpp.s

# Object files for target Raytracer_tst
Raytracer_tst_OBJECTS = \
"CMakeFiles/Raytracer_tst.dir/AllTests.cpp.o" \
"CMakeFiles/Raytracer_tst.dir/CanvasTest.cpp.o" \
"CMakeFiles/Raytracer_tst.dir/IntersectionTest.cpp.o" \
"CMakeFiles/Raytracer_tst.dir/MatrixTest.cpp.o" \
"CMakeFiles/Raytracer_tst.dir/RaysTest.cpp.o" \
"CMakeFiles/Raytracer_tst.dir/SpheresTest.cpp.o" \
"CMakeFiles/Raytracer_tst.dir/TransformationsTest.cpp.o" \
"CMakeFiles/Raytracer_tst.dir/TupleTest.cpp.o"

# External object files for target Raytracer_tst
Raytracer_tst_EXTERNAL_OBJECTS =

bin/Raytracer_tst: test/CMakeFiles/Raytracer_tst.dir/AllTests.cpp.o
bin/Raytracer_tst: test/CMakeFiles/Raytracer_tst.dir/CanvasTest.cpp.o
bin/Raytracer_tst: test/CMakeFiles/Raytracer_tst.dir/IntersectionTest.cpp.o
bin/Raytracer_tst: test/CMakeFiles/Raytracer_tst.dir/MatrixTest.cpp.o
bin/Raytracer_tst: test/CMakeFiles/Raytracer_tst.dir/RaysTest.cpp.o
bin/Raytracer_tst: test/CMakeFiles/Raytracer_tst.dir/SpheresTest.cpp.o
bin/Raytracer_tst: test/CMakeFiles/Raytracer_tst.dir/TransformationsTest.cpp.o
bin/Raytracer_tst: test/CMakeFiles/Raytracer_tst.dir/TupleTest.cpp.o
bin/Raytracer_tst: test/CMakeFiles/Raytracer_tst.dir/build.make
bin/Raytracer_tst: lib/libRaytracer_lib.a
bin/Raytracer_tst: lib/libgtest.so.1.12.1
bin/Raytracer_tst: test/CMakeFiles/Raytracer_tst.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable ../bin/Raytracer_tst"
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Raytracer_tst.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/Raytracer_tst.dir/build: bin/Raytracer_tst
.PHONY : test/CMakeFiles/Raytracer_tst.dir/build

test/CMakeFiles/Raytracer_tst.dir/clean:
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test && $(CMAKE_COMMAND) -P CMakeFiles/Raytracer_tst.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/Raytracer_tst.dir/clean

test/CMakeFiles/Raytracer_tst.dir/depend:
	cd /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Matthijs/CLionProjects/Raytracer /mnt/c/Users/Matthijs/CLionProjects/Raytracer/test /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test /mnt/c/Users/Matthijs/CLionProjects/Raytracer/cmake-build-debug/test/CMakeFiles/Raytracer_tst.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/Raytracer_tst.dir/depend

