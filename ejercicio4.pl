 #!/usr/bin/perl
 
  use strict;
  use warnings;
  
  
 
  
  #!/usr/bin/perl

open(DATA, "<ej4.txt") or die "file.txt 文件无法打开, $!";

while(<DATA>){
   my $message = "$_";
   print $message=&rot13($message)."\n";
   print $message=rot13($message);
 
 #my $message="Ceasar salutes you in 2019!";
 #print "\n";
 #print "Message before rot13: \"$message\"\n";
 #$message=&rot13($message);
 #print "Message after  rot13: \"$message\"\n";
 #print "\n";
 #print "Rot13 again will return old message\n"; 
 #print "\n";
 #print "Message before rot13: \"$message\"\n";
 #$message=&rot13($message);
 #print "Message after  rot13: \"$message\"\n";
 #print "\n";
 
 sub rot13()
 {
    my %rot13table;
    $message=shift;
    my $new_message=undef; 
  
    #create hash table for converting?
    if  (keys(%rot13table)==0) # rot13 table contains no key so create it 
    {
       my @letter_keys=("A".."Z","a".."z");
       my @letter_values=("N".."Z","A".."M","n".."z","a".."m"); 
       for (my $i=0; $i<=$#letter_keys; $i++)
       {    
          $rot13table{$letter_keys[$i]}=$letter_values[$i];
       }
    }
   
    # converting the messgae
    foreach (split("",$message))
    {
       if (exists $rot13table{$_})     
       {        
         $new_message.=$rot13table{$_};
       } else
       {
         $new_message.=$_;
       }
    }
     
    return $new_message;
 }
}