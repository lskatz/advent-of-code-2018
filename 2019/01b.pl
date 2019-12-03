#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

my $totalFuelNeeded = 0;
while(my $mass = <DATA>){
  chomp($mass);
  my $fuelNeeded = calculateFuelCost($mass);
  $totalFuelNeeded += $fuelNeeded;
  #print "$fuelNeeded\n";

  my $fuelMass = $fuelNeeded;
  while($fuelMass > 0){
    $fuelMass = calculateFuelCost($fuelMass);
    last if($fuelMass < 1);
    $totalFuelNeeded += $fuelMass;

    #print "  $fuelMass => $totalFuelNeeded\n";
  }
}

print $totalFuelNeeded."\n";

sub calculateFuelCost{
  my($mass) = @_;
  
  my $fuelNeeded = int($mass / 3) - 2;
  return $fuelNeeded;
}
__DATA__
146561
98430
131957
81605
70644
55060
93217
107158
110769
94650
141070
72381
100736
105705
99003
94057
110662
74429
55509
63492
102007
72627
95183
112072
122313
116884
125451
106093
140678
121751
149018
58459
138306
149688
82927
72676
95010
88439
51807
103175
107633
126439
128879
112054
52873
114493
77365
76768
60838
89692
66217
96060
100338
139063
126869
106490
128967
116312
56822
52422
124579
117120
106245
105255
66975
115340
145764
149427
64228
64237
67887
103345
134901
50226
126991
122314
140818
129687
149792
101148
73411
87078
121272
108804
96063
81155
62058
112684
134263
128454
99455
91689
141448
143892
103257
64352
90769
78307
111855
130153
