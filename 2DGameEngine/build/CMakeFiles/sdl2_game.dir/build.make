# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.23.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.23.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lyon_z/workspace/test/2DGameEngine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lyon_z/workspace/test/2DGameEngine/build

# Include any dependencies generated for this target.
include CMakeFiles/sdl2_game.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sdl2_game.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sdl2_game.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sdl2_game.dir/flags.make

CMakeFiles/sdl2_game.dir/src/game_a.cpp.o: CMakeFiles/sdl2_game.dir/flags.make
CMakeFiles/sdl2_game.dir/src/game_a.cpp.o: ../src/game_a.cpp
CMakeFiles/sdl2_game.dir/src/game_a.cpp.o: CMakeFiles/sdl2_game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lyon_z/workspace/test/2DGameEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sdl2_game.dir/src/game_a.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sdl2_game.dir/src/game_a.cpp.o -MF CMakeFiles/sdl2_game.dir/src/game_a.cpp.o.d -o CMakeFiles/sdl2_game.dir/src/game_a.cpp.o -c /Users/lyon_z/workspace/test/2DGameEngine/src/game_a.cpp

CMakeFiles/sdl2_game.dir/src/game_a.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sdl2_game.dir/src/game_a.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lyon_z/workspace/test/2DGameEngine/src/game_a.cpp > CMakeFiles/sdl2_game.dir/src/game_a.cpp.i

CMakeFiles/sdl2_game.dir/src/game_a.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sdl2_game.dir/src/game_a.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lyon_z/workspace/test/2DGameEngine/src/game_a.cpp -o CMakeFiles/sdl2_game.dir/src/game_a.cpp.s

# Object files for target sdl2_game
sdl2_game_OBJECTS = \
"CMakeFiles/sdl2_game.dir/src/game_a.cpp.o"

# External object files for target sdl2_game
sdl2_game_EXTERNAL_OBJECTS =

bin/sdl2_game: CMakeFiles/sdl2_game.dir/src/game_a.cpp.o
bin/sdl2_game: CMakeFiles/sdl2_game.dir/build.make
bin/sdl2_game: include/libMygamelib.a
bin/sdl2_game: CMakeFiles/sdl2_game.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lyon_z/workspace/test/2DGameEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/sdl2_game"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sdl2_game.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sdl2_game.dir/build: bin/sdl2_game
.PHONY : CMakeFiles/sdl2_game.dir/build

CMakeFiles/sdl2_game.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sdl2_game.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sdl2_game.dir/clean

CMakeFiles/sdl2_game.dir/depend:
	cd /Users/lyon_z/workspace/test/2DGameEngine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lyon_z/workspace/test/2DGameEngine /Users/lyon_z/workspace/test/2DGameEngine /Users/lyon_z/workspace/test/2DGameEngine/build /Users/lyon_z/workspace/test/2DGameEngine/build /Users/lyon_z/workspace/test/2DGameEngine/build/CMakeFiles/sdl2_game.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sdl2_game.dir/depend
