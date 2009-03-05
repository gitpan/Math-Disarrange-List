use Test::More qw(no_plan);

=pod

An important test: the code block supplied to disarrange should not be
called.

=cut


use Math::Disarrange::List;

my $a = '';

ok 0 == disarrange {$a .= "@_\n"} ();

ok $a eq '';

