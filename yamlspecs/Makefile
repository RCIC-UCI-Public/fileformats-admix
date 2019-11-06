# Copyright (c) 2000 - 2019 The Regents of the University of California.
# All rights reserved.	
# This includes the Generic yaml2rpm Makefile - most packaging should
# be able to use this.

MPIVER = $(shell rpm -qi openmpi | awk -F ': ' '/^Version/{print $$NF}')

include $(YAML2RPM_HOME)/sys/Makefile

versions.yaml: versions.yaml.in
	sed 's/@MPIVER@/$(MPIVER)/' $^ > $@
