@echo off
:: Check command arguments
if exist %1 goto Make
echo Usage: make <file>.tex
echo Using main.tex by default...
make.bat main.tex
goto End
:: ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- 
:Make
:: backup previous output
cp build/%~n1.pdf build/%~n1.backup.pdf
:: run lualatex, producing PDF file
lualatex -output-directory build -output-format pdf -draftmode %1
:: run biber to resolve citations
biber build/%~n1.bcf
:: build the final PDF file
lualatex -output-directory build -output-format pdf %1
:: ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- 
:: Here is the other possible method based on plain latex:
:: run latex producing .dvi file
:: .dvi file is the DeVice Independent output format of original Knuth's TeX
::latex %1
:: run bibtex on aux file
::bibtex8 -H -c cp1251 %~dpn1.aux
:: resolve all cross-references
::texify %1
:: rebuild .dvi file
::latex %1
:: convert .dvi output file into Postscript file .ps
:: Postscript is a page describing language developed by Adobe
::dvips %~dpn1.dvi
:: build .pdf file using Miktex version of GhostScript
:: GhostScript is an interpreter and rendered for the Postscript language and PDF
::mgs -sDEVICE=pdfwrite -DNOPAUSE -DBATCH -sOutputFile=%~dpn1.pdf %~dpn1.ps
::
:End