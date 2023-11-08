all: protocol.pdf

protocol.pdf: protocol.tex biblio.bib
	latexmk -pdf $<

preview: protocol.tex biblio.bib
	latexmk -pdf -pvc $<

clean:
	latexmk -c

cleanall:
	latexmk -C

.PHONY: all preview clean cleanall
