COMPILER = xelatex
SPELL_CHECKER = aspell --lang=fr -c
MAIN_FILE = main
RM = rm -rf
SOURCES = $(wildcard *.tex chapters/*/*.tex)

all: build

build: $(MAIN_FILE).tex
	$(COMPILER) $^
	$(COMPILER) $^

check: $(SOURCES)
	for f in $^; do echo $f; done

clean:
	$(RM) $(MAIN_FILE).aux $(MAIN_FILE).toc $(MAIN_FILE).pdf $(MAIN_FILE).log