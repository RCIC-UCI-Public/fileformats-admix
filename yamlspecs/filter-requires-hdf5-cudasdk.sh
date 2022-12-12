#!/bin/bash

/usr/lib/rpm/find-requires $* | sed  -e "/libnv.*/d"
