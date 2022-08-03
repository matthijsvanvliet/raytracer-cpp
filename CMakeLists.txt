cmake_minimum_required(VERSION 3.17)
project(Raytracer)

set(CMAKE_CXX_STANDARD 14)

add_executable(Raytracer main.cpp src/Tuple.h src/Tuple.cpp src/Helper.h src/Color.h src/Color.cpp src/Canvas.h src/Canvas.cpp src/Matrix4.cpp src/Matrix4.h src/Matrix3.cpp src/Matrix3.h src/Matrix.h src/Matrix.cpp)

include_directories(src)

add_subdirectory(src)
add_subdirectory(test)