all: hard_clean_ build_ install_

#
# Special build targets
.PHONY: hard_clean_
hard_clean_:
	rm -rf $(CONST_BUILD_DIR)
	rm -rf $(CONST_INSTALL_DIR)