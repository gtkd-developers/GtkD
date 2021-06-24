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


module gsk.CairoRenderer;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gsk.Renderer;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A GSK renderer that is using cairo.
 * 
 * Since it is using cairo, this renderer cannot support
 * 3D transformations.
 */
public class CairoRenderer : Renderer
{
	/** the main Gtk struct */
	protected GskCairoRenderer* gskCairoRenderer;

	/** Get the main Gtk struct */
	public GskCairoRenderer* getCairoRendererStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskCairoRenderer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskCairoRenderer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskCairoRenderer* gskCairoRenderer, bool ownedRef = false)
	{
		this.gskCairoRenderer = gskCairoRenderer;
		super(cast(GskRenderer*)gskCairoRenderer, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_cairo_renderer_get_type();
	}

	/**
	 * Creates a new Cairo renderer.
	 *
	 * The Cairo renderer is the fallback renderer drawing in ways similar
	 * to how GTK 3 drew its content. Its primary use is as comparison tool.
	 *
	 * The Cairo renderer is incomplete. It cannot render 3D transformed
	 * content and will instead render an error marker. Its usage should be
	 * avoided.
	 *
	 * Returns: a new Cairo renderer.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gsk_cairo_renderer_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskCairoRenderer*) __p, true);
	}
}
