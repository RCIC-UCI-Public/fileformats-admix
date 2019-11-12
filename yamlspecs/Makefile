# Copyright (c) 2000 - 2019 The Regents of the University of California.
# All rights reserved.	
# This includes the Generic yaml2rpm Makefile - most packaging should
# be able to use this.

include $(YAML2RPM_HOME)/sys/Makefile

MPIVER = $(shell rpm -qi openmpi | awk -F ': ' '/^Version/{print $$NF}')

versions.yaml: versions.yaml.in
	sed 's/@MPIVER@/$(MPIVER)/' $^ > $@

default: versions.yaml
	make -f $(THISMAKE) $(PKGS) 

manifest: versions.yaml

clean:
	/bin/rm -f versions.yaml
