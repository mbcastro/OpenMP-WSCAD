# Input
set datafile separator " "

set encoding utf8

# Output
set terminal postscript eps enhanced color size 3,2
set output "img/smm.eps"

load "gnuplot/settings.gnuplot"


# X Axis
set xrange [0:11]
set xtics ('2' 0,'4' 1, '6' 2, '8' 3, '10' 4, '12' 5, '14' 6, '16' 7, '18' 8, '20' 9, '22' 10, '24' 11)
set xlabel "Número de Threads"

# Y Axis
set ylabel "Tempo (s)"
set format y "%.1f"

# Grid
set grid xtics
set grid ytics

# Legend
set key inside right top height 1 width 1 box lw 1

plot  "results/smm-static.csv" using 0:2:3 with yerrorbars title "Escalonador Static" ls 5, \
	 '' using 0:2 with lines ls 5 notitle,                      \
	 "results/smm-dynamic.csv" using 0:2:3 with yerrorbars title "Escalonador Dynamic" ls 6,   \
	 '' using 0:2 with lines ls 6 notitle