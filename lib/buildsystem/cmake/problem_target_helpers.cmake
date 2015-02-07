
function(add_problem
            PROBLEM_NUMBER
            SRC_FILES)

    set(CMAKE_C_FLAGS "-Werror -Wall -Wextra -Wno-unused-parameter -Wundef -std=c99")
    set(TARGET_NAME "problem_${PROBLEM_NUMBER}")

    add_executable(${TARGET_NAME} ${SRC_FILES})
    install(TARGETS ${TARGET_NAME} DESTINATION ${CONST_INSTALL_DIR})

endfunction(add_problem)
