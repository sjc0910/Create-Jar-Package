@echo off
set f=
set /p f="Filename> "
set author=
set /p author="Author> "
echo Manifest-Version: 1.0 > MANIFEST.MF
echo Main-Class: %f% >> MANIFEST.MF
echo Created-By: %author% >> MANIFEST.MF
echo Please wait while the program is packaging...
@jar -cvfm %f%.jar MANIFEST.MF %f%.class
echo Done!
del MANIFEST.MF
set p=
set /p p="Press enter to continue..."
exit /b
