# NAMD-MD
The author of this repository try to introduce molecular dynamics of protein to more people, especially those beginners, with all open-souuced resouces. VMD(https://www.ks.uiuc.edu/), NAMD(https://www.ks.uiuc.edu/) and py3Dmol(https://github.com/avirshup/py3dmol), as well as open babel(https://github.com/openbabel/openbabel) are the main components contained in this protocal. This is designed only for learning purpose, anyone with commercial purpose might need to check out by themself if they need a commercial license in relation to some certain package.
# Usage
It is assumed you already got anaconda installed on your linux computer, visit https://docs.anaconda.com/# to get one.
```
git clone https://github.com/quantaosun/NAMD-MD
```
```
cd NAMD-MD
```
Create a new Conda environment named "NAMD-MD"
```
conda create -n NAMD-MD python=3.7
```
Activate the new environment 
```
conda activate NAMD-MD
```
In the new environment, install jupyter notebook
```
conda install jupyter
```
Start jupyter notebook and run the "NAMD-MD_local.ipynb"
```
jupyter notebook NAMD-MD_local.ipynb
```

# If you have problem opening jupyter notebook in your "NAMD-MD" environment, try 
```
conda remove jupyter
```
```
sudo apt install jupyter
```
```
jupyter notebook
```

The NAMD-MD.ipynb include how to set up a general solution MD, proteins with membrane also discussed, it was designed use on Colab.
The NAMD-MD_local.opynb is a consised version only for a soution system without membrane, designed to use on local linux system.
