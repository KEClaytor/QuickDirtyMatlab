#!/bin/csh

# to compile the report into a pdf document on 
latex quickmatlab.tex

# convert the output report.dvi to report.ps (postscript)
dvips -o quickmatlab.ps quickmatlab.dvi

# convert postscript report.ps to report.pdf (portable document format)
ps2pdf quickmatlab.ps

