# Build in case of the Version of CMake is more than or equal 3.22
cmake_minimum_required(VERSION 3.22)

# The name of the project
project(HELLOWORLD)

# The executable files separated by ' ', helloWorld is the output executable from these files
add_executable(helloWorld src/lib.c main.c)

# the include files for the executable file helloWorld, and i will specify PUBLIC then
target_include_directories(helloWorld PUBLIC includes/)