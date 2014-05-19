# Driver for the conversion between HTML and textile

PANDOC = /usr/local/bin/pandoc

src = $(wildcard *.markdown)
names = $(basename $(notdir $(src)))
compiled = $(addsuffix .html,$(names))


all: $(compiled) 

clean:
	rm -rf $(compiled)

%.html: %.markdown
	$(PANDOC) $<  -s --slide-level 2 -f markdown -t revealjs -V theme=sky -o $@

