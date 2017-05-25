# Author:	Daniel Bosk <daniel@bosk.se>
# Date:		27 Dec 2012

.PHONY: all
all: matematik-1.pdf

SRC=	matematik-1.tex frontmatter.tex backmatter.tex matematik-1.bib
SRC+=	LICENSE preface.tex
SRC+= 	intro.tex
SRC+= 	logik.tex mangder.tex game-of-life.tex
SRC+= 	naturliga.tex heltalen.tex talteori.tex
SRC+= 	rationella.tex reella.tex talsystem.tex
SRC+= 	ekvationer.tex olikheter.tex potensekvationer.tex
SRC+= 	geometri.tex trigonometri.tex linjalg.tex
SRC+= 	procent.tex forandring.tex
SRC+= 	kombinatorik.tex sannolikhet.tex statistik.tex
SRC+= 	kursplanering.tex

matematik-1.pdf: ${SRC}

clean:
	${RM} figs/*-converted-to.pdf
	${RM} matematik-1-1.asy matematik-1-1.pdf matematik-1.pre


### INCLUDES ###

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk

