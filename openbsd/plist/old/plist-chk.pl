#!/usr/bin/perl -w

use strict;
use warnings;
$|++;

use Cwd;

my $base_dir = cwd;
#my @arches = ("i386", "sparc");
my @arches = ("i386");
my @arch;
my $pname;
my $pregex;

my $i;
foreach $i (sort(@arches)) {
  unless (chdir("${base_dir}/../$i")) {
    warn("Can't cd to ${base_dir}/../${i}.  Skipping ${i}.\n\n");
    next;
  }

  opendir(ARCH, ".") or die("Can't read directory for $i arch.\n\n");
  @arch = readdir(ARCH);
  closedir(ARCH);

  open(PLIST, "<${base_dir}/plist.txt") or die("Can't open plist.txt.\n\n");
  while (<PLIST>) {
    chomp;
    $pname = $_;
    $pregex = quotemeta($pname);
    if (grep(/^$pregex/, @arch) == 0) {
      print("${i}: '$pname' not found.\n");
    }
  }
  close(PLIST);
}
