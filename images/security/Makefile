
ALL: cr_penalty.pdf denasa_penalty.pdf cr_placement.pdf denasa_placement.pdf \
	denasa_exit.pdf client_density.pdf cr_penalty_2019.pdf denasa_penalty_2019.pdf

.ONESHELL:
test: header.tex
.PHONY:test

%.pdf: %.gp header
	cat header| sed "s|\\\|\\\\\\\|g" | sed 's/"/\\"/g' | awk '{printf "%s\\n", $$0}' | awk 'BEGIN{getline l < "-"}/XXX/{gsub("XXX",l)}1' $< 1> $*.gp2
	gnuplot $*.gp2
	rm $*.gp2
	cat $*.tex | sed 's/documentclass/documentclass[7pt]/' > $*.tex.tmp
	mv $*.tex.tmp $*.tex
	latex $*.tex
	dvipdf $*.dvi
	pdfcrop $*.pdf
	mv $*-crop.pdf $*.pdf

clean:
	rm -rf *.pdf *.eps *.aux *.dvi *.log *.tex *.xcp *.out
.PHONY: clean
