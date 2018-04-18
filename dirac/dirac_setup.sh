#!/bin/bash

dirac-proxy-init -x
dirac-configure -F -S GridPP -C dips://dirac01.grid.hep.ph.ic.ac.uk:9135/Configuration/Server -I
dirac-proxy-init -g skatelescope.eu_user -M
