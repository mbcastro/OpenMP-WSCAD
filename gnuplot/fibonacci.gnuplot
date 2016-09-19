# Input
set datafile separator " "

set encoding utf8

# Output
set terminal postscript eps enhanced color size 3,2
set output "img/fibonacci-task-grain.eps"

load "gnuplot/settings.gnuplot"


# X Axis
set xtics("14" 0, "16" 1, "18" 2, "18" 3, "20" 4, "22" 5, "24" 6, "26" 7, "28" 8, "30" 9, "32" 10, "34" 11, "36" 12, "38" 12, "40" 13)
set xlabel "Tamanho do Grão de Tarefa"

# Y Axis
set ylabel "Tempo (s)"
set format y "%.0f"

# Grid
set grid xtics
set grid ytics

# Legend
unset key

plot  "results/fibonacci.csv" using 0:2 with linespoints notitle ls 6 \

