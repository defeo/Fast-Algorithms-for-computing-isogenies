set terminal postscript enhanced "Roman" 24
set term post eps enhanced color  size 14cm,5cm
set out "LSp.eps"

#set logscale y 2
#set logscale x 2
set format y "%.5g"
set xlabel "p"
set ylabel "seconds" 
set key right top
set rmargin 2
set lmargin 9

plot [0:400][-10:600] 'LS.dat' index 10 using 1:5 with line lw 3 title "F_{p^{10}}, ell=59",\
'LS.dat' index 11 using 1:5 with line lw 3 title "F_{p^{30}}, ell=97",\
'LS.dat' index 12 using 1:5 with line lw 3 title "F_{p^{60}}, ell=73",\
'LS.dat' index 13 using 1:5 with line lw 3 title "F_{p^{100}}, ell=127"
