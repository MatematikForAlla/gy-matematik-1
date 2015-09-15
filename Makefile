# $Id$
# Author:	Daniel Bosk <daniel@bosk.se>
# Date:		27 Dec 2012

PUB_SITES= 			main

PUB_SERVER-main= 	jarvis.bosk.se
PUB_DIR-main= 		/home/dbosk/www
PUB_CATEGORY-main= 	pub
PUB_FILES-main= 	${DOCUMENTS}

DOCUMENTS=	matematik-1.pdf

FILES=		matematik-1.tex frontmatter.tex backmatter.tex matematik-1.bib
FILES+= 	preface.tex
FILES+= 	intro.tex logik.tex mangder.tex
FILES+= 	naturliga.tex heltalen.tex talteori.tex
FILES+= 	rationella.tex reella.tex talsystem.tex
FILES+= 	ekvationer.tex olikheter.tex potensekvationer.tex
FILES+= 	geometri.tex trigonometri.tex linjalg.tex
FILES+= 	procent.tex forandring.tex
FILES+= 	kombinatorik.tex sannolikhet.tex statistik.tex

KRYPTO= 	krypto/krypto.tex krypto/introcrypt.bib
KRYPTO+= 	krypto/intro.tex krypto/term.tex
KRYPTO+= 	krypto/perm.tex figs/skytale.eps
KRYPTO+= 	krypto/caesar.tex
KRYPTO+= 	krypto/subst.tex figs/english_letter_frequencies.eps
KRYPTO+= 	krypto/vigenere.tex
KRYPTO+= 	krypto/perfect.tex
KRYPTO+= 	krypto/modern.tex

FILES+= 	${KRYPTO}

matematik-1.pdf: ${FILES}

figs/skytale.eps: krypto/figs/skytale.eps
figs/english_letter_frequencies.eps: krypto/figs/english_letter_frequencies.eps

figs/skytale.eps figs/english_letter_frequencies.eps:
	${CP} $^ $@

clean:
	${RM} krypto/krypto.aux pwdanalysis/pwdinclude.aux
	${RM} figs/*-converted-to.pdf
	${RM} matematik-1-1.asy matematik-1-1.pdf matematik-1.pre

### INCLUDES ###

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk

