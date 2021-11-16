cmake_minimum_required(VERSION 3.13)  # CMake version check
project(Shared-Memory)               # Create project "simple_example"
set(CMAKE_CXX_STANDARD 14)            # Enable c++14 standard

find_package (OpenCV 4.0.0 REQUIRED)
include_directories ("/usr/include/opencv4/")

# Add main.cpp file of project root directory as source file
set(SOURCE_FILES SharedMemory.cpp)

# Add executable target with source files listed in SOURCE_FILES variable
add_executable(Shared-Memory ${SOURCE_FILES})