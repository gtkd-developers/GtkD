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
public  import gtkc.pangotypes;
private import pango.PgEngine;
private import pango.PgLanguage;
private import pango.c.functions;
public  import pango.c.types;


/** */
public class PgMap
{
	/** the main Gtk struct */
	protected PangoMap* pangoMap;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public PangoMap* getPgMapStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
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
	public this (PangoMap* pangoMap, bool ownedRef = false)
	{
		this.pangoMap = pangoMap;
		this.ownedRef = ownedRef;
	}


	/**
	 * Do not use.  Does not do anything.
	 *
	 * Params:
	 *     script = a #PangoScript
	 *
	 * Returns: %NULL.
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
	 * Do not use.  Does not do anything.
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
	 * Do not use.  Does not do anything.
	 *
	 * Params:
	 *     language = the language tag for which to find the map
	 *     engineTypeId = the engine type for the map to find
	 *     renderTypeId = the render type for the map to find
	 *
	 * Returns: %NULL.
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
	 * Do not use.  Does not do anything.
	 *
	 * Params:
	 *     module_ = a #PangoIncludedModule
	 */
	public static void moduleRegister(PangoIncludedModule* module_)
	{
		pango_module_register(module_);
	}
}
