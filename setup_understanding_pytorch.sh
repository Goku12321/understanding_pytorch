#!/bin/bash
clear 

# install 
sudo apt-get install graphviz

# set virtual envirement
virtualenv venv
source venv/bin/activate

# install in virtualenv
pip install -r ./requirements.txt
python -m ipykernel install --user --name=venv_pytorch
pip install notebook
pip install --user ipykernel

# run jupyter
jupyter notebook &

echo "DONE!"
