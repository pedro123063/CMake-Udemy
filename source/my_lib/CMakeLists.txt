add_library(Library STATIC my_lib.cpp)  #when creating a lib file in your CMake project 
                                        #that will be used by another, you'll need to 
                                        #indicate to CMake that there's that lib to manage  

target_include_directories(Library PUBLIC "./")    # for the include to work, we need to also tell 
                                                   #CMake where the target's header is