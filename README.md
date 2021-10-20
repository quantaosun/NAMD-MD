# NAMD-MD
CAUTION： The notebook example is NOT PERFECT, your need some MODIFICATION in terms of names, file path etc., before you could actually run a simulation.
Especially, for example, modify "input" and "parameter" section inside the confiles before running.

This is for a general solution simulation for a RCSB PDB structure with a ligand, with a special foucs on small molecule ligand.
This notebook take http://zarbi.chem.yale.edu/ligpargen/namd_tutorial.html as a general refernce

You could also use this script to simulate a docked complex, but in that case, more extra work outside of this notebook are supposed to be done, mainly in manuplating the complex.pdb file in a text editing tool such as sublime text, changing the atom numbering (you might need excel in this case) and chain name etc. If you are not confident engough to do such tricy things, you are suggested to produced ionized.psf and ionized.pdb on your local vmd instead running step 4 in the notebook.

For proteins with multiple chains, this notebook might be problematic, you are suggested to use CHARMM GUI INSTEAD.

USAGE: The primary goal is to generate two files, called ionized.pdb and ionized.psf, then you define a NAMD configuration file sources these two file to carry out a simultion, wtih protein parameter files and small molecule parameter files defined, as per in the above "min.conf", CHANGE the file path if you need to.

NOTE, you need to include the provided water topology/parameter files in the configration file to prevent a "vdw parameter not found for atom type OT" error.


