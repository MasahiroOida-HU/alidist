package: O2sim
version: "v%(year)s%(month)s%(day)s"
requires:
  - O2Physics
  - O2DPG
  - QualityControl
  - AEGIS
  - EVTGEN:(?!osx)
  - AliGenerators
  - STARlight:(?!osx)
  - jq
---
#!/bin/bash -ex

#ModuleFile
mkdir -p $INSTALLROOT/etc/modulefiles
alibuild-generate-module > $INSTALLROOT/etc/modulefiles/$PKGNAME
