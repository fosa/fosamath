.PHONY: all light clean

all: build clean

build: build_basic build_ti89 build_nspire build_both

build_basic:
	pdflatex --shell-escape fosa_main.tex
	pdflatex --shell-escape fosa_main.tex
	pdflatex --shell-escape fosa_main.tex

build_ti89:
	pdflatex --shell-escape fosa_main_ti89.tex
	pdflatex --shell-escape fosa_main_ti89.tex
	pdflatex --shell-escape fosa_main_ti89.tex

build_nspire:
	pdflatex --shell-escape fosa_main_tinspire.tex
	pdflatex --shell-escape fosa_main_tinspire.tex
	pdflatex --shell-escape fosa_main_tinspire.tex

build_both:
	pdflatex --shell-escape fosa_main_tiboth.tex
	pdflatex --shell-escape fosa_main_tiboth.tex
	pdflatex --shell-escape fosa_main_tiboth.tex

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.log
	rm -f *.out
	rm -f *.toc
	rm -f *.lot
	rm -f *.lof

