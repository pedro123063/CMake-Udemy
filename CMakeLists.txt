# 0)Create source and CMakeFile
# 1)mkdir build
# 2)cd build        // easy to forget but very important
# 3) cmake ..       //tells the cmake which CMakeLists.txt is our main one when inside build, meaning, the one in the father dir
# 4) cmake --build .      //specifies that the current directory(should be build) is the directory in which build the executables and sorts
# 5) ./<executable_name>
cmake_minimum_required(VERSION 3.22)

project(CppProjectTemplate 
VERSION 1.0.0 
LANGUAGES C CXX)

add_library(Library STATIC my_lib.cpp)  #when creating a lib file in your CMake project 
                                        #that will be used by another, you'll need to 
                                        #indicate to CMake that there's that lib to manage  

add_library(OLIB STATIC other_lib.cpp)

add_executable(Exec main.cpp)   #first <executable_name> then <source_main> 

target_link_libraries(OLIB PUBLIC Library)  # if i want to link a lib to another,
                                            # i link them with this command. no need do do it when 
                                            #linking the exec to a lib
                                            
target_link_libraries(Exec PUBLIC OLIB)  #when you use a lib on a file, you'll need to 
                                            #link the first to the former. For that use this with the
                                            #nicknames you used on CMakeLists (not the literal file names!!).
