set terminal postscript enhanced color eps
set mxtics 2
set mytics 2
set grid mxtics mytics
set datafile missing "NA"
set xlabel "E_s/N_0, dB"
set ylabel "Expected early termination phase"
set key top center outside

set output "./eps/{96}{40}_normal.eps"
#set title "N = 96, K = 40, correct cw transmission"
set multiplot
plot \
"./data/{96}{40}data.txt" using 1:2  title "PC-CRC, b = 10" w lp
unset multiplot