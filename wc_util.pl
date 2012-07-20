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
  printf("Please enter a string (CTRL+D to stop):");
  my $str = '';
  while (<STDIN>) {
     $str .= $_;
  }
  my $string = String->new($str);
  print "\n";
  printf("Line count :: %d \n",$string->line_count());
  printf("Word count :: %d \n",$string->word_count());
  printf("Char count :: %d \n",$string->char_count());
}
