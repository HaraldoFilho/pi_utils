#!/usr/bin/perl

my $MAX_RATE = "2m";
my $OUTPUT_DIR = "/home/pi/pi_utils/download_manager/Downloads";

open FILES_LIST, "files_list" or die "Can't open members file to read!\n";
my @list_lines = <FILES_LIST>;
close FILES_LIST;

my $n = 0;

foreach (@list_lines) {
    $_ =~ /(\S+)\s*(.*)\n/;
    if ($2 eq "") {
        $n += 1;
        system "wget -nc --no-use-server-timestamps --limit-rate=$MAX_RATE $1 -O $OUTPUT_DIR/file.$n";
    } else {
        system "wget -nc --no-use-server-timestamps --limit-rate=$MAX_RATE $1 -O $OUTPUT_DIR/$2"; 
    }
}

