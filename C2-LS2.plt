set terminal postscript enhanced "Roman" 24
set term post eps enhanced color  size 7.3cm,9cm
set out "C2-LS2.eps"

set logscale y 2
set logscale x 2
set format y ""
set xlabel "isogeny degree"
#set ylabel "seconds" offset 4
set key right bottom
set rmargin 0
set lmargin 0
set size square

plot [2:500][0.015625:65536] 'C2.dat' index 4 using 1:($2+$3+$4+$5+$6+$7+2**floor(log($1)/log(2)+2)*($9+$10)) with line lw 3 title "C2: F_{2^{1023}}",\
'C2.dat' index 5 using 1:($2+$3+$4+$5+$6+$7+3**floor(log(2*$1+1)/log(3))*($9+$10)/2) with line lw 3 title "C2: F_{3^{650}}",\
'LS.dat' index 1 using 1:6 with line lw 3 title "LS: F_{5^{439}}"
