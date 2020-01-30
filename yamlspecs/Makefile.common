# Copyright (c) 2000 - 2019 The Regents of the University of California.
# All rights reserved.	
# This includes the Generic yaml2rpm Makefile - most packaging should
# be able to use this.

include $(YAML2RPM_HOME)/sys/Makefile

MPIVER = $(shell rpm -qi openmpi | awk -F ': ' '/^Version/{print $$NF}')

versions.yaml: versions.yaml.in
	sed 's/@MPIVER@/$(MPIVER)/' $^ > $@

prep: versions.yaml

default: prep
	make -f $(THISMAKE) $(PKGS) 

manifest: prep

clean: versions.yaml
	/bin/rm -f versions.yaml
