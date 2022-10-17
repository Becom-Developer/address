package AddressApi::Command::spy;
use Mojo::Base 'Mojolicious::Command', -signatures;
has description => 'Spy on application';
has usage       => "Usage: APPLICATION spy [TARGET]\n";

sub run ( $self, @args ) {

    # Leak secret passphrases
    if ( $args[0] eq 'secrets' ) { say for @{ $self->app->secrets } }

    # Leak mode
    elsif ( $args[0] eq 'mode' ) { say $self->app->mode }
}

1;