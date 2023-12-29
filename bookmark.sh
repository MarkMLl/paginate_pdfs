#!/bin/bash

# set -x

INPUT=${1:-paginated_merged_bundle.pdf}
INFO=${2:-bookmarks_bundle.info}
OUTPUT=${3:-bundle.pdf}

echo "Bookmarking, input: $INPUT bookmarks: $INFO output: $OUTPUT"

pdftk $INPUT update_info $INFO output $OUTPUT

