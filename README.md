# NAMD-MD

The NAMD-MD.ipynb include how to set up a general solution MD and proteins with membrane, it was designed use on Colab.
The NAMD-MD_local.opynb is a consised version designed to use on local linux system. For beginners, the local version is advised, for clarity reason.

You could use namd configuration files listed above, or generate your own, some references are 
https://www.iitg.ac.in/tamalb/karp/namd/cf.html and https://www.ks.uiuc.edu/Training/Tutorials/namd/namd-tutorial-unix-html/node26.html 

This is for a general solution simulation for a RCSB PDB structure with a ligand, with a special foucs on small molecule ligand.
This notebook take http://zarbi.chem.yale.edu/ligpargen/namd_tutorial.html as a general refernce

You could also use this script to simulate a docked complex, but in that case, more extra work outside of this notebook are supposed to be done, mainly in manuplating the complex.pdb file in a text editing tool such as sublime text

If you want to set up a restrain before the simulation, have a look at http://www.ub.edu/cbdd/?q=content/using-namd-harmonic-restraints
and http://www.ks.uiuc.edu/Research/namd/mailing_list/namd-l.2009-2010/0751.html 
