
all: final

.PHONY: dissertation clean ch-introduction ch-appendices ch-microarray
# Main ------------------------------------------------------------------------
final: 
	latexmk -pdf dissertation.tex

ch01:
	latexmk -pdf ch-introduction.tex

ch02:
	latexmk -pdf ch-microarray.tex

chAA:
	latexmk -pdf ch-appendices.tex

# Clean -----------------------------------------------------------------------
clean:
	git clean -f -X
