#!/usr/bin/perl -w


#system("sh", "clean_it_up");
system("clean_it_up");
$| = 1;
select(STDERR); $| = 1;
select(STDOUT); $| = 1;

foreach $name (</data2/jennb/iceshelves/data/*.hdf>) {
    $filename = substr($name,29,44);
    $time=substr($filename,18,4);
    $sensor=substr($filename,0,3);

    if ($sensor eq 'MOD') {
	if (($time >= 1400 && $time <= 1700) || ($time >= 630 && $time <= 930)){
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/pinei/$filename");
	}
	if (($time >= 1400 && $time <= 1700) || ($time >= 530 && $time <= 830)){
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/abbot/$filename");
	}
	if (($time >= 1300 && $time <= 1600) || ($time >= 530 && $time <= 830)){
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/bryan/$filename");
	}
	if (($time >= 300 && $time <= 600) || ($time >= 1800 && $time <= 2000)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/amery/$filename");
	}
	if (($time >= 730 && $time <= 1000) || ($time >=2200 && $time <= 2400)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/fimbu/$filename");
	}
	if (($time >= 600 && $time <= 900) || ($time >=2000 && $time <= 2400)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/lazar/$filename");
	}
	if (($time >= 400 && $time <= 730) || ($time >=1800 && $time <= 2000)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/syowa/$filename");
	}
	if (($time >= 400 && $time <= 800) || ($time >=1800 && $time <= 2000)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/ragnh/$filename");
	}
	if (($time >= 1500 && $time <=1800) || ($time >=800 && $time <= 1000)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/getze/$filename");
	}
	if (($time >= 1500 && $time <=1800) || ($time >=800 && $time <= 1000)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/getzw/$filename");
	}
	if (($time >= 1700 && $time <= 1900) || ($time >=1000 && $time <=1200)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/sulzb/$filename");
	}
	if (($time >= 1700 && $time <= 2100) || ($time >=1030 && $time <=1330)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/rosse/$filename");
	}
	if (($time >= 1700 && $time <= 2100) || ($time >=1030 && $time <=1330)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/rossw/$filename");
	}
	if (($time >= 1700 && $time <= 2300) || ($time >=1030 && $time <=1530)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/nanse/$filename");
	}
	if (($time >= 1200 && $time <= 1500) || ($time >=400 && $time <=600)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/wilki/$filename");
	}
	if (($time >= 1200 && $time <= 1500) || ($time >=400 && $time <=600)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/wordi/$filename");
	}
	if (($time >= 1200 && $time <= 1400) || ($time >=230 && $time <=430)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/larsb/$filename");
	}
	if (($time >= 1200 && $time <= 1400) || ($time >=230 && $time <=430)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/larsc/$filename");
	}
	if (($time >= 1100 && $time <= 1400) || ($time >=230 && $time <=500)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/larsd/$filename");
	}
	if (($time >= 1000 && $time <= 1300) || ($time >=200 && $time <=500)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/filch/$filename");
	}
	if (($time >= 1000 && $time <= 1300) || ($time >=200 && $time <=500)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/ronne/$filename");
	}
	if (($time >= 830 && $time <= 1130) || ($time >=100 && $time <=300)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/riise/$filename");
	}
	if (($time >= 200 && $time <= 400) || ($time >=1500 && $time <=1800)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/shack/$filename");
	}
	if (($time >= 200 && $time <= 500) || ($time >=1630 && $time <=1830)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/westi/$filename");
	}
	if (($time >= 2000 && $time <= 2400) || ($time >=1300 && $time <=1500)){
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/mertz/$filename");
	}
	if (($time >= 0000 && $time <= 300) || ($time >=1300 && $time <=1500)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/porpo/$filename");
	}
	if (($time >= 0000 && $time <= 300) || ($time >=1300 && $time <=1500)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/sabri/$filename");
	}
    }
    else {
	if (($time >= 2100 && $time <= 2400) || ($time >= 600 && $time <= 830)){
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/pinei/$filename");
	}
	if (($time >= 2100 && $time <= 2400) || ($time >= 600 && $time <= 830)){
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/abbot/$filename");
	}
	if (($time >= 2000 && $time <= 2300) || ($time >= 300 && $time <= 600)){
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/bryan/$filename");
	}
	if (($time >= 900 && $time <= 1100) || ($time >= 1800 && $time <= 2100)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/amery/$filename");
	}
	if (($time >= 1330 && $time <= 1600) || ($time >=2200 && $time <= 2400)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/fimbu/$filename");
	}
	if (($time >= 1000 && $time <= 1600) || ($time >=2100 && $time <= 2400)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/syowa/$filename");
	}
	if (($time >= 1100 && $time <= 1600) || ($time >=2100 && $time <= 2400)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/ragnh/$filename");
	}
	if (($time >= 1100 && $time <= 1600) || ($time >=2100 && $time <= 2400)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/lazar/$filename");
	}
	if (($time >= 700 && $time <=900) || ($time >=2200 && $time <= 2400)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/getze/$filename");
	}
	if (($time >= 700 && $time <=900) || ($time >=2200 && $time <= 2400)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/getzw/$filename");
	}
	if (($time >= 30 && $time <= 200) || ($time >=800 && $time <=1000)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/sulzb/$filename");
	}
	if (($time >= 300 && $time <= 600) || ($time >=700 && $time <=1100)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/rosse/$filename");
	}
	if (($time >= 300 && $time <= 600) || ($time >=700 && $time <=1100)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/rossw/$filename");
	}
	if (($time >= 400 && $time <= 600) || ($time >=1800 && $time <=2100)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/wilki/$filename");
	}
	if (($time >= 300 && $time <= 530) || ($time >=1800 && $time <=2000)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/larsb/$filename");
	}
	if (($time >= 300 && $time <= 530) || ($time >=1800 && $time <=2000)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/larsc/$filename");
	}
	if (($time >= 300 && $time <= 600) || ($time >=1800 && $time <=2100)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/wordi/$filename");
	}
	if (($time >= 300 && $time <= 600) || ($time >=1800 && $time <=2100)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/larsd/$filename");
	}
	if (($time >= 100 && $time <= 400) || ($time >=1800 && $time <=2100)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/filch/$filename");
	}
	if (($time >= 100 && $time <= 400) || ($time >=1800 && $time <=2100)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/ronne/$filename");
	}
	if (($time >= 00 && $time <= 230) || ($time >=1530 && $time <=1730)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/riise/$filename");
	}
	if (($time >= 800 && $time <= 1000) || ($time >=1700 && $time <=1900)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/shack/$filename");
	}
	if (($time >= 800 && $time <= 1000) || ($time >=1700 && $time <=1900)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/westi/$filename");
	}
	if (($time >= 300 && $time <= 500) || ($time >=1300 && $time <=1500)){
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/mertz/$filename");
	}
	if (($time >= 200 && $time <= 500) || ($time >=1300 && $time <=1500)){
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/nanse/$filename");
	}
	if (($time >= 330 && $time <= 600) || ($time >=1330 && $time <=1700)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/porpo/$filename");
	}
	if (($time >= 330 && $time <= 600) || ($time >=1330 && $time <=1700)) {
	    system("ln -s /data2/jennb/iceshelves/data/$filename /data2/jennb/iceshelves/shelf_proc/sabri/$filename");
	}
    }
}
system("cd /data2/jennb/iceshelves/shelf_proc/abbot; any_modis.pl abbot 15");
system("cd /data2/jennb/iceshelves/shelf_proc/amery; any_modis.pl amery 15");
system("cd /data2/jennb/iceshelves/shelf_proc/bryan; any_modis.pl bryan 15");
system("cd /data2/jennb/iceshelves/shelf_proc/filch; any_modis.pl filch 10");
system("cd /data2/jennb/iceshelves/shelf_proc/fimbu; any_modis.pl fimbu 5");
system("cd /data2/jennb/iceshelves/shelf_proc/getze; any_modis.pl getze 15");
system("cd /data2/jennb/iceshelves/shelf_proc/getzw; any_modis.pl getzw 15");
system("cd /data2/jennb/iceshelves/shelf_proc/larsb; any_modis.pl larsb 15");
system("cd /data2/jennb/iceshelves/shelf_proc/larsc; any_modis.pl larsc 15");
system("cd /data2/jennb/iceshelves/shelf_proc/larsd; any_modis.pl larsd 15");
system("cd /data2/jennb/iceshelves/shelf_proc/lazar; any_modis.pl lazar 15");
system("cd /data2/jennb/iceshelves/shelf_proc/mertz; any_modis.pl mertz 5");
system("cd /data2/jennb/iceshelves/shelf_proc/nanse; any_modis.pl nanse 10");
system("cd /data2/jennb/iceshelves/shelf_proc/pinei; any_modis.pl pinei 15");
system("cd /data2/jennb/iceshelves/shelf_proc/porpo; any_modis.pl porpo 5");
system("cd /data2/jennb/iceshelves/shelf_proc/ragnh; any_modis.pl ragnh 15");
system("cd /data2/jennb/iceshelves/shelf_proc/riise; any_modis.pl riise 10");
system("cd /data2/jennb/iceshelves/shelf_proc/ronne; any_modis.pl ronne 10");
system("cd /data2/jennb/iceshelves/shelf_proc/rosse; any_modis.pl rosse 10");
system("cd /data2/jennb/iceshelves/shelf_proc/rossw; any_modis.pl rossw 10");
system("cd /data2/jennb/iceshelves/shelf_proc/sabri; any_modis.pl sabri 5");
system("cd /data2/jennb/iceshelves/shelf_proc/shack; any_modis.pl shack 10");
system("cd /data2/jennb/iceshelves/shelf_proc/sulzb; any_modis.pl sulzb 15");
system("cd /data2/jennb/iceshelves/shelf_proc/syowa; any_modis.pl syowa 15");
system("cd /data2/jennb/iceshelves/shelf_proc/westi; any_modis.pl westi 15");
system("cd /data2/jennb/iceshelves/shelf_proc/wilki; any_modis.pl wilki 15");
system("cd /data2/jennb/iceshelves/shelf_proc/wordi; any_modis.pl wordi 15");
1;



