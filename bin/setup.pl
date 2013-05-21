#!/usr/bin/env perl

use strict;
use warnings;

my @files = <.*>;

for my $file (@files){
	next if ($file !~ /\.\w/ || $file =~ /\.git$/);
	print STDERR "Moving File: $file\n";
	system('cp', '-R', $file, "$ENV{HOME}/");
}
