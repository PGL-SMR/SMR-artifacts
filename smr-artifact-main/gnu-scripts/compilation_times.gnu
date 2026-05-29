APP = "compilation_times"
OUTPUT_FILE = APP . '.pdf'

set datafile separator ","
set terminal pdf enhanced size 10,6
set output OUTPUT_FILE

set colorsequence podo

set style histogram cluster gap 1
set style data histograms
set style fill solid 1 border

set xtics font ",26"
set ytics font ",26"

set ylabel font ",28" offset -3,0,0
set xlabel font ",30" offset 0,-1
set key font ",26"

set yrange [0:650]
set ytics nomirror
set lmargin 12
set bmargin 6

set ylabel "Compilation time (ms)"
set xlabel "Polybench benchmarks"

set key right
set key box

plot './csv/compilation_times.csv' using 2 every 1:::0::0 ti col ls 2, '' u 3:xticlabels(1) every 1:::0::0 ti col ls 3

set output
