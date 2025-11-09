add_library(OLIB STATIC other_lib.cpp)

target_include_directories(OLIB PUBLIC "./")
target_link_libraries(OLIB PUBLIC Library)  # if i want to link a lib to another,
                                            # i link them with this command. no need do do it when 
                                            #linking the exec to a lib
                                            
                                            #nicknames you used on CMakeLists (not the literal file names!!).

