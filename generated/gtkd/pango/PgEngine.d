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


module pango.PgEngine;

private import gobject.ObjectG;
public  import gtkc.pangotypes;
private import pango.c.functions;
public  import pango.c.types;


/**
 * #PangoEngine is the base class for all types of language and
 * script specific engines. It has no functionality by itself.
 */
public class PgEngine : ObjectG
{
	/** the main Gtk struct */
	protected PangoEngine* pangoEngine;

	/** Get the main Gtk struct */
	public PangoEngine* getPgEngineStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoEngine;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoEngine;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoEngine* pangoEngine, bool ownedRef = false)
	{
		this.pangoEngine = pangoEngine;
		super(cast(GObject*)pangoEngine, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return pango_engine_get_type();
	}
}
