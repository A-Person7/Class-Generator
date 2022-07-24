.PHONY: install uninstall

INSTALL_PATH := /usr/bin

install:
	cp cg -t $INSTALL_PATH

uninstall:
	rm $INSTALL_PATH/cg
