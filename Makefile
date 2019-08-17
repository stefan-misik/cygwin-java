# Makefile for installing the script

INSTALL_LOC = /usr/local/bin/java

.PHONY: install uninstall

$(INSTALL_LOC): cygwin_java.sh
	cp $< $@
	chmod +x $@

install: $(INSTALL_LOC)

uninstall:
	$(RM) $(INSTALL_LOC)

