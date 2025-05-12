# fileformats-admix
Admix to create hdf5 netcdf and other file formats used in scientific community

# Container build

use bindfs for bind mount (works inside of a singularity container).

1. need fuse module loaded on the physical host
2. start singularity with --bind=/dev/fuse:/dev/fuse to get the fuse device mapped into the container
