ec-isogeny.pdf: *.tex C2-LS.eps C2-LS2.eps p2.eps LSp.eps
	latex ec-isogeny ; bibtex ec-isogeny ; latex ec-isogeny ; latex ec-isogeny ; dvipdfm -p letter ec-isogeny 

C2-LS.pdf: C2-LS.eps
	epstopdf C2-LS.eps

C2-LS.eps: C2-LS.plt C2.dat LS.dat
	gnuplot C2-LS.plt

C2-LS2.pdf: C2-LS2.eps
	epstopdf C2-LS2.eps

C2-LS2.eps: C2-LS2.plt C2.dat LS.dat
	gnuplot C2-LS2.plt

LSp.pdf: LSp.eps
	epstopdf LSp.eps

LSp.eps: LSp.plt LS.dat
	gnuplot LSp.plt

p2.pdf: p2.eps
	epstopdf p2.eps

p2.eps: p2.plt C2.dat
	gnuplot p2.plt

.PHONY: pdfplots psplots
pdfplots : C2-LS.pdf C2-LS2.pdf p2.pdf LSp.pdf
epsplots : C2-LS.eps C2-LS2.eps p2.eps LSp.eps
