FILE=paper_vud_twoloop

all: $(FILE).pdf

$(FILE).pdf : $(FILE).tex $(DIAS) references.bib ./plots/*.pdf
	pdflatex $(FILE).tex &&\
	bibtex $(FILE)       &&\
	pdflatex $(FILE).tex &&\
	pdflatex $(FILE).tex

clean:
	rm -vf *.dvi *.log *.aux *.bbl *.blg *.brf *.ilg *.toc *.out *.glo \
	  *.lof *.lot *.idx *.ind *.out *.fff *.ttt *.nlo *.nls *.fls *.fdb_latexmk


