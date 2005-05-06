/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dglib.Plugin;

private import def.Types;
private import lib.gmodule;
	
private import dool.String;

/**
 * Provide a portable way to dynamically load object files (commonly known as 'plug-ins').
 * The current implementation supports all systems that provide an implementation of dlopen()
 * (e.g. Linux/Sun), as well as HP-UX via its shl_load() mechanism, and Windows platforms via DLLs.
 */
public:
class Plugin
{	
	protected: GModule * gModule;

	this(GModule * gModule)
	{
		this.gModule = gModule;
	}

	public:

	/* return TRUE if dynamic module loading is supported */
	static bit supported()
	{
		return g_module_supported() == 0 ? false : true;
	}
	
	/* open a module `file_name' and return handle, which is NULL on error */
	this(String fileName, PluginFlags flags)
	{
		this(g_module_open(fileName.toStringz(), flags));
	}
	
	/* close a previously opened module, returns TRUE on success */
	bit close()
	{
		return g_module_close(gModule) == 0 ? false : true;
	}
	
	/* make a module resident so g_module_close on it will be ignored */
	void makeResident()
	{
		g_module_make_resident(gModule);
	}
	
	/* query the last module error as a string */
	static String error()
	{
		return String.newz(g_module_error());
	}
	
	/* retrieve a symbol pointer from `module', returns TRUE on success */
	bit symbol(String symbolName, void** symbol)
	{
		return g_module_symbol(gModule, symbolName.toStringz(), symbol) == 0 ? false : true;
	}
	
	/* retrieve the file name from an existing module */
	String name()
	{
		return String.newz(g_module_name(gModule));
	}

	/* Build the actual file name containing a module. `directory' is the
	 * directory where the module file is supposed to be, or NULL or empty
	 * in which case it should either be in the current directory or, on
	 * some operating systems, in some standard place, for instance on the
	 * PATH. Hence, to be absoultely sure to get the correct module,
	 * always pass in a directory. The file name consists of the directory,
	 * if supplied, and `module_name' suitably decorated according to
	 * the operating system's conventions (for instance lib*.so or *.dll).
	 *
	 * No checks are made that the file exists, or is of correct type.
	 */
	String buildPath(String directory, String moduleName)
	{
		return String.newz(g_module_build_path(directory.toStringz(), moduleName.toStringz()));
	}

}
