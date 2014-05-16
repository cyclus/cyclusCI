#!/bin/bash
set -x 
set -e
./Miniconda-3.0.5-Linux-x86_64.sh -b -p ./anaconda
mv condarc $HOME/.condarc
anaconda/bin/conda install binstar
anaconda/bin/conda install conda-build
anaconda/bin/conda install jinja2

anaconda/bin/conda install setuptools
anaconda/bin/conda install patchelf
#anaconda/bin/conda install sigcpp
#anaconda/bin/conda install glibmm
#anaconda/bin/conda  install libxmlpp
#anaconda/bin/conda  install coincbc
#anaconda/bin/conda install boost
#anaconda/bin/conda install hdf5
#anaconda/bin/conda install libxml2
#anaconda/bin/conda install cmake
#anaconda/bin/conda install patchelf
#anaconda/bin/conda build --no-test --no-binstar-upload cyclus coincbc=2.8.3
anaconda/bin/conda install cyclus
ls -l anaconda
ls -l anaconda/bin
ls -l anaconda/share