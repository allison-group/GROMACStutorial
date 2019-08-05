# gnuplot instructions

# pdf output
set terminal pdf

# plot energy time-series from SD
# file name
set output 'M27_NpT_prod_RMSD.pdf'
# position of figure legend
set key out horiz center top
# title
set title "RMSD vs Time"
# specify axis ranges (if desired)
#set xrange [0:1.0]
#set yrange [0:1.0]
# axis labels
set xlabel "Time (ps)"
set ylabel "RMSD (nm)"
# put unlabelled tics on opposite side of plot border
set xtics mirror
set ytics mirror
# set line/point style(ls) 1: colour(lc), type(lt), width(lt), point type(pt) and point size(ps)
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 0.5 
set style line 2 lc rgb '#FF0000' lt 1 lw 2 pt 7 ps 0.5
# plot data
plot 'M27_npt_prod_rmsdCA.dat' with linespoints ls 1, \
     'M27_npt_prod_rmsdALL.dat' with linespoints ls 2

