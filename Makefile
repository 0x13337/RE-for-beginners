all: 
	rm *.fls
	rm *.log
	latexmk -c
	latexmk -pdf RE_for_beginners-ru.tex
	latexmk -c
	latexmk -pdf RE_for_beginners-en.tex
