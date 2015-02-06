project(PROBLEM_1)

cmake_minimum_required(VERSION 2.8)

set(CMAKE_C_FLAGS "-Werror -Wall -Wextra -Wno-unused-parameter -Wundef -std=c99")

add_executable(problem_1
    main.c
)

install(TARGETS problem_1 DESTINATION ${CONST_INSTALL_DIR})