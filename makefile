##########################################
## LIBRARY MAKEFILE                     ##
## Author: Guilherme Sadovski           ##
## Contact: guilhermesadovski@gmail.com ##
## Date: 2023/10/23                     ##
##########################################

# DEFINITIONS OF VARIABLES #
SRCNAME = main
JOBNAME = library
DESTINY = $(CLOUD)/work/lib/

# PHONY CONVERSIONS #
move:
	mv -f $(SRCNAME).pdf $(DESTINY)$(JOBNAME).pdf
clean-pdf:
	rm -f  *.pdf
clean-aux:
	rm -f *.bbl *.aux *.log *.bcf *.blg *.out *.run.xml *.toc *.fls *.fdb_latexmk *.synctex.gz
clean: clean-pdf clean-aux
quit-tex: move clean

.PHONY: move clean-pdf clean-aux quit-tex clean 
