#!/usr/bin/env perl

use v5.10;

use strict;
use warnings;

use File::Find;
use File::Slurp qw(edit_file_lines);
use Term::ReadKey;
use Tk;

my $dir = $ARGV[0];

$dir = Tk::MainWindow->new->chooseDirectory unless defined $dir;

say "Scanning mods directory: $dir";

find({wanted => \&wanted, no_chdir => 0}, $dir);

sub wanted
{
    return if ( $File::Find::dir =~ /DCS-AllSkinsUnlocked/ );

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
