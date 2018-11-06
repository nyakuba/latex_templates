all: gnuplot tex

gnuplot:
	cd plots && for file in *.gnu; do gnuplot $$file; done

tex: main.tex
	mkdir -p build
	mv -vf build/main.pdf build/main.backup.pdf 2> /dev/null || true
	lualatex -output-directory build -output-format pdf main.tex
	mv build/main.pdf .

