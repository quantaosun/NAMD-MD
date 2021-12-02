# NAMD-MD
This repository is based on softwares developed by https://www.ks.uiuc.edu/, anyone who potentially use this to generate any publications should refer to original NAMD/VMD papers.
# How to use this repository on your personal linux ?
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

# If you have problem opening jupyter notebook in your "NAMD-MD" environment, try to uninstall the previous jupyter, reinstall with apt install
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

You could use namd configuration files listed above, or generate your own, some references are 
https://www.iitg.ac.in/tamalb/karp/namd/cf.html and https://www.ks.uiuc.edu/Training/Tutorials/namd/namd-tutorial-unix-html/node26.html 

This notebook take http://zarbi.chem.yale.edu/ligpargen/namd_tutorial.html as a general refernce

You could also use this script to simulate a docked complex, but in that case, more extra work outside of this notebook are supposed to be done.
