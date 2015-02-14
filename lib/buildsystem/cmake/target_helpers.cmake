
function(add_problem
            PROBLEM_NUMBER
            SRC_FILES
            INCLUDE_DIRS
            TARGET_LINKS
            DEPENDENCIES)

    set(CMAKE_C_FLAGS "-Werror -Wall -Wextra -Wno-unused-parameter -Wundef -std=c99")
    set(TARGET_NAME "problem_${PROBLEM_NUMBER}")

    include_directories(${INCLUDE_DIRS})

    add_executable(${TARGET_NAME} ${SRC_FILES})
    add_dependencies(${TARGET_NAME} ${DEPENDENCIES})
    target_link_libraries(${TARGET_NAME} ${TARGET_LINKS})

    install(TARGETS ${TARGET_NAME} DESTINATION ${CONST_INSTALL_DIR})

endfunction(add_problem)

function(add_library_directories)
    add_subdirectory(${CONST_LIB_SOURCE_DIR} ${CONST_LIB_BINARY_DIR})
endfunction(add_library_directories)
