set terminal postscript enhanced "Roman" 24
set term post eps enhanced color  size 9cm,9cm
set out "C2-LS.eps"

set logscale y 2
set logscale x 2
#set format y "%.4g"
set xlabel "isogeny degree"
set ylabel "seconds" offset 5
set key right bottom
set rmargin 0
set lmargin 6
set size square

plot [1.5:500][0.015625:131072] 'C2.dat' index 6 using 1:($2+$3+$4+$5+$6+$7+2**floor(log($1)/log(2)+2)*($9+$10)) with line lw 3 title "C2: F_{2^{101}}",\
'C2.dat' index 9 using 1:($2+$3+$4+$5+$6+$7+3**floor(log(2*$1+1)/log(3))*($9+$10)/2) with line lw 3 title "C2: F_{3^{64}}",\
'LS.dat' index 6 using 1:5 with line lw 3 title "LS: F_{3^{64}}",\
'LS.dat' index 7 using 1:5 with line lw 3 title "LS: F_{5^{43}}"
