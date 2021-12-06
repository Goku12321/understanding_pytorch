#!/bin/bash
clear 

# installs required  
sudo apt-get install graphviz
if ! type jupyter; then
install jupyter
fi

# set virtual envirement
virtualenv venv
source venv/bin/activate

# install in virtualenv
pip install -r ./requirements.txt
python -m ipykernel install --user --name=venv
pip install notebook
pip install --user ipykernel

# run jupyter
jupyter notebook &

echo "DONE!"
