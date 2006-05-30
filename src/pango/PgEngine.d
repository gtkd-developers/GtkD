/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = pango
 * outFile = PgEngine
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = PgEngine
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- script_engine_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * local aliases:
 */

module pango.PgEngine;

private import pango.typedefs;

private import lib.pango;

private import glib.Str;

/**
 * Description
 * Pango utilizes a module architecture in which the language-specific
 * and render-system-specific components are provided by loadable
 * modules. Each loadable module supplies one or more
 * engines. Each engine
 * has an associated engine type and
 * render type. These two types are represented by
 * strings.
 * Each dynamically-loaded module exports several functions which provide
 * the public API. These functions are script_engine_list(),
 * script_engine_init() and script_engine_exit, and
 * script_engine_create(). The latter three functions are used when
 * creating engines from the module at run time, while the first
 * function is used when building a catalog of all available modules.
 */
public class PgEngine
{
	
	/**
	 */
	
	
	
	
	
	
	/**
	 * Function to be provided by a module to list the engines that the
	 * module supplies. The function stores a pointer to an array
	 * of PangoEngineInfo structures and the length of that array in
	 * the given location.
	 * Note that script_engine_init() will not be called before this
	 * function.
	 * engines:
	 *  location to store a pointer to an array of engines.
	 * n_engines:
	 *  location to store the number of elements in engines.
	 */
	public static void list(PangoEngineInfo** engines, int* nEngines)
	{
		// void script_engine_list (PangoEngineInfo **engines,  int *n_engines);
		script_engine_list(engines, nEngines);
	}
	
	/**
	 * Function to be provided by a module to register any
	 * GObject types in the module.
	 * module:
	 *  a GTypeModule structure used to associate any
	 *  GObject types created in this module with the module.
	 */
	public static void init(GTypeModule* modul)
	{
		// void script_engine_init (GTypeModule *module);
		script_engine_init(modul);
	}
	
	/**
	 * Function to be provided by the module that is called
	 * when the module is unloading. Frequently does nothing.
	 */
	public static void exit()
	{
		// void script_engine_exit (void);
		script_engine_exit();
	}
	
	/**
	 * Function to be provided by the module to create an instance
	 * of one of the engines implemented by the module.
	 * id:
	 *  the ID of an engine as reported by script_engine_list.
	 * Returns:
	 *  a newly created PangoEngine of the specified
	 *  type, or NULL if an error occurred. (In normal operation,
	 *  a module should not return NULL. A NULL return is only
	 *  acceptable in the case where system misconfiguration or
	 *  bugs in the driver routine are encountered.)
	 */
	public static PangoEngine* create(char[] id)
	{
		// PangoEngine* script_engine_create (const char *id);
		return script_engine_create(Str.toStringz(id));
	}
}
