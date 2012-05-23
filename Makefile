
all: index.tex section-1 section-2 section-3
	pdflatex index.tex

section-1: section-1.tex section-1.R
	r section-1.R

section-2: section-2.tex section-2.R
	r section-2.R

section-3: section-3.tex section-3.R
	r section-3.R

section-4: section-4.tex

section-5: section-5.tex

section-6: section-6.tex

section-7: section-7.tex

clean:
	rm *.aux
	rm *.log
	rm *.pdf
	rm *.txt
	rm *~