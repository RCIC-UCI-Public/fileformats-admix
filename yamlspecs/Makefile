# Copyright (c) 2000 - 2019 The Regents of the University of California.
# All rights reserved.	
# This includes the Generic yaml2rpm Makefile - most packaging should
# be able to use this.
SUBMAKES = MakefileSys Makefile8
.DEFAULT_GOAL = default
%.pkg:
	for f in $(SUBMAKES); do \
		if [ -f $@ ] ; then /bin/rm $@; fi; \
		$(MAKE) -f $$f $@; \
        done
	
ansible: 
	$(MAKE) -s -f MakefileSys $@

manifest module-provides module-requires:
	$(MAKE) -s -f MakefileSys $@
	$(MAKE) -s -f Makefile8 $@
%: 	
	$(MAKE) -f MakefileSys $*
	$(MAKE) -f MakefileSys clean versions.yaml
	$(MAKE) -f Makefile8 $*
	
	
