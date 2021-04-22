# These are common defs used in the compiler-specific Makefiles and 
#  
PKGS_PER_COMPILER += hdf5 hdf5-parallel hdf5-module hdf5-parallel-module
PKGS_PER_COMPILER += netcdf-c netcdf-c-module netcdf-fortran ioapi ioapi-module udunits udunits-module
TARGETS_PER_COMPILER = $(addsuffix .pkg, $(PKGS_PER_COMPILER))
