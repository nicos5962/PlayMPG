package Plugins::PlayMPG::Formats::MPG;

# MPEG program stream files are read like AVI files: see Plugins::PlayAVI::Formats::AVI
# for the tags (ffprobe, guessed from the path, Discogs id). This plugin needs
# the PlayAVI plugin.

use strict;
use warnings;
use base qw(Plugins::PlayAVI::Formats::AVI);

sub types       { qw(mpg) }
sub logCategory { 'plugin.plaympg' }
sub pluginName  { 'PlayMPG' }

1;
