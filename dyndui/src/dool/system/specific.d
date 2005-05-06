/*
 * This file is part of dool.
 * 
 * License for redistribution is by either the Artistic License in artistic.txt,
 * or the LGPL
 *
 * contains code from phobos, the D runtime library
 * from www.digitalmars.com by Walter Bright and Christopher E. Miller
 */

 

module dool.system.specific;

version(linux)
{
	import dool.system.linux;
}
version(darwin)
{
	import dool.system.darwin;
}
version(Win32)
{
	//import dool.system.windows;
}