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
CMAKE_SOURCE_DIR = /home/waelkarman/Documents/sensors-app

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/waelkarman/Documents/sensors-app/build

# Include any dependencies generated for this target.
include CMakeFiles/sensor-app.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sensor-app.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sensor-app.dir/flags.make

sensor-app_autogen/EWIEGA46WW/qrc_main.cpp: ../main.qrc
sensor-app_autogen/EWIEGA46WW/qrc_main.cpp: CMakeFiles/sensor-app_autogen.dir/AutoRcc_main_EWIEGA46WW_Info.json
sensor-app_autogen/EWIEGA46WW/qrc_main.cpp: ../main.qml
sensor-app_autogen/EWIEGA46WW/qrc_main.cpp: /home/waelkarman/Qt/6.6.3/gcc_64/./libexec/rcc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/waelkarman/Documents/sensors-app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic RCC for main.qrc"
	/usr/bin/cmake -E cmake_autorcc /home/waelkarman/Documents/sensors-app/build/CMakeFiles/sensor-app_autogen.dir/AutoRcc_main_EWIEGA46WW_Info.json 

CMakeFiles/sensor-app.dir/sensor-app_autogen/mocs_compilation.cpp.o: CMakeFiles/sensor-app.dir/flags.make
CMakeFiles/sensor-app.dir/sensor-app_autogen/mocs_compilation.cpp.o: sensor-app_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/waelkarman/Documents/sensors-app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sensor-app.dir/sensor-app_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sensor-app.dir/sensor-app_autogen/mocs_compilation.cpp.o -c /home/waelkarman/Documents/sensors-app/build/sensor-app_autogen/mocs_compilation.cpp

CMakeFiles/sensor-app.dir/sensor-app_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sensor-app.dir/sensor-app_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/waelkarman/Documents/sensors-app/build/sensor-app_autogen/mocs_compilation.cpp > CMakeFiles/sensor-app.dir/sensor-app_autogen/mocs_compilation.cpp.i

CMakeFiles/sensor-app.dir/sensor-app_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sensor-app.dir/sensor-app_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/waelkarman/Documents/sensors-app/build/sensor-app_autogen/mocs_compilation.cpp -o CMakeFiles/sensor-app.dir/sensor-app_autogen/mocs_compilation.cpp.s

CMakeFiles/sensor-app.dir/infoexchanger.cpp.o: CMakeFiles/sensor-app.dir/flags.make
CMakeFiles/sensor-app.dir/infoexchanger.cpp.o: ../infoexchanger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/waelkarman/Documents/sensors-app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/sensor-app.dir/infoexchanger.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sensor-app.dir/infoexchanger.cpp.o -c /home/waelkarman/Documents/sensors-app/infoexchanger.cpp

CMakeFiles/sensor-app.dir/infoexchanger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sensor-app.dir/infoexchanger.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/waelkarman/Documents/sensors-app/infoexchanger.cpp > CMakeFiles/sensor-app.dir/infoexchanger.cpp.i

CMakeFiles/sensor-app.dir/infoexchanger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sensor-app.dir/infoexchanger.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/waelkarman/Documents/sensors-app/infoexchanger.cpp -o CMakeFiles/sensor-app.dir/infoexchanger.cpp.s

CMakeFiles/sensor-app.dir/main.cpp.o: CMakeFiles/sensor-app.dir/flags.make
CMakeFiles/sensor-app.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/waelkarman/Documents/sensors-app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/sensor-app.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sensor-app.dir/main.cpp.o -c /home/waelkarman/Documents/sensors-app/main.cpp

CMakeFiles/sensor-app.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sensor-app.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/waelkarman/Documents/sensors-app/main.cpp > CMakeFiles/sensor-app.dir/main.cpp.i

CMakeFiles/sensor-app.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sensor-app.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/waelkarman/Documents/sensors-app/main.cpp -o CMakeFiles/sensor-app.dir/main.cpp.s

CMakeFiles/sensor-app.dir/zmqprocess.cpp.o: CMakeFiles/sensor-app.dir/flags.make
CMakeFiles/sensor-app.dir/zmqprocess.cpp.o: ../zmqprocess.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/waelkarman/Documents/sensors-app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/sensor-app.dir/zmqprocess.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sensor-app.dir/zmqprocess.cpp.o -c /home/waelkarman/Documents/sensors-app/zmqprocess.cpp

CMakeFiles/sensor-app.dir/zmqprocess.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sensor-app.dir/zmqprocess.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/waelkarman/Documents/sensors-app/zmqprocess.cpp > CMakeFiles/sensor-app.dir/zmqprocess.cpp.i

CMakeFiles/sensor-app.dir/zmqprocess.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sensor-app.dir/zmqprocess.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/waelkarman/Documents/sensors-app/zmqprocess.cpp -o CMakeFiles/sensor-app.dir/zmqprocess.cpp.s

