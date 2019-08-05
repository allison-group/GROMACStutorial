puts "Getting secondary structure information"

proc write_vector { vec filename } {
  set fid [open $filename w]
  foreach elem $vec { puts $fid $elem }
  close $fid
}

set fd [open "M27_npt_prod_secStruct.dat" w ]
set n [molinfo 0 get numframes]
set protCA [atomselect 0 "protein name CA"]
set numRes [llength [$protCA get resid]]

set hp [open "helixPercent.dat" w]
set bp [open "betaPercent.dat" w]
set ep [open "extendedPercent.dat" w]
set tp [open "turnPercent.dat" w]
set cp [open "coilPercent.dat" w]
set pp [open "piPercent.dat" w]
set 3p [open "310Percent.dat" w]

for {set i 0 } { $i < $n } { incr i } {
	animate goto $i
	display update ui
	mol ssrecalc 0
	$protCA frame $i
	$protCA update
	set sscache_data($i) [$protCA get structure]
	set helixPercent [expr { [llength [lsearch -all $sscache_data($i) H ]] / double($numRes)}]
	set betaPercent [expr { [llength [lsearch -all $sscache_data($i) B ]] / double($numRes)}]
	set piPercent [expr { [llength [lsearch -all $sscache_data($i) I ]] / double($numRes)}]
	set 310Percent [expr { [llength [lsearch -all $sscache_data($i) G ]] / double($numRes)}]
	set extendedPercent [expr { [llength [lsearch -all $sscache_data($i) E ]] / double($numRes)}]
	set turnPercent [expr { [llength [lsearch -all $sscache_data($i) T ]] / double($numRes)}]
	set coilPercent [expr { [llength [lsearch -all $sscache_data($i) C ]] / double($numRes)}]
        puts $hp $helixPercent
        puts $bp $betaPercent
        puts $ep $extendedPercent
        puts $tp $turnPercent
        puts $cp $coilPercent
        puts $pp $piPercent
        puts $3p $310Percent
	puts $fd $sscache_data($i)
}

close $fd
close $hp
close $bp
close $ep
close $tp
close $cp
close $pp
close $3p
$protCA delete
