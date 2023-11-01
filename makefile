all: protocol.pdf

protocol.pdf: protocol.tex
	latexmk -pdf $<

preview: protocol.tex
	latexmk -pdf -pvc $<

clean:
	latexmk -c

cleanall:
	latexmk -C

.PHONY: preview
