PDFNAME = RapportStage3A

pdf: main.tex
	pdflatex main.tex
	bibtex main.aux
	pdflatex main.tex
	pdflatex main.tex
	mkdir -p output/
	mv -t output/ main.aux main.log main.out main.toc main.glo main.ist main.lof main.lol main.gls main.glg main.bbl main.blg main.brf
	mv main.pdf $(PDFNAME).pdf
	cp $(PDFNAME).pdf output/

clean:
	rm -rf output/
	rm -f main.aux
	rm -f main.log
	rm -f main.out
	rm -f main.toc
	rm -f main.glo
	rm -f main.ist
	rm -f main.lof
	rm -f main.lol
	rm -f main.bbl
	rm -f main.blg
	rm -f main.gls
	rm -f main.glg
	rm -f main.brf
	rm -f main.lot
	rm -f main.pdf
	rm -f main.bbl
	rm -f main.blg
	rm -f main.brf
	rm -f main.slg
	rm -f main.slo
	rm -f main.sls
	rm -f $(PDFNAME).pdf