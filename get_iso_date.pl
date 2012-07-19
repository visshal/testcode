#!/usr/bin/perl
#
#
# @brief This script extracts fields from ISO dates.
#
# @date 07/19/2012 8:42:43
# 
# @note Part of Inktank Interview Questions.
#
# @author Vishal Mehta

use strict;
use warnings;

BEGIN {
 if (scalar @ARGV != 1) {
    print "Input date in ISO 8601 format.\n";
    print "Usage: .\/$0 <\"2012-07-18\">" . "\n";
    exit(1);
  }

  my $date = $ARGV[0];

  if ($date =~ /(\d{4})\-(\d{2})-(\d{1})/g) {
    print "Date entered is in ISO format.\n";
    print "Year  :: $1 \n";
    print "Month :: $2 \n";
    print "Day   :: $3 \n";
  } else {
    print "Entered date is not in ISO 8601 format.\n";
  }
}
