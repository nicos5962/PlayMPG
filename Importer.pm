package Plugins::PlayMPG::Importer;

use strict;
use warnings;

use Plugins::PlayMPG::Register;

sub initPlugin {
    my $class = shift;

    Plugins::PlayMPG::Register->registerFormatHandler();
    return 1;
}

sub startScan {
    my $class = shift;
    return;
}

1;
