#!/bin/bash

# Setup anaconda
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh;
chmod +x miniconda.sh
./miniconda.sh -b -p $HOME/miniconda
export PATH=/home/travis/anaconda/bin:/home/travis/miniconda/bin:$PATH
conda update --yes conda

conda install --quiet --yes pip python=$TRAVIS_PYTHON_VERSION numpy scipy matplotlib cython ipython h5py;
pip install -r requirements_dev.txt
