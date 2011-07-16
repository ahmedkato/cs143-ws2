##
## Simple Makefile for CS143 Written Set 2
##

.PHONY: doc clean all

DOC_NAME=written_set_1

JUNK=$(wildcard *.aux *.log)

all: doc

doc: $(DOC_NAME).pdf

$(DOC_NAME).pdf: $(DOC_NAME).tex $(PNG)
	pdflatex $(DOC_NAME).tex
	pdflatex $(DOC_NAME).tex

clean:
	rm -f $(JUNK) $(DOC_NAME).pdf
