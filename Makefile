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
$(eval $(call BUILD_MATRIX_FCN,1,x86_64,gcc))
$(eval $(call BUILD_MATRIX_FCN,1,x86_64,clang))
