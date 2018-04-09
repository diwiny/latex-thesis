DOCUMENT=thesis

all: clean compile_pdflatex clean

compile_pdflatex:
	pdflatex -shell-escape $(DOCUMENT).tex
	bibtex $(DOCUMENT)
	pdflatex -shell-escape $(DOCUMENT).tex
	pdflatex -shell-escape $(DOCUMENT).tex

clean:
	echo Cleaning temporary files...
	rm -rf **/*.aux **/*.dvi **/*.thm **/*.lof **/*.log **/*.lot **/*.fls **/*.out **/*.toc **/*.bbl **/*.blg
	rm -f *.aux *.dvi *.thm *.lof *.log *.lot *.fls *.out *.toc *.bbl *.blg *.bcf