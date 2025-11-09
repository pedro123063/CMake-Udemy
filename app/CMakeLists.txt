add_executable(Exec main.cpp)   #first <executable_name> then <source_main> 

target_link_libraries(Exec PUBLIC OLIB)  #when you use a lib on a file, you'll need to 
                                            #link the first to the former. For that use this with the
