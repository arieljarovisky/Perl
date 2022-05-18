
use strict;
use warnings;
use Data::Dumper qw(Dumper);



sub anagrama{
my ($palabra1, $palabra2)=@_;


my @array1 = split //, $palabra1;
my @array2 = split //, $palabra2;
Dumper\ \@array1;
Dumper\ \@array2;
my $variable1 = join "", sort(@array1);  
print $variable1."\n" ;

my $variable2 = join "", sort(@array2);  
print $variable2."\n";

if($variable1 eq $variable2){
     print "true"; 
    }else{
     print "false";
    }
}

anagrama("hola", "olah");