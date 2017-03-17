#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

my %hosts = (
    host1 => {
        tcp => [ 22, 80 ],
        udp => [ 13 ],
    },
    host2 => {
        tcp => [ 80, 443 ],
    },
    host3 => {
    },
);

my $dd = Data::Dumper->new(
    [ \%hosts    ],
    [ qw(*hosts) ],
);

$dd->Sortkeys(1)->Indent(1)->Purity(1)->Quotekeys(0);
print $dd->Dump;
