.PHONY: all light clean

all: build clean

build:
	pdflatex --shell-escape fosa_main.tex
	pdflatex --shell-escape fosa_main.tex
	pdflatex --shell-escape fosa_main.tex

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.log
	rm -f *.out
	rm -f *.toc
	rm -f *.lot
	rm -f *.lof

