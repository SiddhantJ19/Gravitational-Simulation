# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /opt/cmake-3.20.0-linux-x86_64/bin/cmake

# The command to remove a file.
RM = /opt/cmake-3.20.0-linux-x86_64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build

# Include any dependencies generated for this target.
include Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/compiler_depend.make

# Include the progress variables for this target.
include Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/progress.make

# Include the compile flags for this target's objects.
include Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/flags.make

Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/nbsimMyFirstApp.cpp.o: Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/flags.make
Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/nbsimMyFirstApp.cpp.o: ../Code/CommandLineApps/nbsimMyFirstApp.cpp
Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/nbsimMyFirstApp.cpp.o: Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/nbsimMyFirstApp.cpp.o"
	cd /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/Code/CommandLineApps && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/nbsimMyFirstApp.cpp.o -MF CMakeFiles/nbsimMyFirstApp.dir/nbsimMyFirstApp.cpp.o.d -o CMakeFiles/nbsimMyFirstApp.dir/nbsimMyFirstApp.cpp.o -c /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Code/CommandLineApps/nbsimMyFirstApp.cpp

Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/nbsimMyFirstApp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nbsimMyFirstApp.dir/nbsimMyFirstApp.cpp.i"
	cd /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/Code/CommandLineApps && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Code/CommandLineApps/nbsimMyFirstApp.cpp > CMakeFiles/nbsimMyFirstApp.dir/nbsimMyFirstApp.cpp.i

Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/nbsimMyFirstApp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nbsimMyFirstApp.dir/nbsimMyFirstApp.cpp.s"
	cd /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/Code/CommandLineApps && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Code/CommandLineApps/nbsimMyFirstApp.cpp -o CMakeFiles/nbsimMyFirstApp.dir/nbsimMyFirstApp.cpp.s

# Object files for target nbsimMyFirstApp
nbsimMyFirstApp_OBJECTS = \
"CMakeFiles/nbsimMyFirstApp.dir/nbsimMyFirstApp.cpp.o"

# External object files for target nbsimMyFirstApp
nbsimMyFirstApp_EXTERNAL_OBJECTS =

bin/nbsimMyFirstApp: Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/nbsimMyFirstApp.cpp.o
bin/nbsimMyFirstApp: Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/build.make
bin/nbsimMyFirstApp: bin/libphas0100assignment2.a
bin/nbsimMyFirstApp: Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/nbsimMyFirstApp"
	cd /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/Code/CommandLineApps && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nbsimMyFirstApp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/build: bin/nbsimMyFirstApp
.PHONY : Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/build

Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/clean:
	cd /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/Code/CommandLineApps && $(CMAKE_COMMAND) -P CMakeFiles/nbsimMyFirstApp.dir/cmake_clean.cmake
.PHONY : Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/clean

Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/depend:
	cd /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2 /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Code/CommandLineApps /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/Code/CommandLineApps /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Code/CommandLineApps/CMakeFiles/nbsimMyFirstApp.dir/depend

