set terminal postscript enhanced "Roman" 24
set term post eps enhanced color # size 14cm,7cm
set out "C2-LS.eps"

set logscale y 2
set logscale x 2
#set format y "%.5g"
set xlabel "isogeny degree"
set ylabel "seconds" #offset 5
set key right bottom
#set rmargin 2
#set lmargin 9
#unset bars

plot 'couveignesII_2_101.dat' index 5 using 1:($2+$3+$4+$5+$6+$7+2**floor(log($1)/log(2)+2)*($9+$10)):($2+$3+$4+$5+$6+$7+$9+$10):($2+$3+$4+$5+$6+$7+2**floor(log($1)/log(2)+3)*($9+$10)) with errorlines pt 0 lw 3 title "zz_p",\
'couveignesII_2_101.dat' index 2 using 1:($2+$3+$4+$5+$6+$7+2**floor(log($1)/log(2)+2)*($9+$10)):($2+$3+$4+$5+$6+$7+$9+$10):($2+$3+$4+$5+$6+$7+2**floor(log($1)/log(2)+3)*($9+$10)) with errorlines pt 0 lw 3 title "GF2",\
0 notitle,\
'couveignesII_2_101.dat' index 7 using 1:($2+$3+$4+$5+2**floor(log($1)/log(2)+2)*($7+$8)):($2+$3+$4+$5+$7+$8):($2+$3+$4+$5+2**floor(log($1)/log(2)+3)*($7+$8)) with errorlines pt 0 lw 3 title "magma(2)"
