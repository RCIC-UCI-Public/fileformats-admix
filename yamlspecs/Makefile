# Copyright (c) 2000 - 2019 The Regents of the University of California.
# All rights reserved.	
# This includes the Generic yaml2rpm Makefile - most packaging should
# be able to use this.
SUBMAKES = MakefileSys Makefile8 Makefile.intel
.DEFAULT_GOAL = default

%.pkg: 
	make versions.yaml
	for f in $(SUBMAKES); do \
		if [ -f $@ ] ; then /bin/rm $@; fi; \
		$(MAKE) -f $$f $@; \
        done
	
ansible: 
	$(MAKE) -s -f MakefileSys $@

manifest module-provides module-requires:
	$(MAKE) -s -f MakefileSys $@
	$(MAKE) -s -f Makefile8 $@
	$(MAKE) -s -f Makefile.intel $@

%: 	
	$(MAKE) -f MakefileSys $@
	$(MAKE) -f MakefileSys clean versions.yaml
	$(MAKE) -f Makefile8 $@
	$(MAKE) -f MakefileSys clean versions.yaml
	$(MAKE) -f Makefile.intel $@
	
	
