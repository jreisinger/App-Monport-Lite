#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More tests => 1;

BEGIN {
    use_ok('App::Monport::Lite') || print "Bail out!\n";
}

diag("Testing App::Monport::Lite, Perl $], $^X");
