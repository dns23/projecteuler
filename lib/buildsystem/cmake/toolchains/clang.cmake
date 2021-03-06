# 
# the name of the target operating system
set(CMAKE_SYSTEM_NAME      Linux)

#
# which compilers to use for C and C++
set(CMAKE_C_COMPILER       clang)
set(CMAKE_CXX_COMPILER     clang++)
set(CMAKE_ASM_COMPILER     llvm-as-3.0)

#
# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment,
# search programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
