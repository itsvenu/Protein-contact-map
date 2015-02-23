# script for protein contact map calculation
# distance cut off - 8 Angstroms

#!usr/bin/perl -w

print "Give the pdb ID::";

$pro = <STDIN>;

open(IN, $pro);

open(OUT1, ">output1.txt");

open(OUT2, ">output2.txt");

@id = <IN>;

&distance(@id);

sub distance
{
 @pdb = @_;
 for($i=0;$i<=$#pdb;$i++)
 {
 chomp $pdb[$i];
 @tmp1 = split(/\s+/, $pdb[$i]);

 if($tmp1[0] eq "ATOM" && $tmp1[2] eq "CA" && $tmp1[4] eq "A")
 {
	$x1 = @tmp1[6];
	$y1 = @tmp1[7];
	$z1 = @tmp1[8];

	$num1 = @tmp1[5];
	$name1 = @tmp1[3];
 for($j=0;$j<=$#pdb;$j++)
 {
  chomp $pdb[$j];
  @tmp2 = split(/\s+/, $pdb[$j]);

  if($tmp2[0] eq "ATOM" && $tmp2[2] eq "CA" && $tmp1[4] eq "A")
  {
	$x2 = @tmp2[6];
	$y2 = @tmp2[7];
	$z2 = @tmp2[8];

	$num2 = @tmp2[5];
	$name2 = @tmp2[3];

	$x = ($x1-$x2)**2;
	$y = ($y1-$y2)**2;
	$z = ($z1-$z2)**2;

	$dista = sprintf("%0.3f", sqrt($x+$y+$z));
  
  if($dista != 0.000 && $dista <= 8.000)
   {
    
	print OUT1 "$name1\t$num1\t$name2\t$num2\t$dista\n";

	print OUT2 "$num1\t$num2\t$dista\n";
  }
  }
 }   

 }
 }
}
