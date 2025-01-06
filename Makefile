CLEAN = *.aux *.blg *.fdb_latexmk *.fls *.log *.out *.pdf *.synctex.gz *.toc *.dvi main-diff.tex
IMAGE = $(shell find . -name '*.drawio.png')

MDTOPDF = md-to-pdf
DRAWIO = /Applications/draw.io.app/Contents/MacOS/draw.io

.PHONY: all
all: main.pdf

main.pdf: main.tex main.bib $(IMAGE:%.drawio.png=%.pdf)
	latexmk -g main.tex

.PHONY: diff
diff: main-diff.pdf

main-diff.pdf main-diff.tex: main.tex main.bib
	./script/latexdiff.sh $(VERSION)
	@echo VERSION = $(VERSION)

.PHONY: images
images: $(IMAGE:%.drawio.png=%.pdf)

%.pdf: %.drawio.png
	$(DRAWIO) --export --format pdf --crop -o $@ $^

.PHONY: clean/images
clean/images:
	- $(RM) $(IMAGE:%.drawio.png=%.pdf)

.PHONY: clean
clean:
	- $(RM) -r $(CLEAN)
