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
include Testing/CMakeFiles/nbsimBasicTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Testing/CMakeFiles/nbsimBasicTest.dir/compiler_depend.make

# Include the progress variables for this target.
include Testing/CMakeFiles/nbsimBasicTest.dir/progress.make

# Include the compile flags for this target's objects.
include Testing/CMakeFiles/nbsimBasicTest.dir/flags.make

Testing/CMakeFiles/nbsimBasicTest.dir/nbsimBasicTest.cpp.o: Testing/CMakeFiles/nbsimBasicTest.dir/flags.make
Testing/CMakeFiles/nbsimBasicTest.dir/nbsimBasicTest.cpp.o: ../Testing/nbsimBasicTest.cpp
Testing/CMakeFiles/nbsimBasicTest.dir/nbsimBasicTest.cpp.o: Testing/CMakeFiles/nbsimBasicTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Testing/CMakeFiles/nbsimBasicTest.dir/nbsimBasicTest.cpp.o"
	cd /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/Testing && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Testing/CMakeFiles/nbsimBasicTest.dir/nbsimBasicTest.cpp.o -MF CMakeFiles/nbsimBasicTest.dir/nbsimBasicTest.cpp.o.d -o CMakeFiles/nbsimBasicTest.dir/nbsimBasicTest.cpp.o -c /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Testing/nbsimBasicTest.cpp

Testing/CMakeFiles/nbsimBasicTest.dir/nbsimBasicTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nbsimBasicTest.dir/nbsimBasicTest.cpp.i"
	cd /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/Testing && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Testing/nbsimBasicTest.cpp > CMakeFiles/nbsimBasicTest.dir/nbsimBasicTest.cpp.i

Testing/CMakeFiles/nbsimBasicTest.dir/nbsimBasicTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nbsimBasicTest.dir/nbsimBasicTest.cpp.s"
	cd /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/Testing && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Testing/nbsimBasicTest.cpp -o CMakeFiles/nbsimBasicTest.dir/nbsimBasicTest.cpp.s

Testing/CMakeFiles/nbsimBasicTest.dir/nbsimCatchMain.cpp.o: Testing/CMakeFiles/nbsimBasicTest.dir/flags.make
Testing/CMakeFiles/nbsimBasicTest.dir/nbsimCatchMain.cpp.o: ../Testing/nbsimCatchMain.cpp
Testing/CMakeFiles/nbsimBasicTest.dir/nbsimCatchMain.cpp.o: Testing/CMakeFiles/nbsimBasicTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Testing/CMakeFiles/nbsimBasicTest.dir/nbsimCatchMain.cpp.o"
	cd /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/Testing && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Testing/CMakeFiles/nbsimBasicTest.dir/nbsimCatchMain.cpp.o -MF CMakeFiles/nbsimBasicTest.dir/nbsimCatchMain.cpp.o.d -o CMakeFiles/nbsimBasicTest.dir/nbsimCatchMain.cpp.o -c /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Testing/nbsimCatchMain.cpp

Testing/CMakeFiles/nbsimBasicTest.dir/nbsimCatchMain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nbsimBasicTest.dir/nbsimCatchMain.cpp.i"
	cd /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/Testing && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Testing/nbsimCatchMain.cpp > CMakeFiles/nbsimBasicTest.dir/nbsimCatchMain.cpp.i

Testing/CMakeFiles/nbsimBasicTest.dir/nbsimCatchMain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nbsimBasicTest.dir/nbsimCatchMain.cpp.s"
	cd /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/Testing && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Testing/nbsimCatchMain.cpp -o CMakeFiles/nbsimBasicTest.dir/nbsimCatchMain.cpp.s

# Object files for target nbsimBasicTest
nbsimBasicTest_OBJECTS = \
"CMakeFiles/nbsimBasicTest.dir/nbsimBasicTest.cpp.o" \
"CMakeFiles/nbsimBasicTest.dir/nbsimCatchMain.cpp.o"

# External object files for target nbsimBasicTest
nbsimBasicTest_EXTERNAL_OBJECTS =

bin/nbsimBasicTest: Testing/CMakeFiles/nbsimBasicTest.dir/nbsimBasicTest.cpp.o
bin/nbsimBasicTest: Testing/CMakeFiles/nbsimBasicTest.dir/nbsimCatchMain.cpp.o
bin/nbsimBasicTest: Testing/CMakeFiles/nbsimBasicTest.dir/build.make
bin/nbsimBasicTest: bin/libphas0100assignment2.a
bin/nbsimBasicTest: Testing/CMakeFiles/nbsimBasicTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/nbsimBasicTest"
	cd /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/Testing && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nbsimBasicTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Testing/CMakeFiles/nbsimBasicTest.dir/build: bin/nbsimBasicTest
.PHONY : Testing/CMakeFiles/nbsimBasicTest.dir/build

Testing/CMakeFiles/nbsimBasicTest.dir/clean:
	cd /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/Testing && $(CMAKE_COMMAND) -P CMakeFiles/nbsimBasicTest.dir/cmake_clean.cmake
.PHONY : Testing/CMakeFiles/nbsimBasicTest.dir/clean

Testing/CMakeFiles/nbsimBasicTest.dir/depend:
	cd /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2 /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Testing /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/Testing /home/siddhant/Code/Projects/Freelance/cpp-gravitational-sim/PHAS0100Assignment2/Build/Testing/CMakeFiles/nbsimBasicTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Testing/CMakeFiles/nbsimBasicTest.dir/depend
