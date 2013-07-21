SAXON = java -jar ../../bin/saxon8.jar

OUTPUT = index.html papers.html talks.html papers/*.html clouds/*.txt
DATA = bec.xml

all: html
bib: $(DATA:%.xml=%.bib)
html: $(DATA:%.xml=%.html.log) words
words: $(DATA:%.xml=%.words.txt.log)

clean:
	rm -f $(OUTPUT) *.log

%.log: %.xsl $(DATA)
	$(SAXON) -o $@ -s $(DATA) $<

$(DATA:%.xml=%.words.txt.log): ../cvx.words.txt.xsl $(DATA)
	$(SAXON) -o $@ -s $(DATA) $<
