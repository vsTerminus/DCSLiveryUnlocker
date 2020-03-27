#!/usr/bin/env perl

use v5.10;

use strict;
use warnings;

use File::Find;
use File::Slurp qw(edit_file_lines);
use Term::ReadKey;

my $dir = $ARGV[0];
unless (defined $dir)
{
	$dir = '_OvGME' if ( -d '_OvGME' );
	$dir = '_JSGME' if ( -d '_JSGME' );
}

die "Could not find mods directory to scan. Usage: $0 '_OvGME folder name'" unless defined $dir and -d $dir;
say "Scanning mods directory: $dir";

find({wanted => \&wanted, no_chdir => 0}, $dir);

sub wanted
{
	if ( $_ eq 'description.lua' )
	{
		say $File::Find::name if -f and $_ eq 'description.lua';

		edit_file_lines
		{
			s/^/--/ if (/^countries/ .. /\}/);
		} $_;
	}
}

say "Press any key to continue...";
ReadMode('cbreak');
ReadKey(0);
ReadMode('normal');
