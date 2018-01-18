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


module pango.PgEngineShape;

public  import gtkc.pangotypes;
private import pango.PgEngine;
private import pango.c.functions;
public  import pango.c.types;


/**
 * The #PangoEngineShape class is implemented by engines that
 * customize the rendering-system dependent part of the
 * Pango pipeline for a particular script or language.
 * A #PangoEngineShape implementation is then specific to both
 * a particular rendering system or group of rendering systems
 * and to a particular script. For instance, there is one
 * #PangoEngineShape implementation to handle shaping Arabic
 * for Fontconfig-based backends.
 */
public class PgEngineShape : PgEngine
{
	/** the main Gtk struct */
	protected PangoEngineShape* pangoEngineShape;

	/** Get the main Gtk struct */
	public PangoEngineShape* getPgEngineShapeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return pangoEngineShape;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)pangoEngineShape;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (PangoEngineShape* pangoEngineShape, bool ownedRef = false)
	{
		this.pangoEngineShape = pangoEngineShape;
		super(cast(PangoEngine*)pangoEngineShape, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return pango_engine_shape_get_type();
	}
}
