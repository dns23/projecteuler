# Define build matrix function
# arg 1 is the target
# arg 2 is the machine architecture
# arg 3 is the compiler
define BUILD_MATRIX_FCN

#
# Define some constants
$(1)_$(2)_$(3)_BUILD_DIR:=$(CONST_BUILD_DIR)/$(1)/$(2)/$(3)
$(1)_$(2)_$(3)_INSTALL_DIR:=$(CONST_INSTALL_DIR)/$(2)/$(3)
$(1)_$(2)_$(3)_SOURCE_DIR:=$(CONST_ROOT_DIR)/problems/$(1)

#
# Define private build info targets
.PHONY: _build_info_$(1)_$(2)_$(3)
_build_info_$(1)_$(2)_$(3):
	echo "INFO: TARGET       : $(1)"
	echo "INFO: MACHINE ARCH : $(2)"
	echo "INFO: COMPILER     : $(3)"

#
# Define private config targets
.PHONY: _config_$(1)_$(2)_$(3)
_config_$(1)_$(2)_$(3) : \
   _build_info_$(1)_$(2)_$(3) \
   $$($(1)_$(2)_$(3)_BUILD_DIR)/Makefile

$$($(1)_$(2)_$(3)_BUILD_DIR)/Makefile:
	mkdir -p $$($(1)_$(2)_$(3)_BUILD_DIR)
	mkdir -p $$($(1)_$(2)_$(3)_INSTALL_DIR)
	cd $$($(1)_$(2)_$(3)_BUILD_DIR) && cmake \
      -D CMAKE_BUILD_TYPE=release \
      -D CMAKE_TOOLCHAIN_FILE=$(CONST_CMAKE_LIBARY_DIR)/toolchains/$(3).cmake \
      -D CONST_CMAKE_LIBARY_DIR=$(CONST_CMAKE_LIBARY_DIR) \
      -D CONST_INSTALL_DIR=$$($(1)_$(2)_$(3)_INSTALL_DIR) \
      -G "Unix Makefiles" \
      $$($(1)_$(2)_$(3)_SOURCE_DIR)

#
# Link config targets
_config_$(1)_$(2)_: _config_$(1)_$(2)_$(3)
_config_$(1)_: _config_$(1)_$(2)_
_config_: _config_$(1)_

#
# Define build targets
.PHONY: build_$(1)_$(2)_$(3)
build_$(1)_$(2)_$(3): \
   _config_$(1)_$(2)_$(3) \
   _compile_$(1)_$(2)_$(3) \
   install_$(1)_$(2)_$(3)

_compile_$(1)_$(2)_$(3):
	$(MAKE) -C $$($(1)_$(2)_$(3)_BUILD_DIR) -j $(JOB_SLOTS)

#
# Link build targets
build_$(1)_$(2)_: build_$(1)_$(2)_$(3)
build_$(1)_: build_$(1)_$(2)_
build_: build_$(1)_

#
# Define install targets
.PHONY: install_$(1)_$(2)_$(3)
install_$(1)_$(2)_$(3): _config_$(1)_$(2)_$(3)
	$(MAKE) -C $$($(1)_$(2)_$(3)_BUILD_DIR) install -j $(JOB_SLOTS)

#
# Link install targets
install_$(1)_$(2)_: install_$(1)_$(2)_$(3)
install_$(1)_: install_$(1)_$(2)_
install_: install_$(1)_

#
# Define clean targets
.PHONY: clean_$(1)_$(2)_$(3)
clean_$(1)_$(2)_$(3):
	$(MAKE) -C $$($(1)_$(2)_$(3)_BUILD_DIR) clean

#
# Link install targets
clean_$(1)_$(2)_: clean_$(1)_$(2)_$(3)
clean_$(1)_: clean_$(1)_$(2)_
clean_: clean_$(1)_

endef
