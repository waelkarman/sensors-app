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
CMAKE_SOURCE_DIR = /home/waelkarman/Qt/6.6.3/gcc_64/lib/cmake/Qt6/config.tests/static_link_order

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/waelkarman/Documents/sensors-app/build/config.tests/static_link_order

# Include any dependencies generated for this target.
include CMakeFiles/objLib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/objLib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/objLib.dir/flags.make

CMakeFiles/objLib.dir/objlib.cpp.o: CMakeFiles/objLib.dir/flags.make
CMakeFiles/objLib.dir/objlib.cpp.o: /home/waelkarman/Qt/6.6.3/gcc_64/lib/cmake/Qt6/config.tests/static_link_order/objlib.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/home/waelkarman/Documents/sensors-app/build/config.tests/static_link_order/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/objLib.dir/objlib.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/objLib.dir/objlib.cpp.o -c /home/waelkarman/Qt/6.6.3/gcc_64/lib/cmake/Qt6/config.tests/static_link_order/objlib.cpp

CMakeFiles/objLib.dir/objlib.cpp.i: cmake_force
	@echo "Preprocessing CXX source to CMakeFiles/objLib.dir/objlib.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/waelkarman/Qt/6.6.3/gcc_64/lib/cmake/Qt6/config.tests/static_link_order/objlib.cpp > CMakeFiles/objLib.dir/objlib.cpp.i

CMakeFiles/objLib.dir/objlib.cpp.s: cmake_force
	@echo "Compiling CXX source to assembly CMakeFiles/objLib.dir/objlib.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/waelkarman/Qt/6.6.3/gcc_64/lib/cmake/Qt6/config.tests/static_link_order/objlib.cpp -o CMakeFiles/objLib.dir/objlib.cpp.s

objLib: CMakeFiles/objLib.dir/objlib.cpp.o
objLib: CMakeFiles/objLib.dir/build.make

.PHONY : objLib

# Rule to build all files generated by this target.
CMakeFiles/objLib.dir/build: objLib

.PHONY : CMakeFiles/objLib.dir/build

CMakeFiles/objLib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/objLib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/objLib.dir/clean

CMakeFiles/objLib.dir/depend:
	cd /home/waelkarman/Documents/sensors-app/build/config.tests/static_link_order && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/waelkarman/Qt/6.6.3/gcc_64/lib/cmake/Qt6/config.tests/static_link_order /home/waelkarman/Qt/6.6.3/gcc_64/lib/cmake/Qt6/config.tests/static_link_order /home/waelkarman/Documents/sensors-app/build/config.tests/static_link_order /home/waelkarman/Documents/sensors-app/build/config.tests/static_link_order /home/waelkarman/Documents/sensors-app/build/config.tests/static_link_order/CMakeFiles/objLib.dir/DependInfo.cmake
.PHONY : CMakeFiles/objLib.dir/depend

