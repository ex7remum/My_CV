#!/bin/bash
cd /usr/src/cv
latexmk -shell-escape -pdf -outdir=/usr/src/out main.tex
