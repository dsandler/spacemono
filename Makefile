all: dist

dist: \
		sources/Roman/Regular/Space-Mono-Regular-hinted.ttf \
		sources/Roman/Bold/Space-Mono-Bold-hinted.ttf \
		sources/Italics/Regular\ Italic/Space-Mono-Regular-Italic-hinted.ttf \
		sources/Italics/Bold\ Italic/Space-Mono-Bold-Italic-hinted.ttf
	mv sources/Roman/Regular/Space-Mono-Regular-hinted.ttf fonts/SpaceMono-Regular.ttf 
	mv sources/Roman/Bold/Space-Mono-Bold-hinted.ttf fonts/SpaceMono-Bold.ttf
	mv sources/Italics/Regular\ Italic/Space-Mono-Regular-Italic-hinted.ttf fonts/SpaceMono-Italic.ttf
	mv sources/Italics/Bold\ Italic/Space-Mono-Bold-Italic-hinted.ttf fonts/SpaceMono-BoldItalic.ttf

sources/Roman/Regular/Space-Mono-Regular-hinted.ttf:
	( cd sources/Roman/Regular && \
	makeotf -r -f Space-Mono-Regular-source.ttf -o Space-Mono-Regular.ttf && \
	ttfautohint Space-Mono-Regular.ttf Space-Mono-Regular-hinted.ttf && \
	gftools-fix-dsig.py Space-Mono-Regular-hinted.ttf --autofix )

sources/Roman/Bold/Space-Mono-Bold-hinted.ttf:
	( cd sources/Roman/Bold && \
	makeotf -r -f Space-Mono-Bold-source.ttf -o Space-Mono-Bold.ttf && \
	ttfautohint Space-Mono-Bold.ttf Space-Mono-Bold-hinted.ttf && \
	gftools-fix-dsig.py Space-Mono-Bold-hinted.ttf --autofix )

sources/Italics/Regular\ Italic/Space-Mono-Regular-Italic-hinted.ttf:
	( cd sources/Italics/Regular\ Italic && \
	makeotf -r -f Space-Mono-Regular-Italic-source.ttf -o Space-Mono-Regular-Italic.ttf && \
	ttfautohint Space-Mono-Regular-Italic.ttf Space-Mono-Regular-Italic-hinted.ttf && \
	gftools-fix-dsig.py Space-Mono-Regular-Italic-hinted.ttf --autofix )

sources/Italics/Bold\ Italic/Space-Mono-Bold-Italic-hinted.ttf:
	( cd sources/Italics/Bold\ Italic && \
	makeotf -r -f Space-Mono-Bold-Italic-source.ttf -o Space-Mono-Bold-Italic.ttf && \
	ttfautohint Space-Mono-Bold-Italic.ttf Space-Mono-Bold-Italic-hinted.ttf && \
	gftools-fix-dsig.py Space-Mono-Bold-Italic-hinted.ttf --autofix )

