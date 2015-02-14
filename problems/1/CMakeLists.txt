project(PROBLEM_1)
#
# Common includes for build targets
include(${CONST_CMAKE_LIBARY_DIR}/startup.cmake)
cmake_minimum_required(VERSION ${CONST_CMAKE_MIN_VERSION_REQUIRED})

#
# Specific includes for this target
include(target_helpers)

add_problem(
    "${CMAKE_CURRENT_LIST_DIR}/solver.c"
    "${CONST_INSTALL_DIR}"
    "pe_solver"
    "pe_solver"
)

add_library_directories()