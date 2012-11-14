#!/usr/bin/env perl

use strict;
use warnings;
use feature ':5.10';

my @files = <.*>;

for my $file (@files){
	next if ($file !~ /\.\w/ || $file =~ /\.git/);
	say STDERR "Moving File: $file";
	system('cp', '-R', $file, "$ENV{HOME}/");
}
