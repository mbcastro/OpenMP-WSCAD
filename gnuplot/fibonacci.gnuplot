# Input
set datafile separator " "

set encoding utf8

# Output
set terminal postscript eps enhanced color size 3,2
set output "img/fibonacci-task-grain.eps"

load "gnuplot/settings.gnuplot"


# X Axis
set xtics("14" 0, "16" 1, "18" 2, "18" 3, "20" 4, "22" 5, "24" 6, "26" 7, "28" 8, "30" 9, "32" 10, "34" 11, "36" 12, "38" 12, "40" 13)
set xlabel "Número de Threads"

# Y Axis
set ylabel "Tempo (s)"
set format y "%.0f"

# Grid
set grid xtics
set grid ytics

# Legend
set key inside right top height 1 width 1 box lw 1

plot  "results/fibonacci.csv" using 0:2 with linespoints title "Escalonador Static" ls 6 \

