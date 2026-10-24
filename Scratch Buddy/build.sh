#!/bin/sh
# Wraps scratch.html (the Claude artifact source) into a standalone page: index.html (served by GitHub Pages)
cd "$(dirname "$0")"
{ printf '<!doctype html>\n<html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover"><meta name="apple-mobile-web-app-capable" content="yes"><meta name="theme-color" content="#5a2ca0"><style>body{margin:0}[hidden]{display:none!important}</style></head><body>\n'; cat scratch.html; printf '\n</body></html>\n'; } > index.html
echo "built index.html"
