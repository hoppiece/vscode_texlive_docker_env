.PHONY: all build compile clean

IMAGE_NAME = texlive-custom

all: build compile

build:
	docker build -t $(IMAGE_NAME) .

compile:
	docker run --rm -v $(PWD):/workdir $(IMAGE_NAME) sh -c 'latexmk -interaction=nonstopmode main.tex'

clean:
	rm -f *.aux *.log *.dvi *.toc *.lof *.lot *.out *.bbl *.blg *.synctex.gz *.fls *.fdb_latexmk
