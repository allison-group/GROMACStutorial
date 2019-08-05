# gnuplot instructions

# pdf output
set terminal pdf

# plot energy time-series from SD
# file name
set output 'M27_NVTheat_temp.pdf'
# position of figure legend
set key out horiz center top
# title
set title "Temperature vs Time"
# specify axis ranges (if desired)
#set xrange [0:1.0]
#set yrange [0:1.0]
# axis labels
set xlabel "Time (ps)"
set ylabel "Temperature (K)"
# put unlabelled tics on opposite side of plot border
set xtics mirror
set ytics mirror
# set line/point style(ls) 1: colour(lc), type(lt), width(lt), point type(pt) and point size(ps)
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.0
# plot data
plot 'M27_nvt_heat_temp.dat' with linespoints ls 1

