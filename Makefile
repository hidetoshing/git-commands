
TARGET_DIR := $(HOME)/local/bin

help:
	cat Makefile

install:
	@echo "mkdir -p $(TARGET_DIR)"; mkdir -p $(TARGET_DIR);
	@$(foreach val, $(wildcard git-*), ln -sfnv $(abspath $(val)) $(TARGET_DIR)/$(val);)

