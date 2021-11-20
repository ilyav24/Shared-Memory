cmake_minimum_required(VERSION 3.13)  # CMake version check
project(Shared-Memory)               # Create project "simple_example"
set(CMAKE_CXX_STANDARD 14)            # Enable c++14 standard
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")

find_package (OpenCV 4.0.0 REQUIRED)
find_package(Boost REQUIRED)
find_package(fmt CONFIG REQUIRED)
include_directories ("/usr/include/opencv4/")
include_directories ("/usr/include/")
link_libraries("/usr/lib/x86_64-linux-gnu/librt.so")
link_libraries("/usr/lib/x86_64-linux-gnu/libfmt.a")
#target_link_libraries( fmt)
#link_libraries ("/home/ilya/opencv/vcpkg/installed/x64-linux/lib")
#include_directories("/home/ilya/opencv/vcpkg/installed/x64-linux/include/")
#include_directories ("/home/ilya/opencv/vcpkg/installed/x64-linux/include")

# Add main.cpp file of project root directory as source file
set(SOURCE_FILES SharedMemory.cpp)

# Add executable target with source files listed in SOURCE_FILES variable
add_executable(Shared-Memory ${SOURCE_FILES})