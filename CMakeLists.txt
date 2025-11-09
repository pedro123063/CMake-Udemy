# 0)Create source and CMakeFile
# 1)mkdir build
# 2)cd build        // easy to forget but very important
# 3) cmake ..       //tells the cmake which CMakeLists.txt is our main one when inside build, meaning, the one in the father dir
# 4) cmake --build .      //specifies that the current directory(should be "build") is the directory in which build the executables and sorts
# 5) ./<executable_name>


#TIPS:
#   If you want CMake to build only one of the targets(to see if it's compilling, for example), use 
#                                        "cmake --build <build_path> --target <target_to_build_name>"

cmake_minimum_required(VERSION 3.22)

project(CppProjectTemplate 
VERSION 1.0.0 
LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

option(COMPILE_EXECUTABLE "wether to compile the executable" OFF)# can be toggled on when configuring the project
                                                                 # ("cmake .." step) and then adding 
                                                                 #" -D<option_name>=<value>"
                                                                 #note: there's no space between -D and <option_name>


add_subdirectory(source)    #should come first, since app depends on it
if(COMPILE_EXECUTABLE)
    add_subdirectory(app)   # obs: if your file to become an executable is inside a subdirectory(like app, for example)
                        # then, it will be on a subdirectory inside build too. As such, you'll need to adjust the path 
                        # when calling the executble on the ./ to run the project. If the file is inside a tree, probably the tree will be replicated too
else()
    message("W/o exe. compilling")
endif()