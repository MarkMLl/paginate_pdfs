#!/bin/bash

# set -x

INPUT=${1:-merged_bundle.pdf}
OUTPUT=${2:-paginated_$INPUT}

echo "Paginating, input: $INPUT output: $OUTPUT"

PAGECOUNT=`pdftk $INPUT dump_data | grep NumberOfPages | cut -d : -f 2`

# Note the \newcommand and \fancyfoot lines below which define the size and
# content of the page numbers.

cat <<EOF > pageNumbers.tex
\documentclass[12pt,a4paper]{article}
\usepackage{fancyhdr}
\usepackage{multido}
\usepackage[hmargin=.8cm,vmargin=1.5cm,nohead,nofoot,twoside]{geometry}
\newcommand{\cour}{\fontfamily{pcr}\fontseries{b}\fontsize{18}{22}\selectfont}
\begin{document}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\setlength{\footskip}{20pt}
\fancyhf{} % to clear the header and the footer simultaneously
\fancyfoot[OR,EL]{\cour Page \thepage\ of $PAGECOUNT}
\multido{}{$PAGECOUNT}{\vphantom{x}\newpage}
\end{document}
EOF

pdflatex pageNumbers.tex > /dev/null
pdftk $INPUT multistamp pageNumbers.pdf output $OUTPUT 

