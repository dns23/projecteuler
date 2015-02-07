project(PROBLEM_1)
include(${CONST_CMAKE_LIBARY_DIR}/startup.cmake)
cmake_minimum_required(VERSION ${CONST_CMAKE_MIN_VERSION_REQUIRED})

include(problem_target_helpers)

add_problem(1 "${CMAKE_CURRENT_LIST_DIR}/main.c")