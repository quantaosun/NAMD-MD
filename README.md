# NAMD-MD

NAMD-MD.ipynb is up to date to July 2023

# Reminder
You can finish all the processes in google colab, the difference to a local procedure would be you need to run some commands in the terminal. Another reminder is you should remove the duplicated chain before diving into topology generation.
![image](https://user-images.githubusercontent.com/75652473/172390288-d567c9d3-a7a0-4b2e-9d37-87507f43c1b5.png)


OR


# Fix protein problems with PDBfixer
 use https://colab.research.google.com/drive/1bkVMue-ndnI1TIvwNRGbpmpV5tiz-FN5#scrollTo=O1LuW0KNOGQJ 
to keep only one chain (fixer.removeChains(chainIds='B')), and fix other problems like atom missing etc.
------------------------------------------------------------------------------------------------------------------------------------------------------


 This repository tries to introduce molecular dynamics of the protein-ligand complex to more people, especially those beginners, with all open-sourced resources. VMD (https://www.ks.uiuc.edu/), NAMD (https://www.ks.uiuc.edu/) and py3Dmol (https://github.com/avirshup/py3dmol), as well as open babel (https://github.com/openbabel/openbabel) are the main components contained in this protocol. The force file package used is charmm as per https://www.charmm.org/charmm/resources/charmm-force-fields/ for protein, small molecules are parameterized by web server LigPargen (http://zarbi.chem.yale.edu/ligpargen/).

This is designed only for learning purposes, anyone with commercial purposes might need to check out by themself if they need a commercial license in relation to some certain package, even if these are all "open source".

# Usage
It is assumed you already got Anaconda installed on your Linux computer, visit https://docs.anaconda.com/# to get one if not installed.
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
