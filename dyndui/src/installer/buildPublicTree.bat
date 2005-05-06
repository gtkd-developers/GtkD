set dest=\dantTemp

md %dest%
md %dest%\usr
md %dest%\dantfw\contrib
md %dest%\dantfw\examples
md %dest%\dantfw\duiD
md %dest%\dantfw\duiD\src
md %dest%\dantfw\duiD\images
md %dest%\dantfw\doolD
md %dest%\dantfw\doolD\src
md %dest%\dantfw\ledsD
copy setup.exe %dest%	
copy Installer.exe %dest%
copy DUIConfigMan.exe %dest%\dantfw\dantCompile.exe
xcopy /s /i ..\..\..\..\dantfw\GTK %dest%\dantfw\GTK
copy ..\..\dui.lib %dest%\dantfw\
copy ..\..\duigl.lib %dest%\dantfw\
copy ..\..\..\dool\dool.lib %dest%\dantfw\
xcopy /s ..\..\src %dest%\dantfw\duiD\src
xcopy /s ..\..\images %dest%\dantfw\duiD\images
xcopy /s ..\..\..\dool\src %dest%\dantfw\doolD\src

rem comment out the next one for systems that already have GTK+
xcopy /s ..\..\..\..\usr %dest%\usr
