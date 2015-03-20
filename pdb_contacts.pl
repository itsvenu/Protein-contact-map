#!/usr/bin/perl -w
#protein residue to residue distance calculation
#default distance cut off = 8 Angstroms.
#default sequence separation is 4 residues (|i-j|>4). 

use strict;
use warnings;

my $seqSep = 4;		#sequence separation
my $cutOff = 8;		#distance cut off
my @pdb;

while(<>){
	my @column = split;
	next unless $column[0] eq 'ATOM' and $column[2] eq 'CA';
	push @pdb, [@column[5..8]];
}

for my $i(0..$#pdb-1){
	my($num1, $x1, $y1, $z1) = @{$pdb[$i]};

	for my $j($i+1..$#pdb){
	
		my($num2, $x2, $y2, $z2) = @{$pdb[$j]};
		
		my $dist = sprintf "%0.3f", sqrt(($x1-$x2)**2 + ($y1-$y2)**2 + ($z1-$z2)**2);
		if($dist < $cutOff && $num2-$num1>$seqSep)
		{
		  print "$num1\t$num2\t$dist\n";
		}
	}
}
