
section-1-data = section-img-1-1a.pdf section-img-1-1b.pdf section-img-1-1c.txt \
                 section-img-1-2a.pdf section-img-1-2b.pdf section-img-1-2c.txt
section-2-data = section-img-2-1a.pdf section-img-2-2a.pdf section-img-2-3a.pdf \
                 section-rout-2.txt
section-3-data = section-rout-3.txt
section-4-data = section-rout-4.txt
section-5-data = section-rout-5.txt

all: index.tex section-1 section-2 section-3 section-4 section-5
	pdflatex index.tex

section-1: section-1.tex $(section-1-data)

section-2: section-2.tex $(section-2-data)

section-3: section-3.tex $(section-3-data)

section-4: section-4.tex $(section-4-data)

section-5: section-5.tex $(section-5-data)

section-6: section-6.tex

section-7: section-7.tex


$(section-1-data): section-1.R
	r section-1.R

$(section-2-data): section-2.R
	r section-2.R

$(section-3-data): section-3.R
	r section-3.R

$(section-4-data): section-4.R
	r section-4.R

$(section-5-data): section-5.R
	r section-5.R

clean:
	rm *.aux
	rm *.log
	rm *.pdf
	rm *.txt
	rm *~
