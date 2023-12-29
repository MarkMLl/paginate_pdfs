#!/bin/bash

# A document prepared by e.g. LibreOffice or Lyx can be saved in .pdf form
# generating thumbnails and the contents metadata (referred to as "bookmarks"
# internally, and distinct from "bookmarks" managed by reader software).
# However, given a collection of a few hundred .pdf pages of various types and
# origins including both pristine documents and some which have been scanned to
# preserve a signature or defacement, it can be difficult to generate a merged
# and paginated collection ("bundle" in some legal contexts) with accurate
# metadata.
#
# This is my ad-hoc attempt to do so without engaging a service such as
# BundleDocs, prompted in part by seeing a legal opponent make the beginner's
# mistake of not checking the pagination after adjusting his TOC. MarkMLl

# Set default name for working and final files. If this is given on the
# command line it should not include the .pdf suffix.

# set -x

BASENAME=${1:-bundle}

echo "Generating bundle, basename: $BASENAME"

# merge.sh is built manually with a list of .pdf files to be concatenated.
# Assume that the first file is a TOC, which initially contains the section
# names and dates etc. without page numbers.

./merge.sh merged_$BASENAME.pdf

# After the first pagination run, the TOC will have to be manually edited to
# append the page numbers. There is always a risk that this operation will
# increase the number of lines hence potentially the number of pages occupied
# by the TOC, which will mean that pagination has to be re-run and the result
# checked carefully in case the content of the TOC needs further adjustment.

./paginate.sh merged_$BASENAME.pdf merged_paginated_$BASENAME.pdf

# Working from the TOC, generate a .info file manually describing the contents
# list which will typically be presented in its own pane.
#
# In principle, the contents metadata could be automatically- or at least
# semi-automatically- extracted from the TOC document. However this would
# probably be beyond simple shell scripting, particularly if section
# headers and section content names were to appear at different levels..

./bookmark.sh merged_paginated_$BASENAME.pdf bookmarks_$BASENAME.info $BASENAME.pdf

# I have not seen anybody state a requirement for "hotspot" links in the TOC,
# i.e. as distinct from the contents pane. While applying them retroactively
# might be possible I think it would turn out to be a great deal of work: the
# script below is a placeholder for notes.

if [ -e hotspots_$BASENAME.info ]; then
  ./hotspot.sh $BASENAME.pdf hotspots_$BASENAME.info temp_$BASENAME.pdf
  mv temp_$BASENAME.pdf $BASENAME.pdf
fi

