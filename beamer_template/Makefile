gnuplot:
	cd plots && for file in *.gnu; do gnuplot $$file; done

tex: main.tex
	cp -u main.pdf main.backup.pdf
	lualatex -output-directory build -output-format pdf main.tex
	mv build/main.pdf .

all: tex gnuplot
