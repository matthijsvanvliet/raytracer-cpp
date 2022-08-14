cmake_minimum_required(VERSION 3.17)
project(Raytracer)

set(CMAKE_CXX_STANDARD 14)

add_executable(Raytracer main.cpp src/Tuple.cpp src/Color.cpp src/Canvas.cpp src/Matrix4.cpp src/Matrix3.cpp src/Matrix.cpp src/Matrix2.cpp)

include_directories(src)

add_subdirectory(src)
add_subdirectory(test)