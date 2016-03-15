#!/usr/bin/env bash
open slideshow.html
fswatch -o presentation.md | while read file; do cleaver presentation.md;done 

