cmake_minimum_required(VERSION 3.22)

project(HelloWorld)

# create the library math_utils
add_library(math_utils STATIC src/math_utils.c)

# add the needed include directories for library math_utils
target_include_directories(math_utils PUBLIC includes/)

# the executables of our program which is the main
add_executable(main_app main.c)

# link the main with the library
target_link_libraries(main_app math_utils)