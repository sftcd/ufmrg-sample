
DOCS=	draft-farrell-ufmrg-sample.txt \
	draft-farrell-ufmrg-sample.xml \
	draft-farrell-ufmrg-sample.html

all: $(DOCS)

%.xml:	%.mkd
	kramdown-rfc2629 $< > $@
%.html %.txt:	%.xml
	xml2rfc --html $<
	xml2rfc --text $<


