
DEST         := $(HOME)/local/bin
TARGET_FILES := $(wildcard git-*)

help:
	cat Makefile

install:
	@echo "mkdir -p $(DEST)"; mkdir -p $(DEST);
	@$(foreach val, $(TARGET_FILES), ln -sfnv $(abspath $(val)) $(DEST)/$(val);)

