# NAMD-MD

<img width="485" alt="Screen Shot 2021-10-23 at 8 15 26 PM" src="https://user-images.githubusercontent.com/75652473/138555675-d44e01b9-5486-4140-b2ec-64a99c460c50.png">

<div>

<img width="485" alt="Screen Shot 2021-10-23 at 8 15 26 PM" src="https://user-images.githubusercontent.com/75652473/138555675-d44e01b9-5486-4140-b2ec-64a99c460c50.png">

</div>

To run a simulation, first run the "namd3 nvt.namd" then run the "namd3 npt.namd", finally run "namd3 production.namd". If you want to manke it even better, you then need to define some restrain by yourself, which is out of the scope of this repository.

You could use namd configuration files listed above, or generate your own, some references are 
https://www.iitg.ac.in/tamalb/karp/namd/cf.html and https://www.ks.uiuc.edu/Training/Tutorials/namd/namd-tutorial-unix-html/node26.html 

This is for a general solution simulation for a RCSB PDB structure with a ligand, with a special foucs on small molecule ligand.
This notebook take http://zarbi.chem.yale.edu/ligpargen/namd_tutorial.html as a general refernce

You could also use this script to simulate a docked complex, but in that case, more extra work outside of this notebook are supposed to be done, mainly in manuplating the complex.pdb file in a text editing tool such as sublime text, changing the atom numbering (you might need excel in this case) and chain name etc. If you are not confident engough to do such tricy things, you are suggested to produced ionized.psf and ionized.pdb on your local vmd instead running step 4 in the notebook.

For proteins with multiple chains, this notebook might be problematic, you are suggested to use CHARMM GUI INSTEAD.

USAGE: The primary goal is to generate two files, called ionized.pdb and ionized.psf, then you define a NAMD configuration file sources these two file to carry out a simultion, wtih protein parameter files and small molecule parameter files defined, as per in the above "min.conf", CHANGE the file path if you need to.

NOTE, you need to include the provided water topology/parameter files in the configration file to prevent a "vdw parameter not found for atom type OT" error.
Particularly, the "complex.pdb" need modification
![image](https://user-images.githubusercontent.com/75652473/138555451-fd09349e-197b-4353-99e1-966015d57f71.png)
The configuration file need modification, like the "parameters" lines, and the PBC section.
![image](https://user-images.githubusercontent.com/75652473/138555517-f6562583-030c-4fa1-944c-a8d42bbbfe3a.png)




