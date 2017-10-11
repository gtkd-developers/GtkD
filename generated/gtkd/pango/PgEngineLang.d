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


module pango.PgEngineLang;

public  import gtkc.pangotypes;
private import pango.PgEngine;
private import pango.c.functions;
public  import pango.c.types;


/**
 * The #PangoEngineLang class is implemented by engines that
 * customize the rendering-system independent part of the
 * Pango pipeline for a particular script or language. For
 * instance, a custom #PangoEngineLang could be provided for
 * Thai to implement the dictionary-based word boundary
 * lookups needed for that language.
 */
public class PgEngineLang : PgEngine
{
	/** the main Gtk struct */
	protected PangoEngineLang* pangoEngineLang;

	/** Get the main Gtk struct */
	public PangoEngineLang* getPgEngineLangStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoEngineLang;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoEngineLang;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoEngineLang* pangoEngineLang, bool ownedRef = false)
	{
		this.pangoEngineLang = pangoEngineLang;
		super(cast(PangoEngine*)pangoEngineLang, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return pango_engine_lang_get_type();
	}
}
