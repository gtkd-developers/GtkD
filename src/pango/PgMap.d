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


module pango.PgMap;

private import glib.ListSG;
private import gobject.ObjectG;
private import gtkc.pango;
public  import gtkc.pangotypes;
private import pango.PgEngine;
private import pango.PgLanguage;


/**
 * A #PangoMap structure can be used to determine the engine to
 * use for each character.
 */
public class PgMap
{
	/** the main Gtk struct */
	protected PangoMap* pangoMap;

	/** Get the main Gtk struct */
	public PangoMap* getPgMapStruct()
	{
		return pangoMap;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)pangoMap;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoMap* pangoMap)
	{
		this.pangoMap = pangoMap;
	}

	/**
	 */

	/**
	 * Returns the best engine listed in the map for a given script
	 *
	 * Params:
	 *     script = a #PangoScript
	 *
	 * Return: the best engine, if one is listed for the script,
	 *     or %NULL. The lookup may cause the engine to be loaded;
	 *     once an engine is loaded, it won't be unloaded. If multiple
	 *     engines are exact for the script, the choice of which is
	 *     returned is arbitrary.
	 */
	public PgEngine getEngine(PangoScript script)
	{
		auto p = pango_map_get_engine(pangoMap, script);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgEngine)(cast(PangoEngine*) p);
	}

	/**
	 * Finds engines in the map that handle the given script. The returned
	 * lists should be freed with g_slist_free, but the engines in the
	 * lists are owned by GLib and will be kept around permanently, so
	 * they should not be unref'ed.
	 *
	 * Params:
	 *     script = a #PangoScript
	 *     exactEngines = location to store list of engines that exactly
	 *         handle this script.
	 *     fallbackEngines = location to store list of engines that approximately
	 *         handle this script.
	 *
	 * Since: 1.4
	 */
	public void getEngines(PangoScript script, out ListSG exactEngines, out ListSG fallbackEngines)
	{
		GSList* outexactEngines = null;
		GSList* outfallbackEngines = null;
		
		pango_map_get_engines(pangoMap, script, &outexactEngines, &outfallbackEngines);
		
		exactEngines = new ListSG(outexactEngines);
		fallbackEngines = new ListSG(outfallbackEngines);
	}

	/**
	 * Locate a #PangoMap for a particular engine type and render
	 * type. The resulting map can be used to determine the engine
	 * for each character.
	 *
	 * Params:
	 *     language = the language tag for which to find the map
	 *     engineTypeId = the engine type for the map to find
	 *     renderTypeId = the render type for the map to find
	 *
	 * Return: the suitable #PangoMap.
	 */
	public static PgMap findMap(PgLanguage language, uint engineTypeId, uint renderTypeId)
	{
		auto p = pango_find_map((language is null) ? null : language.getPgLanguageStruct(), engineTypeId, renderTypeId);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgMap)(cast(PangoMap*) p);
	}

	/**
	 * Registers a statically linked module with Pango. The
	 * #PangoIncludedModule structure that is passed in contains the
	 * functions that would otherwise be loaded from a dynamically loaded
	 * module.
	 *
	 * Params:
	 *     modul = a #PangoIncludedModule
	 */
	public static void moduleRegister(PangoIncludedModule* modul)
	{
		pango_module_register(modul);
	}
}
