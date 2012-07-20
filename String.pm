#!/usr/bin/perl
use strict;
use warnings;

use Carp qw/croak/;

require Exporter;
my @ISA = qw/Exporter/;

package String;

sub new {
   my $class = shift;
   my $self = { _string => shift, };
   bless $self, $class;
}

sub string {
   my ($self, $string) = @_;
   $self->{_string} = $string if (defined($string));
   return $self->{_string};   
}

sub line_count {
   my ($self) = @_;
   if (defined($self->{_string})) {
     return scalar(split(/\n+/,$self->{_string}));
   } else {
     croak("Uninitalized string object.");
   }
}

sub word_count {
   my ($self) = @_;
   if (defined($self->{_string})) {
      return scalar(split('\s+', $self->{_string}));
   } else {
     croak("Uninitalized string object.");
   }

}

sub char_count {
   my ($self) = @_;
   if (defined($self->{_string})) {
      my $str = $self->{_string};
      $str =~ s/\n+//g;
      return scalar(split('', $str));
   } else {
     croak("Uninitalized string object.");
   }
}

1;
__END__

=head1 String

String module for character processing.

=head1 SYNOPSIS

String module for character processing that counts number of lines, words and characters.

=head1 EXAMPLE

my $string = String->new("This is a string.");

=head2 EXPORT

None by default.

=head1 AUTHOR

Vishal Mehta, <lt>visshal.mehta@gmaile.com<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2012 Vishal Mehta.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.14.2 or,
at your option, any later version of Perl 5 you may have available.

=cut

