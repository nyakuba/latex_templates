gnuplot:
	cd plots && for file in *.gnu; do gnuplot $$file; done

tex: main.tex
	cp -u main.pdf main.backup.pdf
	mkdir -p build
	lualatex -output-directory build -output-format pdf -draftmode main.tex
	biber build/main.bcf
	lualatex -output-directory build -output-format pdf main.tex
	mv build/main.pdf .

all: latex gnuplot
