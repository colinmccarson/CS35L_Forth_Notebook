# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /mnt/c/Users/colin/CLionProjects/forthinterpreter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/colin/CLionProjects/forthinterpreter/cmake-build-wsl

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /mnt/c/Users/colin/CLionProjects/forthinterpreter/cmake-build-wsl/CMakeFiles /mnt/c/Users/colin/CLionProjects/forthinterpreter/cmake-build-wsl/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /mnt/c/Users/colin/CLionProjects/forthinterpreter/cmake-build-wsl/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named forthinterpreter

# Build rule for target.
forthinterpreter: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 forthinterpreter
.PHONY : forthinterpreter

# fast build rule for target.
forthinterpreter/fast:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/build
.PHONY : forthinterpreter/fast

context.o: context.c.o

.PHONY : context.o

# target to build an object file
context.c.o:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/context.c.o
.PHONY : context.c.o

context.i: context.c.i

.PHONY : context.i

# target to preprocess a source file
context.c.i:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/context.c.i
.PHONY : context.c.i

context.s: context.c.s

.PHONY : context.s

# target to generate assembly for a file
context.c.s:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/context.c.s
.PHONY : context.c.s

list.o: list.c.o

.PHONY : list.o

# target to build an object file
list.c.o:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/list.c.o
.PHONY : list.c.o

list.i: list.c.i

.PHONY : list.i

# target to preprocess a source file
list.c.i:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/list.c.i
.PHONY : list.c.i

list.s: list.c.s

.PHONY : list.s

# target to generate assembly for a file
list.c.s:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/list.c.s
.PHONY : list.c.s

main.o: main.c.o

.PHONY : main.o

# target to build an object file
main.c.o:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/main.c.o
.PHONY : main.c.o

main.i: main.c.i

.PHONY : main.i

# target to preprocess a source file
main.c.i:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/main.c.i
.PHONY : main.c.i

main.s: main.c.s

.PHONY : main.s

# target to generate assembly for a file
main.c.s:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/main.c.s
.PHONY : main.c.s

shell.o: shell.c.o

.PHONY : shell.o

# target to build an object file
shell.c.o:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/shell.c.o
.PHONY : shell.c.o

shell.i: shell.c.i

.PHONY : shell.i

# target to preprocess a source file
shell.c.i:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/shell.c.i
.PHONY : shell.c.i

shell.s: shell.c.s

.PHONY : shell.s

# target to generate assembly for a file
shell.c.s:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/shell.c.s
.PHONY : shell.c.s

stack.o: stack.c.o

.PHONY : stack.o

# target to build an object file
stack.c.o:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/stack.c.o
.PHONY : stack.c.o

stack.i: stack.c.i

.PHONY : stack.i

# target to preprocess a source file
stack.c.i:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/stack.c.i
.PHONY : stack.c.i

stack.s: stack.c.s

.PHONY : stack.s

# target to generate assembly for a file
stack.c.s:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/stack.c.s
.PHONY : stack.c.s

wordlib.o: wordlib.c.o

.PHONY : wordlib.o

# target to build an object file
wordlib.c.o:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/wordlib.c.o
.PHONY : wordlib.c.o

wordlib.i: wordlib.c.i

.PHONY : wordlib.i

# target to preprocess a source file
wordlib.c.i:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/wordlib.c.i
.PHONY : wordlib.c.i

wordlib.s: wordlib.c.s

.PHONY : wordlib.s

# target to generate assembly for a file
wordlib.c.s:
	$(MAKE) -f CMakeFiles/forthinterpreter.dir/build.make CMakeFiles/forthinterpreter.dir/wordlib.c.s
.PHONY : wordlib.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... forthinterpreter"
	@echo "... context.o"
	@echo "... context.i"
	@echo "... context.s"
	@echo "... list.o"
	@echo "... list.i"
	@echo "... list.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... shell.o"
	@echo "... shell.i"
	@echo "... shell.s"
	@echo "... stack.o"
	@echo "... stack.i"
	@echo "... stack.s"
	@echo "... wordlib.o"
	@echo "... wordlib.i"
	@echo "... wordlib.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
