#
# Define constants for all includes to use.
CONST_ROOT_DIR=$(CURDIR)
CONST_BUILD_DIR=$(CONST_ROOT_DIR)/_bld
CONST_INSTALL_DIR=$(CONST_ROOT_DIR)/_install
CONST_MAKE_LIBARY_DIR=$(CONST_ROOT_DIR)/lib/buildsystem/make
CONST_CMAKE_LIBARY_DIR=$(CONST_ROOT_DIR)/lib/buildsystem/cmake

#
# Deal with start up arguments to make script
-include $(CONST_MAKE_LIBARY_DIR)/startup.mk

#
# Include target files
-include $(CONST_MAKE_LIBARY_DIR)/targets/build.mk
-include $(CONST_MAKE_LIBARY_DIR)/targets/build-matrix.mk

#
# Create targets
dirs=$(shell ls $(CONST_ROOT_DIR)/problems)
support_compilers=gcc clang
support_machine_archs=x86_64 cortex_m3

$(foreach dir,$(dirs), \
    $(foreach arch,$(support_machine_archs), \
        $(foreach compiler,$(support_compilers), $(eval $(call BUILD_MATRIX_FCN,$(dir),$(arch),$(compiler))))))