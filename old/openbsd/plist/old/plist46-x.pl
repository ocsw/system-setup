#!/usr/bin/perl -w

use strict;
use warnings;
$|++;

use Cwd;

umask(022);

my $server = $ARGV[0];

my $base_dir = cwd;
my $base_cmd =
  "wget -N --passive-ftp --glob=on ftp://" .
  ($server ? $server : "ftp.openbsd.org/pub/OpenBSD") .
  "/4.6/packages";
#my %arches = ("i386"  => "${base_cmd}/i386/",
#              "sparc" => "${base_cmd}/sparc/");
my %arches = ("i386"  => "${base_cmd}/i386/");

my $i;
foreach $i (sort(keys(%arches))) {
  unless (chdir("${base_dir}/../$i")) {
    warn("Can't cd to ${base_dir}/../${i}.  Skipping ${i}.\n\n");
    next;
  }
  open(PLIST, "<${base_dir}/plist.txt") or die("Can't open plist.txt.\n\n");
  while (<PLIST>) {
    chomp;
    system($arches{$i} . $_ . "*");
  }
  close(PLIST);
}
