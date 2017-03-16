#!perl
use 5.006;
use strict;
use warnings FATAL   => 'all';
use Test::More tests => 3;
use App::Monport::Lite;

use Test::RequiresInternet ( 'scanme.nmap.org' => 80, 'scanme.nmap.org' => 22 );

# if you reach here, sockets successfully connected to hosts/ports above

my $host    = q(scanme.nmap.org);
my $open    = scan_ports( $host );
for my $expected (qw(22 80)) {
    ok( grep( $expected == $_, @$open ), "$host has port $expected open" );
}

