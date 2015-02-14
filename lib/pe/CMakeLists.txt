project(PE_SOLVER)

add_library(pe_solver pe_main.c)

execute_process(COMMAND cp ${CMAKE_CURRENT_LIST_DIR}/pe_solver.h ${CONST_INSTALL_DIR})
execute_process(COMMAND cp ${CMAKE_CURRENT_LIST_DIR}/pe_solver_instance.h ${CONST_INSTALL_DIR})