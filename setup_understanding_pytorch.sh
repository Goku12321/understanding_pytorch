#!/bin/bash
clear 

# install 
sudo apt-get install graphviz

# go to working directory
mkdir ~/jupyter
cd ./jupyter

# set virtual envirement
virtualenv venv_pytorch

# install in virtualenv
pip install -r ./requirements.txt
python -m ipykernel install --user --name=venv_pytorch
pip install notebook
pip install --user ipykernel

# run jupyter
jupyter notebook &

echo "DONE!"
