#!/usr/bin/perl
#
#
# @brief This script takes line(s) from stdin and prints count of total 
#        chars, words and lines on stdout.
#
# @date 07/18/2012 10:42:43
# 
# @note Part of Inktank Interview Questions.
#
# @author Vishal Mehta

use strict;
use warnings;

BEGIN {
 if (scalar @ARGV != 1) {
    print "Counts characters, words and lines from paragraph.\n";
    print "Usage: .\\$0 <\"String\">" . "\n";
    exit(1);
  }

  my $string = $ARGV[0];

  my $lines = scalar(split("\n",$string));
  my $words = scalar(split(/\s+/, $string));
  my $chars = scalar(split(/\w/, $string));

  print "Lines are :: " . $lines ."\n";
  print "Words are :: " . $words . "\n";
  print "Chars are :: " . $chars . "\n";
}
