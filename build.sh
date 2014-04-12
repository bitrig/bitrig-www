#!/bin/sh
set -u
set -e

mkdir -p out
cp -R static/* out/
(cd pages; find . -name '*.html.m4')| while read page; do
	m4 -DCONTENT="pages/${page}" base.html.m4 > "out/${page%.m4}"
done

./bin/gen-ftplist data/mirrors > out/ftplist
