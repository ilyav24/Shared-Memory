# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ilya/Shared-Memory

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ilya/Shared-Memory/build

# Include any dependencies generated for this target.
include CMakeFiles/Shared-Memory.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Shared-Memory.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Shared-Memory.dir/flags.make

CMakeFiles/Shared-Memory.dir/SharedMemory.cpp.o: CMakeFiles/Shared-Memory.dir/flags.make
CMakeFiles/Shared-Memory.dir/SharedMemory.cpp.o: ../SharedMemory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilya/Shared-Memory/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Shared-Memory.dir/SharedMemory.cpp.o"
	/bin/x86_64-linux-gnu-g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Shared-Memory.dir/SharedMemory.cpp.o -c /home/ilya/Shared-Memory/SharedMemory.cpp

CMakeFiles/Shared-Memory.dir/SharedMemory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Shared-Memory.dir/SharedMemory.cpp.i"
	/bin/x86_64-linux-gnu-g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilya/Shared-Memory/SharedMemory.cpp > CMakeFiles/Shared-Memory.dir/SharedMemory.cpp.i

CMakeFiles/Shared-Memory.dir/SharedMemory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Shared-Memory.dir/SharedMemory.cpp.s"
	/bin/x86_64-linux-gnu-g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilya/Shared-Memory/SharedMemory.cpp -o CMakeFiles/Shared-Memory.dir/SharedMemory.cpp.s

# Object files for target Shared-Memory
Shared__Memory_OBJECTS = \
"CMakeFiles/Shared-Memory.dir/SharedMemory.cpp.o"

# External object files for target Shared-Memory
Shared__Memory_EXTERNAL_OBJECTS =

Shared-Memory: CMakeFiles/Shared-Memory.dir/SharedMemory.cpp.o
Shared-Memory: CMakeFiles/Shared-Memory.dir/build.make
Shared-Memory: CMakeFiles/Shared-Memory.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ilya/Shared-Memory/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Shared-Memory"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Shared-Memory.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Shared-Memory.dir/build: Shared-Memory

.PHONY : CMakeFiles/Shared-Memory.dir/build

CMakeFiles/Shared-Memory.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Shared-Memory.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Shared-Memory.dir/clean

CMakeFiles/Shared-Memory.dir/depend:
	cd /home/ilya/Shared-Memory/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilya/Shared-Memory /home/ilya/Shared-Memory /home/ilya/Shared-Memory/build /home/ilya/Shared-Memory/build /home/ilya/Shared-Memory/build/CMakeFiles/Shared-Memory.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Shared-Memory.dir/depend

