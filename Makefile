engine = xelatex
file = siicusp
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
	rm *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml *.toc;
	rm -rf _minted-report

