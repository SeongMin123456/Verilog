# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = C:/Xilinx/Vitis/2023.2/tps/win64/cmake-3.24.2/bin/cmake.exe

# The command to remove a file.
RM = C:/Xilinx/Vitis/2023.2/tps/win64/cmake-3.24.2/bin/cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp

# Include any dependencies generated for this target.
include libsrc/devcfg/src/CMakeFiles/devcfg.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsrc/devcfg/src/CMakeFiles/devcfg.dir/compiler_depend.make

# Include the progress variables for this target.
include libsrc/devcfg/src/CMakeFiles/devcfg.dir/progress.make

# Include the compile flags for this target's objects.
include libsrc/devcfg/src/CMakeFiles/devcfg.dir/flags.make

libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg.c.obj: libsrc/devcfg/src/CMakeFiles/devcfg.dir/flags.make
libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg.c.obj: C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg.c
libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg.c.obj: libsrc/devcfg/src/CMakeFiles/devcfg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg.c.obj"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg.c.obj -MF CMakeFiles/devcfg.dir/xdevcfg.c.obj.d -o CMakeFiles/devcfg.dir/xdevcfg.c.obj -c C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg.c

libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/devcfg.dir/xdevcfg.c.i"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg.c > CMakeFiles/devcfg.dir/xdevcfg.c.i

libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/devcfg.dir/xdevcfg.c.s"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg.c -o CMakeFiles/devcfg.dir/xdevcfg.c.s

libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_g.c.obj: libsrc/devcfg/src/CMakeFiles/devcfg.dir/flags.make
libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_g.c.obj: C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_g.c
libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_g.c.obj: libsrc/devcfg/src/CMakeFiles/devcfg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_g.c.obj"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_g.c.obj -MF CMakeFiles/devcfg.dir/xdevcfg_g.c.obj.d -o CMakeFiles/devcfg.dir/xdevcfg_g.c.obj -c C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_g.c

libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_g.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/devcfg.dir/xdevcfg_g.c.i"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_g.c > CMakeFiles/devcfg.dir/xdevcfg_g.c.i

libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_g.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/devcfg.dir/xdevcfg_g.c.s"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_g.c -o CMakeFiles/devcfg.dir/xdevcfg_g.c.s

libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_hw.c.obj: libsrc/devcfg/src/CMakeFiles/devcfg.dir/flags.make
libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_hw.c.obj: C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_hw.c
libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_hw.c.obj: libsrc/devcfg/src/CMakeFiles/devcfg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_hw.c.obj"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_hw.c.obj -MF CMakeFiles/devcfg.dir/xdevcfg_hw.c.obj.d -o CMakeFiles/devcfg.dir/xdevcfg_hw.c.obj -c C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_hw.c

libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_hw.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/devcfg.dir/xdevcfg_hw.c.i"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_hw.c > CMakeFiles/devcfg.dir/xdevcfg_hw.c.i

libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_hw.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/devcfg.dir/xdevcfg_hw.c.s"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_hw.c -o CMakeFiles/devcfg.dir/xdevcfg_hw.c.s

libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_intr.c.obj: libsrc/devcfg/src/CMakeFiles/devcfg.dir/flags.make
libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_intr.c.obj: C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_intr.c
libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_intr.c.obj: libsrc/devcfg/src/CMakeFiles/devcfg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_intr.c.obj"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_intr.c.obj -MF CMakeFiles/devcfg.dir/xdevcfg_intr.c.obj.d -o CMakeFiles/devcfg.dir/xdevcfg_intr.c.obj -c C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_intr.c

libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_intr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/devcfg.dir/xdevcfg_intr.c.i"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_intr.c > CMakeFiles/devcfg.dir/xdevcfg_intr.c.i

libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_intr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/devcfg.dir/xdevcfg_intr.c.s"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_intr.c -o CMakeFiles/devcfg.dir/xdevcfg_intr.c.s

libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_selftest.c.obj: libsrc/devcfg/src/CMakeFiles/devcfg.dir/flags.make
libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_selftest.c.obj: C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_selftest.c
libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_selftest.c.obj: libsrc/devcfg/src/CMakeFiles/devcfg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_selftest.c.obj"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_selftest.c.obj -MF CMakeFiles/devcfg.dir/xdevcfg_selftest.c.obj.d -o CMakeFiles/devcfg.dir/xdevcfg_selftest.c.obj -c C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_selftest.c

libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_selftest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/devcfg.dir/xdevcfg_selftest.c.i"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_selftest.c > CMakeFiles/devcfg.dir/xdevcfg_selftest.c.i

libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_selftest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/devcfg.dir/xdevcfg_selftest.c.s"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_selftest.c -o CMakeFiles/devcfg.dir/xdevcfg_selftest.c.s

libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_sinit.c.obj: libsrc/devcfg/src/CMakeFiles/devcfg.dir/flags.make
libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_sinit.c.obj: C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_sinit.c
libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_sinit.c.obj: libsrc/devcfg/src/CMakeFiles/devcfg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_sinit.c.obj"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_sinit.c.obj -MF CMakeFiles/devcfg.dir/xdevcfg_sinit.c.obj.d -o CMakeFiles/devcfg.dir/xdevcfg_sinit.c.obj -c C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_sinit.c

libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_sinit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/devcfg.dir/xdevcfg_sinit.c.i"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_sinit.c > CMakeFiles/devcfg.dir/xdevcfg_sinit.c.i

libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_sinit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/devcfg.dir/xdevcfg_sinit.c.s"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && C:/Xilinx/Vitis/2023.2/gnu/aarch32/nt/gcc-arm-none-eabi/bin/arm-none-eabi-gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src/xdevcfg_sinit.c -o CMakeFiles/devcfg.dir/xdevcfg_sinit.c.s

# Object files for target devcfg
devcfg_OBJECTS = \
"CMakeFiles/devcfg.dir/xdevcfg.c.obj" \
"CMakeFiles/devcfg.dir/xdevcfg_g.c.obj" \
"CMakeFiles/devcfg.dir/xdevcfg_hw.c.obj" \
"CMakeFiles/devcfg.dir/xdevcfg_intr.c.obj" \
"CMakeFiles/devcfg.dir/xdevcfg_selftest.c.obj" \
"CMakeFiles/devcfg.dir/xdevcfg_sinit.c.obj"

# External object files for target devcfg
devcfg_EXTERNAL_OBJECTS =

libsrc/devcfg/src/libdevcfg.a: libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg.c.obj
libsrc/devcfg/src/libdevcfg.a: libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_g.c.obj
libsrc/devcfg/src/libdevcfg.a: libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_hw.c.obj
libsrc/devcfg/src/libdevcfg.a: libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_intr.c.obj
libsrc/devcfg/src/libdevcfg.a: libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_selftest.c.obj
libsrc/devcfg/src/libdevcfg.a: libsrc/devcfg/src/CMakeFiles/devcfg.dir/xdevcfg_sinit.c.obj
libsrc/devcfg/src/libdevcfg.a: libsrc/devcfg/src/CMakeFiles/devcfg.dir/build.make
libsrc/devcfg/src/libdevcfg.a: libsrc/devcfg/src/CMakeFiles/devcfg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C static library libdevcfg.a"
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && $(CMAKE_COMMAND) -P CMakeFiles/devcfg.dir/cmake_clean_target.cmake
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/devcfg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsrc/devcfg/src/CMakeFiles/devcfg.dir/build: libsrc/devcfg/src/libdevcfg.a
.PHONY : libsrc/devcfg/src/CMakeFiles/devcfg.dir/build

libsrc/devcfg/src/CMakeFiles/devcfg.dir/clean:
	cd C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src && $(CMAKE_COMMAND) -P CMakeFiles/devcfg.dir/cmake_clean.cmake
.PHONY : libsrc/devcfg/src/CMakeFiles/devcfg.dir/clean

libsrc/devcfg/src/CMakeFiles/devcfg.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/devcfg/src C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src C:/verilog_lab/my_Zynq_sw/platform/zynq_fsbl/zynq_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/devcfg/src/CMakeFiles/devcfg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libsrc/devcfg/src/CMakeFiles/devcfg.dir/depend
