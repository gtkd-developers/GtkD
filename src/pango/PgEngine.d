/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = pango-Engines.html
 * outPack = pango
 * outFile = PgEngine
 * strct   = PangoEngine
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
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.TypeModule
 * 	- pango.PgEngine
 * structWrap:
 * 	- GTypeModule* -> TypeModule
 * 	- PangoEngine* -> PgEngine
 * module aliases:
 * local aliases:
 * overrides:
 */

module pango.PgEngine;

public  import gtkc.pangotypes;

private import gtkc.pango;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gobject.TypeModule;
private import pango.PgEngine;



private import gobject.ObjectG;

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
public class PgEngine : ObjectG
{
	
	/** the main Gtk struct */
	protected PangoEngine* pangoEngine;
	
	
	public PangoEngine* getPgEngineStruct()
	{
		return pangoEngine;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoEngine;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (PangoEngine* pangoEngine)
	{
		super(cast(GObject*)pangoEngine);
		this.pangoEngine = pangoEngine;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		pangoEngine = cast(PangoEngine*)obj;
	}
	
	/**
	 */
	
	/**
	 * Function to be provided by a module to list the engines that the
	 * module supplies. The function stores a pointer to an array
	 * of PangoEngineInfo structures and the length of that array in
	 * the given location.
	 * Note that script_engine_init() will not be called before this
	 * function.
	 * Params:
	 * engines = location to store a pointer to an array of engines.
	 */
	public static void list(out PangoEngineInfo[] engines)
	{
		// void script_engine_list (PangoEngineInfo **engines,  int *n_engines);
		PangoEngineInfo* outengines = null;
		int nEngines;
		
		script_engine_list(&outengines, &nEngines);
		
		engines = outengines[0 .. nEngines];
	}
	
	/**
	 * Function to be provided by a module to register any
	 * GObject types in the module.
	 */
	public static void init(TypeModule modul)
	{
		// void script_engine_init (GTypeModule *module);
		script_engine_init((modul is null) ? null : modul.getTypeModuleStruct());
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
	 * Params:
	 * id = the ID of an engine as reported by script_engine_list.
	 * Returns: a newly created PangoEngine of the specified type, or NULL if an error occurred. (In normal operation, a module should not return NULL. A NULL return is only acceptable in the case where system misconfiguration or bugs in the driver routine are encountered.)
	 */
	public static PgEngine create(string id)
	{
		// PangoEngine * script_engine_create (const char *id);
		auto p = script_engine_create(Str.toStringz(id));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgEngine)(cast(PangoEngine*) p);
	}
}
