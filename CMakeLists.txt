cmake_minimum_required(VERSION 3.17)
project(Raytracer)

set(CMAKE_CXX_STANDARD 14)

option(BUILD_SHARED_LIBS "Build shared libs?" ON)

add_compile_options(-std=c++0x -pthread)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

add_library(raytracer_code
        src/Tuple.cpp
        src/Color.cpp
        src/Canvas.cpp
        src/Matrix.cpp
        src/Matrix2.cpp
        src/Matrix3.cpp
        src/Matrix4.cpp
        src/Ray.cpp
        src/Shape.cpp
        src/Sphere.cpp
        src/Intersection.cpp
        src/Intersections.cpp
)
target_include_directories(raytracer_code PUBLIC ${PROJECT_SOURCE_DIR}/src)

add_executable(raytracer_main
        main.cpp
)
target_link_libraries(raytracer_main raytracer_code)

include_directories(src)

add_subdirectory(src)
add_subdirectory(test)