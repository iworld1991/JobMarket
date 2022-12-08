#!/bin/bash
latexmk
touch README.md; chmod u+w README.md ; pandoc --wrap=none --standalone Recletters.tex --to gfm | fgrep -v .title > README.md ; chmod u-w README.md
latexmk -c
