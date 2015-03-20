# Protein-contact-map
Protein contact map is very important in many areas like "protein inter residue interaction prediction" and 
the "structure prediction" of unknown sequence if its sequence has any similarity with already known 
structure's sequence.

If two residues are with atmost 8 angstroms distance apart and having the sequence separation of atleast 4 residues, 
then the pair can be termed as a "Contact".

Here in this script the default distance cut off is 8 angstroms and sequence separation is 4 residues(|i-j|>4).

--> pdb files can be found at http://www.rcsb.org/pdb/home/home.do

#Usage
$ perl pdb_contacts.pl filename.pdb > contactsOUT.txt

or

$ chmod +x pdb_contacts.pl
$ ./pdb_contacts.pl filename.pdb > contactsOUT.txt
