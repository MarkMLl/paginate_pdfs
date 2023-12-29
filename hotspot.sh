#!/bin/bash

# set -x

echo 'This facility is unimplemented.'
exit

# It might be possible to do this by doing something like
#
# *	Using LibreOffice and a copy of the TOC,  Insert -> Cross-reference ->
#	Cross-references -> Set Reference  at the bottom of the TOC.
# *	Change every page number on the TOC to be a "Page number (styled)".
# *	Convert to PDF, use  pdftk dum_data_annots  and save the output which
#	defines the hotspot rectangles.
# *	Revert to the normal TOC, generate the overall document and then use
#	pdftk update_info  to overlay the page numbers with hotspots.
#
# The key point appears to be that inter-page references aren't saved as an
# explicitly named link, but as a hotspot which makes the underlying page
# number (in a TOC or index) into a link.
#
# I've not tested that, and I think it would be far more easily done if the TOC
# was prepared using something like Lyx with any errors suppressed, or at least
# with the hotspots/links inserted before conversion to PDF. However this is
# probably not a realistic expectation, and it files in the face of the purpose
# of these scripts which is to intrude as little as possible into the original
# document preparation sequence.

