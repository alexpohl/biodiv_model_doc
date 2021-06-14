PAPER=doc

pdf:  ## Compile paper
	pdflatex $(PAPER).tex
	bibtex $(PAPER).aux
	pdflatex $(PAPER).tex
	pdflatex $(PAPER).tex

clean: ## Clean
	rm -f $(PAPER).blg 
	rm -f $(PAPER).bbl 
	rm -f $(PAPER).aux 
	rm -f $(PAPER).doc 
	rm -f $(PAPER).log
	rm -f $(PAPER).out
	rm -f $(PAPER).toc

all: ## Clean, compile and clean
	rm -f $(PAPER).blg
	rm -f $(PAPER).bbl
	rm -f $(PAPER).aux
	rm -f $(PAPER).doc
	rm -f $(PAPER).log
	rm -f $(PAPER).out
	rm -f $(PAPER).toc
	pdflatex $(PAPER).tex
	bibtex $(PAPER).aux
	pdflatex $(PAPER).tex
	pdflatex $(PAPER).tex 
	rm -f $(PAPER).blg
	rm -f $(PAPER).bbl
	rm -f $(PAPER).aux
	rm -f $(PAPER).doc
	rm -f $(PAPER).log
	rm -f $(PAPER).out
	rm -f $(PAPER).toc
