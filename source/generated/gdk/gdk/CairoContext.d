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


module gdk.CairoContext;

private import cairo.Context;
private import gdk.DrawContext;
private import gdk.c.functions;
public  import gdk.c.types;


/**
 * `GdkCairoContext` is an object representing the platform-specific
 * draw context.
 * 
 * `GdkCairoContext`s are created for a surface using
 * [method@Gdk.Surface.create_cairo_context], and the context
 * can then be used to draw on that surface.
 */
public class CairoContext : DrawContext
{
	/** the main Gtk struct */
	protected GdkCairoContext* gdkCairoContext;

	/** Get the main Gtk struct */
	public GdkCairoContext* getCairoContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkCairoContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkCairoContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkCairoContext* gdkCairoContext, bool ownedRef = false)
	{
		this.gdkCairoContext = gdkCairoContext;
		super(cast(GdkDrawContext*)gdkCairoContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_cairo_context_get_type();
	}

	/**
	 * Retrieves a Cairo context to be used to draw on the `GdkSurface`
	 * of @context.
	 *
	 * A call to [method@Gdk.DrawContext.begin_frame] with this
	 * @context must have been done or this function will return %NULL.
	 *
	 * The returned context is guaranteed to be valid until
	 * [method@Gdk.DrawContext.end_frame] is called.
	 *
	 * Returns: a Cairo context
	 *     to draw on `GdkSurface
	 */
	public Context cairoCreate()
	{
		auto __p = gdk_cairo_context_cairo_create(gdkCairoContext);

		if(__p is null)
		{
			return null;
		}

		return new Context(cast(cairo_t*) __p);
	}
}
