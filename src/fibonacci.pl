#!/usr/bin/perl
use strict;
use warnings;

use Memoize qw(flush_cache memoize);
use feature "state";
memoize ('recursive_fibonacci');

print "Enter the number you would like to see in the sequence: ";
my $number = <STDIN>;
chomp $number;

print "(R)ecusrive or (I)terative? ";
my $style = <STDIN>;
chomp $style;

if (lc(substr($style, 0, 1)) eq 'r') {
    print recursive_fibonacci($number) . "\r\n";;
} elsif(lc(substr($style, 0, 1)) eq 'i') {
    print iterative_fibonacci($number) . "\r\n";
} else {
    print "bye";
}


sub recursive_fibonacci {
    state $memo = { 1 => 1, 2 => 1 };
    return $memo->{ $_[0] } //= recursive_fibonacci( $_[0] - 1 ) + recursive_fibonacci( $_[0] - 2 );
}

sub iterative_fibonacci {
    my $number  = shift;
    my $curnum  = 1;
    my $prevnum = 1;
    my $sum;

    if ($number == 1 || $number == 2){ return 1; }

    $number -= 2;

    while ($number--) {
        $sum = $curnum + $prevnum;
        $prevnum = $curnum;
        $curnum  = $sum;
    }

    return $sum;
}