#psfgen for a single-chained protein with a ligand bound
mol delete all
mol load pdb ../complex.pdb
set bad [atomselect top "resname ACE"]
if {[info exists bad]} {
set chainB [atomselect top "chain B and not hydrogen and not resname ACE NME"]
set chainX [atomselect top "residuetype nothing and not resname ACE NME"]
set flag 1
} else {
set chainB [atomselect top "chain B and not hydrogen"]
set chainX [atomselect top "residuetype nothing"]
set flag 0}
$chainB writepdb chainB.pdb
$chainX writepdb chainX.pdb
package require psfgen
topology ../top_opls_aam.inp
topology ../ligand.rtf
pdbalias HIS HSD
pdbalias atom SER HG HG1
pdbalias residue HIS HSE
pdbalias atom ILE CD1 CD
if {$flag == 1} {
segment B {
  first ACE
  last CT3
  pdb chainB.pdb
}
} else {
segment B {
  first NONE
  last NONE
  pdb chainB.pdb
}
}
segment X {
  first NONE
  last NONE
  pdb chainX.pdb
}
coordpdb chainB.pdb B
coordpdb chainX.pdb X
guesscoord
regenerate angles dihedrals
writepdb psf-complex.pdb
writepsf psf-complex.psf
exit