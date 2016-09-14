# Input
set datafile separator " "

set encoding utf8

# Output
set terminal postscript eps enhanced color size 3,2
set output "img/mm-cache.eps"

load "gnuplot/settings.gnuplot"


# X Axis
set xrange [0:11]
set xtics ('2' 0,'4' 1, '6' 2, '8' 3, '10' 4, '12' 5, '14' 6, '16' 7, '18' 8, '20' 9, '22' 10, '24' 11)
set xlabel "Número de Threads"

# Y Axis
set yrange [-100000000:350000000]
set ylabel "Cache Misses"

# Grid
set grid xtics
set grid ytics

# Legend
set key inside right bottom height 1 width 1 box lw 1

plot  "results/mm1-L2.csv" using 0:2 with linespoints title "Laço Externo" ls 5, \
	 "results/mm2-L2.csv" using 0:2 with linespoints title "Laço Interno" ls 6   \
