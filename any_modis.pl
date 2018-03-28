#!/usr/bin/perl -w
# Creates script of ms2gt commands to process modis data based on hdf
# files in current directory.  Runs the ms2gt commands, calls mod2png_4ais and 
# writetif_4ais to finish up ice shelf processing for each shelf area.
#
# T. Haran  2016-05-04 - Allow QKM and 1KM for the same date/time.

$| = 1;
select(STDERR); $| = 1;
select(STDOUT); $| = 1;

my $area = $ARGV[0];
my $br_percent = $ARGV[1];
my $incomfile = "$area"."_pro.txt";
my @chans = ('QKM', '1KM');

foreach my $chan (@chans) {
    $count=1;
    open(COMFILE, ">$incomfile");
    print STDERR "chan: $chan\n";
    my @hdf_files = glob("*$chan*.hdf");
    if (@hdf_files) {
	foreach $name (@hdf_files) {
	    $date=substr($name,10,7);
	    $time=substr($name,18,4);
	    $outfile="listfile$count.txt";
	    open(LISTS,">$outfile");
	    print LISTS "$name\n";
	    close(LISTS);
	    $imagefile="$area"."_$date"."_$time";
	    $gpdfile="/home/jennb/lib/maps/temp_maps/$area"."_250.gpd";
	    if ($chan eq 'QKM') {
		$command="mod02.pl . $imagefile $outfile $gpdfile /home/jennb/shelf_proc/chanfile.txt none Q 1 0 50"} 
	    else {
		$command="mod02.pl . $imagefile $outfile $gpdfile /home/jennb/shelf_proc/tchanfile.txt none 1 1 0 50" }
	    print COMFILE "$command\n";
	    $count=++$count;
	}

	close(COMFILE);
	system("chmod +x $incomfile");
	system("./$incomfile");
	if ($chan eq 'QKM') {
	    system("copy_envi_headers_vis $area") } 
	else {
	    system("copy_envi_headers_temp $area") 
	} 	 
    }
}
system("/usr/local/bin/idl mod2png_4ais_batch.pro");
system("make_browse $area $br_percent");
system("/usr/local/bin/idl writetif_4ais_batch.pro");
system("mv *.png /data2/jennb/iceshelves/to_check");
system("mv *.tif /data2/jennb/iceshelves/to_check");


1;

