engine = pdflatex
file = poster
file_en = $(file)_en
compile = $(engine) $(file).tex
compile_en = $(engine) $(file_en).tex

all:
	make clean; \
	$(compile); $(compile); \
 	biber $(file); \
 	$(compile); $(compile) && \
 	zathura $(file).pdf

en:
	make clean; \
	$(compile_en); $(compile_en); \
 	biber $(file_en); \
 	$(compile_en); $(compile_en) && \
 	zathura $(file_en).pdf

.PHONY: clean
clean:
	rm -f *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml *.toc *.nav *.snm *.synctex.gz-current;
	rm -f *.synctex.gz *_vimtex.* *.fls *.fdb_latexmk;
	rm -rf _minted-report

