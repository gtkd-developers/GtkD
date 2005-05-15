WINDOWS BUILD INSTRUCTIONS

Run build.bat:

On windows platforms, type "build" at the command prompt in the dyndui 
project directory to automatically compile dyndui and create dyndui.lib.

- Copy dyndui.lib to your dmd\lib directory

- For your own applications, make sure you provide the -I option during 
  the build process so that the dmd compiler knows where to find the dyndui 
  modules.  Adding that path to sc.ini is a good idea.  That way you don't 
  have to provide the -I option every time. 

DEPENDENCIES:

"dool" import modules must have been set up:

In order to set dool up, you must do one of the following:

- install in an arbitrary location on your hard drive and then add 
  that path do dmd\bin\sci.ini

- add the include option to the dui build script -I with the path to dool

- install dool within the root directory of the dyndui project path.
  ie dyndui\src\dool.


LINUX BUILD INSTRUCTIONS

To be contininued...