# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 4.0

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\14804\Desktop\Blackjack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\14804\Desktop\Blackjack\build

# Include any dependencies generated for this target.
include CMakeFiles/BlackJack.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/BlackJack.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/BlackJack.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BlackJack.dir/flags.make

CMakeFiles/BlackJack.dir/codegen:
.PHONY : CMakeFiles/BlackJack.dir/codegen

CMakeFiles/BlackJack.dir/Main.cpp.obj: CMakeFiles/BlackJack.dir/flags.make
CMakeFiles/BlackJack.dir/Main.cpp.obj: C:/Users/14804/Desktop/Blackjack/Main.cpp
CMakeFiles/BlackJack.dir/Main.cpp.obj: CMakeFiles/BlackJack.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\14804\Desktop\Blackjack\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BlackJack.dir/Main.cpp.obj"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BlackJack.dir/Main.cpp.obj -MF CMakeFiles\BlackJack.dir\Main.cpp.obj.d -o CMakeFiles\BlackJack.dir\Main.cpp.obj -c C:\Users\14804\Desktop\Blackjack\Main.cpp

CMakeFiles/BlackJack.dir/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/BlackJack.dir/Main.cpp.i"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\14804\Desktop\Blackjack\Main.cpp > CMakeFiles\BlackJack.dir\Main.cpp.i

CMakeFiles/BlackJack.dir/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/BlackJack.dir/Main.cpp.s"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\14804\Desktop\Blackjack\Main.cpp -o CMakeFiles\BlackJack.dir\Main.cpp.s

# Object files for target BlackJack
BlackJack_OBJECTS = \
"CMakeFiles/BlackJack.dir/Main.cpp.obj"

# External object files for target BlackJack
BlackJack_EXTERNAL_OBJECTS =

BlackJack.exe: CMakeFiles/BlackJack.dir/Main.cpp.obj
BlackJack.exe: CMakeFiles/BlackJack.dir/build.make
BlackJack.exe: CMakeFiles/BlackJack.dir/linkLibs.rsp
BlackJack.exe: CMakeFiles/BlackJack.dir/objects1.rsp
BlackJack.exe: CMakeFiles/BlackJack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\14804\Desktop\Blackjack\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable BlackJack.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\BlackJack.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BlackJack.dir/build: BlackJack.exe
.PHONY : CMakeFiles/BlackJack.dir/build

CMakeFiles/BlackJack.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\BlackJack.dir\cmake_clean.cmake
.PHONY : CMakeFiles/BlackJack.dir/clean

CMakeFiles/BlackJack.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\14804\Desktop\Blackjack C:\Users\14804\Desktop\Blackjack C:\Users\14804\Desktop\Blackjack\build C:\Users\14804\Desktop\Blackjack\build C:\Users\14804\Desktop\Blackjack\build\CMakeFiles\BlackJack.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/BlackJack.dir/depend

