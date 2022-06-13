#!/bin/env bash


cat > additions.def << EOF
Bootstrap: localimage
From: /usr/local/bin/sstpackage-11.1.0-ubuntu-20.04.sif

%post
	apt install graphviz graphviz-dev texlive-full
	python3 -m pip install black mypy makefile2dot
EOF

sudo singularity build /usr/local/bin/additions.sif additions.def
