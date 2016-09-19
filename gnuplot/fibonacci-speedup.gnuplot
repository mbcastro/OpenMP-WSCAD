# Input
set datafile separator " "

set encoding utf8

# Output
set terminal postscript eps enhanced color size 3,2
set output "img/fibonacci-speedup.eps"

load "gnuplot/settings.gnuplot"


# X Axis
set xtics("16" 0, "18" 1, "18" 2, "20" 3, "22" 4, "24" 5, "26" 6, "28" 7, "30" 8, "32" 9, "34" 10, "36" 11, "38" 12, "40" 13)
set xlabel "Tamanho do Grão de Tarefa"

# Y Axis
set ylabel "Ganho sobre stop = 14"
set format y "%.0f"

# Grid
set grid xtics
set grid ytics

# Legend
unset key

plot  "results/fibonacci-speedup.csv" using 0:3 with linespoints notitle ls 6 \

