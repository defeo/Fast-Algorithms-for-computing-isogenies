ec-isogeny.pdf: *.tex C2-LS.eps
	latex ec-isogeny ; bibtex ec-isogeny ; latex ec-isogeny ; latex ec-isogeny ; dvipdfm -p letter ec-isogeny 

build1.pdf: C2-LS.eps
	epstopdf C2-LS.eps

build1.eps: C2-LS.plt C2.dat LS.dat
	gnuplot C2-LS.plt

.PHONY: pdfplots psplots
pdfplots : C2-LS.pdf
epsplots : C2-LS.eps
