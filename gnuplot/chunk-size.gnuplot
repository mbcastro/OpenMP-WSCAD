# Input
set datafile separator " "

set encoding utf8

# Output
set terminal postscript eps enhanced color size 3,2
set output "img/chunk-size.eps"

load "gnuplot/settings.gnuplot"


# X Axis
set xrange [0:7]
set xtics ('1' 0,'2' 1, '4' 2, '8' 3, '16' 4, '32' 5, '64' 6, '128' 7, '256' 8, '512' 9, '1024' 10)
set xlabel "Tamanho do Chunk"

# Y Axis
set ylabel "Tempo (s)"
set format y "%.1f"

# Grid
set grid xtics
set grid ytics

# Legend
set key inside right top height 1 width 1 box lw 1

plot  "results/chunk-static.csv" using 0:2:3 with yerrorbars title "Escalonador Static" ls 5, \
	 '' using 0:2 with lines ls 5 notitle,                      \
	 "results/chunk-dynamic.csv" using 0:2:3 with yerrorbars title "Escalonador Dynamic" ls 6,   \
	 '' using 0:2 with lines ls 6 notitle
