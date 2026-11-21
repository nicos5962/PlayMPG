package Plugins::PlayMPG::Plugin;

use strict;
use warnings;

use base qw(Slim::Plugin::Base);

use Slim::Utils::Log;
use Plugins::PlayMPG::Register;

my $log = Slim::Utils::Log->addLogCategory({
    category     => 'plugin.plaympg',
    defaultLevel => 'INFO',
    description  => 'PLUGIN_PLAYMPG',
});

sub initPlugin {
    my $class = shift;

    my $version = $class->_pluginDataFor('version') || 'unknown';
    $log->info("Initializing PlayMPG plugin $version");

    Plugins::PlayMPG::Register->registerFormatHandler();

    $class->SUPER::initPlugin(@_);
}

sub getDisplayName { 'PLUGIN_PLAYMPG' }

1;
