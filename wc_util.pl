#!/usr/bin/perl
#
#
# @brief This script takes line(s) from stdin and prints count of total
# chars, words and lines on stdout.
#
# @date 07/18/2012 10:42:43
#
# @note In order to run this program you need 'String' perl module, which
#       is part of this package.
#
# @author Vishal Mehta

use strict;
use warnings;

use String;

BEGIN {
 if (scalar @ARGV != 1) {
    print "Counts characters, words and lines from paragraph.\n";
    print "Usage: .\\$0 <\"String\">" . "\n";
    exit(1);
  }
  
  my $string = String->new($ARGV[0]);
 
  print "Line count :: " . $string->line_count() ."\n";
  print "Word count :: " . $string->word_count() . "\n";
  print "Char count :: " . $string->char_count() . "\n";
}
