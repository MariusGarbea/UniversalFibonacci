#
# Perl 6 has a number of cool features which makes the calculation of 
# Fibonacci numbers as easy as a one-liner from the command line.
#
# ... is the sequence operator. It defines the elements in the array @fibonacci
# as consecutive integers from 0 and 1 upto *.
#
# * is the whatever operator. Placing it at the end of an array makes it a 
# "lazy list" whose values will be calculated on demand.
#
# * + * also uses whatever to define the intermediate values of the array as
# the sum of the last two values. So first 0 + 1 giving 2.  Then 1 + 2 giving
# 3.  Then 2 + 3 and so on.
# 
# This is how you would calculate the first 50 Fibonacci numbers:

perl6 -e 'my @fibonacci = 0, 1, * + * ... *; say @fibonacci[0 .. @*ARGS[0]];' 50
