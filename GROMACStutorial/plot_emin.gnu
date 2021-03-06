# gnuplot instructions

# pdf output
set terminal pdf

# plot energy time-series from SD
# file name
set output 'minSDene.pdf'
# position of figure legend
set key out horiz center top
# title
set title "Potential Energy vs Step"
# specify axis ranges (if desired)
#set xrange [0:1.0]
#set yrange [0:1.0]
# axis labels
set xlabel "Minimisation Step"
set ylabel "Potential Energy (kJ/mol)"
# put unlabelled tics on opposite side of plot border
set xtics mirror
set ytics mirror
# set line/point style(ls) 1: colour(lc), type(lt), width(lt), point type(pt) and point size(ps)
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.0
#set style line 2 lc rgb '#FF0000' lt 1 lw 2 pt 7 ps 1.0
# plot data
plot 'M27_minsd_ene.dat' with linespoints ls 1


## IF YOU DID CG ENERGY MINIMISATION TOO, UNCOMMENT THESE LINES TO PLOT IT AS WELL ##
# plot energy time-series
# file name
#set output 'minCGene.pdf'
# position of figure legend
#set key out horiz center top
# title
#set title "Potential Energy vs Time"
# specify axis ranges (if desired)
#set xrange [0:1.0]
#set yrange [0:1.0]
# axis labels
#set xlabel "Time (ps)"
#set ylabel "Energy (kJ/mol)"
# put unlabelled tics on opposite side of plot border
#set xtics mirror
#set ytics mirror
# set line/point style(ls) 1: colour(lc), type(lt), width(lt), point type(pt) and point size(ps)
#set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.0
#set style line 2 lc rgb '#FF0000' lt 1 lw 2 pt 7 ps 1.0
# plot data
#plot 'M27_mincg_ene.dat' with linespoints ls 2


