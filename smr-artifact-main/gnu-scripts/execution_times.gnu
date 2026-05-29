APP = "execution_times"
OUTPUT_FILE = APP . '.pdf'

set datafile separator ","

bm = 0.12
lm = 0.09
rm = 0.57
gap = 0.02
size = 0.85
kk = 0.5 # relative height of bottom plot
y1 = 0.0; y2 = 0.45; y3 = 10.0; y4 = 140.0
yinc1=0.1;yinc2=30

set arrow from screen lm - gap / 4.0, bm + size * kk - gap / 4.0 to screen \
lm + gap / 4.0, bm + size * kk + gap / 4.0 nohead

set arrow from screen lm - gap / 4.0, bm + size * kk - gap / 4.0  + gap to screen \
lm + gap / 4.0, bm + size * kk + gap / 4.0 + gap nohead

set arrow from screen rm - gap / 4.0, bm + size * kk - gap / 4.0 to screen \
rm + gap / 4.0, bm + size * kk + gap / 4.0 nohead

set arrow from screen rm - gap / 4.0, bm + size * kk - gap / 4.0  + gap to screen \
rm + gap / 4.0, bm + size * kk + gap / 4.0 + gap nohead


set terminal pdf enhanced size 10,6
set output OUTPUT_FILE

set colorsequence podo

set style histogram cluster gap 1
set style data histograms
set style fill solid 1 border

set xtics font ",26"
set ytics font ",26"
set xtic scale 0

set ylabel font ",28" offset -3,10,0
set xlabel font ",30" 
set key font ",26"

set yrange [0:*]
set ytics nomirror
set multiplot layout 2,2
#set rmargin at screen 0.5
#set lmargin 12
#set bmargin 6

set lmargin at screen lm
set rmargin at screen rm
set bmargin at screen bm
set tmargin at screen bm + size * kk

set ylabel "Running time (s)"
set xlabel "Polybench benchmarks" offset 30,-1

unset key

set yrange [y1:y2]
set ytics yinc1 nomirror
set border 1+2+8
plot './csv/execution_times.csv' using 2 every 1:::0::0 ti col ls 2, '' u 3:xticlabels(1) every 1:::0::0 ti col ls 3, '' u 4:xticlabels(1) every 1:::0::0 ti col ls 8

unset xtics
unset xlabel
unset ylabel
set border 2+4+8
set bmargin at screen bm + size * kk + gap
set tmargin at screen bm + size + gap
set yrange [y3:y4]
set ytics yinc2 nomirror
plot './csv/execution_times.csv' using 2 every 1:::0::0 ti col ls 2, '' u 3:xticlabels(1) every 1:::0::0 ti col ls 3, '' u 4:xticlabels(1) every 1:::0::0 ti col ls 8

bm = 0.12
lm = 0.57
rm = 0.92
gap = 0.02
size = 0.85
kk = 0.5 # relative height of bottom plot
y1 = 0.0; y2 = 0.035; y3 = 0.05; y4 = 1.3
yinc1=0.01;yinc2=0.3

set arrow from screen rm - gap / 4.0, bm + size * kk - gap / 4.0 to screen \
rm + gap / 4.0, bm + size * kk + gap / 4.0 nohead

set arrow from screen rm - gap / 4.0, bm + size * kk - gap / 4.0  + gap to screen \
rm + gap / 4.0, bm + size * kk + gap / 4.0 + gap nohead

#set rmargin 9
set xtic scale 0
set xtics font ",26"
set lmargin at screen lm
set rmargin at screen rm
set bmargin at screen bm
set tmargin at screen bm + size * kk

set xlabel " " offset 50,0
unset ylabel
unset ytics
set y2range [y1:y2]
set y2tics yinc1 nomirror
set y2tics font ",26"
set border 1+2+8

plot './csv/execution_times.csv' using 2 every 1:::1::1 axes x1y2 ti col ls 2, '' u 3:xtic(1) every 1:::1::1 axes x1y2 ti col ls 3, '' u 4:xtic(1) every 1:::1::1 axes x1y2 ti col ls 8

set y2range [y3:y4]
set y2tics yinc2 nomirror
set border 2+4+8
unset xtics
unset xlabel
unset ylabel
set key left
set key box
set bmargin at screen bm + size * kk + gap
set tmargin at screen bm + size + gap
plot './csv/execution_times.csv' using 2 every 1:::1::1 axes x1y2 ti col ls 2, '' u 3:xtic(1) every 1:::1::1 axes x1y2 ti col ls 3, '' u 4:xtic(1) every 1:::1::1 axes x1y2 ti col ls 8

unset multiplot
set output
