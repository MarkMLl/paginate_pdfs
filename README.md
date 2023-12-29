# paginate_pdfs
Nerd-oriented scripts to paginate a bundle of PDFs of varying provenence and type.

The top-level script is bundle.sh, from that:

 A document prepared by e.g. LibreOffice or Lyx can be saved in .pdf form
 generating thumbnails and the contents metadata (referred to as "bookmarks"
 internally, and distinct from "bookmarks" managed by reader software).
 However, given a collection of a few hundred .pdf pages of various types and
 origins including both pristine documents and some which have been scanned to
 preserve a signature or defacement, it can be difficult to generate a merged
 and paginated collection ("bundle" in some legal contexts) with accurate
 metadata.

 This is my ad-hoc attempt to do so without engaging a service such as
 BundleDocs, prompted in part by seeing a legal opponent make the beginner's
 mistake of not checking the pagination after adjusting his TOC. MarkMLl

Prerequisites are pdftk, LaTeX as installed on most Linux distreaux etc. The
output intentionally has every page (including TOCs at the start of a sub-bundle
etc.) paginated, so that the PDF page (typically shown at the top of the reader)
and the stamped-on page number (at the bottom) are always in step.