CMakeFiles/sensor-app.dir/sensor-app_autogen/EWIEGA46WW/qrc_main.cpp.o: CMakeFiles/sensor-app.dir/flags.make
CMakeFiles/sensor-app.dir/sensor-app_autogen/EWIEGA46WW/qrc_main.cpp.o: sensor-app_autogen/EWIEGA46WW/qrc_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/waelkarman/Documents/sensors-app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/sensor-app.dir/sensor-app_autogen/EWIEGA46WW/qrc_main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sensor-app.dir/sensor-app_autogen/EWIEGA46WW/qrc_main.cpp.o -c /home/waelkarman/Documents/sensors-app/build/sensor-app_autogen/EWIEGA46WW/qrc_main.cpp

CMakeFiles/sensor-app.dir/sensor-app_autogen/EWIEGA46WW/qrc_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sensor-app.dir/sensor-app_autogen/EWIEGA46WW/qrc_main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/waelkarman/Documents/sensors-app/build/sensor-app_autogen/EWIEGA46WW/qrc_main.cpp > CMakeFiles/sensor-app.dir/sensor-app_autogen/EWIEGA46WW/qrc_main.cpp.i

CMakeFiles/sensor-app.dir/sensor-app_autogen/EWIEGA46WW/qrc_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sensor-app.dir/sensor-app_autogen/EWIEGA46WW/qrc_main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/waelkarman/Documents/sensors-app/build/sensor-app_autogen/EWIEGA46WW/qrc_main.cpp -o CMakeFiles/sensor-app.dir/sensor-app_autogen/EWIEGA46WW/qrc_main.cpp.s

# Object files for target sensor-app
sensor__app_OBJECTS = \
"CMakeFiles/sensor-app.dir/sensor-app_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/sensor-app.dir/infoexchanger.cpp.o" \
"CMakeFiles/sensor-app.dir/main.cpp.o" \
"CMakeFiles/sensor-app.dir/zmqprocess.cpp.o" \
"CMakeFiles/sensor-app.dir/sensor-app_autogen/EWIEGA46WW/qrc_main.cpp.o"

# External object files for target sensor-app
sensor__app_EXTERNAL_OBJECTS =

sensor-app: CMakeFiles/sensor-app.dir/sensor-app_autogen/mocs_compilation.cpp.o
sensor-app: CMakeFiles/sensor-app.dir/infoexchanger.cpp.o
sensor-app: CMakeFiles/sensor-app.dir/main.cpp.o
sensor-app: CMakeFiles/sensor-app.dir/zmqprocess.cpp.o
sensor-app: CMakeFiles/sensor-app.dir/sensor-app_autogen/EWIEGA46WW/qrc_main.cpp.o
sensor-app: CMakeFiles/sensor-app.dir/build.make
sensor-app: /home/waelkarman/Qt/6.6.3/gcc_64/lib/libQt6Quick.so.6.6.3
sensor-app: /home/waelkarman/Qt/6.6.3/gcc_64/lib/libQt6Sql.so.6.6.3
sensor-app: /home/waelkarman/Qt/6.6.3/gcc_64/lib/libQt6QmlModels.so.6.6.3
sensor-app: /home/waelkarman/Qt/6.6.3/gcc_64/lib/libQt6Qml.so.6.6.3
sensor-app: /home/waelkarman/Qt/6.6.3/gcc_64/lib/libQt6Network.so.6.6.3
sensor-app: /home/waelkarman/Qt/6.6.3/gcc_64/lib/libQt6OpenGL.so.6.6.3
sensor-app: /home/waelkarman/Qt/6.6.3/gcc_64/lib/libQt6Gui.so.6.6.3
sensor-app: /usr/lib/x86_64-linux-gnu/libGLX.so
sensor-app: /usr/lib/x86_64-linux-gnu/libOpenGL.so
sensor-app: /home/waelkarman/Qt/6.6.3/gcc_64/lib/libQt6Core.so.6.6.3
sensor-app: CMakeFiles/sensor-app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/waelkarman/Documents/sensors-app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable sensor-app"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sensor-app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sensor-app.dir/build: sensor-app

.PHONY : CMakeFiles/sensor-app.dir/build

CMakeFiles/sensor-app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sensor-app.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sensor-app.dir/clean

CMakeFiles/sensor-app.dir/depend: sensor-app_autogen/EWIEGA46WW/qrc_main.cpp
	cd /home/waelkarman/Documents/sensors-app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/waelkarman/Documents/sensors-app /home/waelkarman/Documents/sensors-app /home/waelkarman/Documents/sensors-app/build /home/waelkarman/Documents/sensors-app/build /home/waelkarman/Documents/sensors-app/build/CMakeFiles/sensor-app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sensor-app.dir/depend
