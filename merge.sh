#!/bin/bash

# Assemble all constituent PDFs, including a manually-generated index, into a
# single file without bookmarks annotations:

# set -x

OUTPUT=${1:-merged_bundle.pdf}

echo "Merging, output: $OUTPUT"

pdftk \
TOC.pdf \
not_left_blank.pdf \
'Mr M Morgan-Lloyd V (1) xxxxx (2) xxxxx - Cover Letter.pdf' \
'Mr M Morgan-Lloyd V (1) xxxxx & (2) xxxxx - Judgment.pdf' \
# Much more stuff in here
not_left_blank.pdf \
photos.pdf \
cat output $OUTPUT
