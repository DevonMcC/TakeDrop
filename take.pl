#* take.pl: show $ARGV[1] lines of $ARGV[0].
#EG dir /od | take - -5

# use strict;
# use warnings;

open(INFILE, $ARGV[0]) || die "Can't open file: ",$ARGV[0];

my @vec="";
my $ct=0;
my $nn=$ARGV[1];
my $len=0;

while 
(<INFILE>)
{   chop;
    @vec[$.] = $_;    
}

$len=$#vec;
# print $len," ",$nn;

# Print items selected.
for ($ct = 1; $ct <= $len; $ct++)
{   if($nn<0)
    {   if($ct>=$len+$nn)
        {   print $vec[$ct],"\n"; }
    }else
    {   if($ct<=$nn)
        {   print $vec[$ct],"\n"; }
    }
}

close (INFILE);
