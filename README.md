# Protein-contact-map


# contact_map.pl ###


- The script calculates the contacts of every residue
  in a given protein.

- The default cut off for distance between two residues is = 8 angstroms.

- input - standard pdb format.

- output1 - resiude id <> residue no. <> reside id <> residue no. <> distance between residue

- output2 - reside no. <> residue no <> distance between residue

- as a default it calculates contacts for residues that are present in chain 'A', assuming that most of the single     chained proteins in pdb are given the chain id 'A'.

- One can change the chain id to calculate contacts for other chains by replacing the 'A' with chain id of interest in the line 28 and 41.

#Usage 
- put the script and pdb file of interest in one directory.

- perl contact_map.pl 

E-mail - thatikonda92@gmail.com
