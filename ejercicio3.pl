use strict;
use warnings;
use LWP::Simple;
use JSON;
use Data::Dumper;

print "ingrese  la ciudad \n";

my $ciudad= <STDIN>;

my $ua = LWP::UserAgent->new;
my $response = $ua->get('https://api.openweathermap.org/data/2.5/weather?q='.$ciudad.'&appid=e8aa69ddb9a0f692204ba2ecb38bd505');

if ($response->is_success) {
   my $clima = $response->decoded_content;
   my $text = decode_json($clima);
   my @list = ($text);

    

   foreach my $vals (@list){
       foreach my $val ($vals){
           print "name:\t$val->{'name'} \n";
           foreach my $val2 ($val){
             print "humedity:\t$val2->{'main'}{'humidity'}\n";
             print "weather: \t$val2->{'weather'}->[0]->{'main'}";   
           }
                 
       }
   }
}else {
    die $response->status_line;
}