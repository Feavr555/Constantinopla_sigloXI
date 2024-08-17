
PROJECT	:= Constantinopla_sigloXI

all:
	pdflatex main.tex
	clear
	mv -v main.pdf $(PROJECT).pdf

add-all:
	git add main.pdf main.tex contexto/biblio.bib */*.tex

version:
	pdflatex --version
	bibtex --version
	biber --version


compile:
	pdflatex main.tex
#	bibtex main
	biber main
	pdflatex main.tex
	pdflatex main.tex
	clear
	mv -v main.pdf $(PROJECT).pdf

push:
	git remote set-url origin \
		git@github.com-Feavr555:Feavr555/$(PROJECT).git
	git push -u origin master


clean_all:
	rm *.aux *.bbl *.blg *.log *.toc *.pdf *.out *.bcf *.xml *.zip

clean_ex:
	rm *.pdf *.zip

export:
	zip -r $(PROJECT).zip .
#	mv -v main.pdf $(PROJECT)

read:
	okular $(PROJECT).pdf &




