@echo off
echo Performing cleanup...
echo Temporary files will be removed.
echo Are you sure? [y/n]
choice /n /c:yn
if ERRORLEVEL == 2 goto End
echo Removing lualatex temporary files...
del /Q .\*.aux .\*.bcf .\*.log .\*.out .\*.tdo .\*.toc .\*.xml .\*.nav .\*.snm .\*.vrb
echo Removing biber files...
del /Q .\*.bbl .\*.blg 
echo Removing *-eps-converted-to.pdf files...
del /Q .\pictures\*-eps-converted-to.pdf .\plots\eps\*-eps-converted-to.pdf
echo Done!
:End