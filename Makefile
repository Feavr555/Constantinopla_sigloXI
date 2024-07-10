

all:
	pdflatex --version
	bibtex --version
	pdflatex main.tex
	bibtex main
	pdflatex main.tex


clean:
	rm *.aux *.bbl *.blg *.log *.toc *.pdf



