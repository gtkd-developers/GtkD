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


module gsk.CairoNode;

private import cairo.Context;
private import cairo.Surface;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import graphene.Rect;
private import gsk.RenderNode;
private import gsk.c.functions;
public  import gsk.c.types;


/**
 * A render node for a Cairo surface.
 */
public class CairoNode : RenderNode
{
	/** the main Gtk struct */
	protected GskCairoNode* gskCairoNode;

	/** Get the main Gtk struct */
	public GskCairoNode* getCairoNodeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gskCairoNode;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gskCairoNode;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GskCairoNode* gskCairoNode, bool ownedRef = false)
	{
		this.gskCairoNode = gskCairoNode;
		super(cast(GskRenderNode*)gskCairoNode, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gsk_cairo_node_get_type();
	}

	/**
	 * Creates a `GskRenderNode` that will render a cairo surface
	 * into the area given by @bounds.
	 *
	 * You can draw to the cairo surface using [method@Gsk.CairoNode.get_draw_context].
	 *
	 * Params:
	 *     bounds = the rectangle to render to
	 *
	 * Returns: A new `GskRenderNode`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Rect bounds)
	{
		auto __p = gsk_cairo_node_new((bounds is null) ? null : bounds.getRectStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GskCairoNode*) __p);
	}

	/**
	 * Creates a Cairo context for drawing using the surface associated
	 * to the render node.
	 *
	 * If no surface exists yet, a surface will be created optimized for
	 * rendering to @renderer.
	 *
	 * Returns: a Cairo context used for drawing; use
	 *     cairo_destroy() when done drawing
	 */
	public Context getDrawContext()
	{
		auto __p = gsk_cairo_node_get_draw_context(cast(GskRenderNode*)gskCairoNode);

		if(__p is null)
		{
			return null;
		}

		return new Context(cast(cairo_t*) __p);
	}

	/**
	 * Retrieves the Cairo surface used by the render node.
	 *
	 * Returns: a Cairo surface
	 */
	public Surface getSurface()
	{
		auto __p = gsk_cairo_node_get_surface(cast(GskRenderNode*)gskCairoNode);

		if(__p is null)
		{
			return null;
		}

		return new Surface(cast(cairo_surface_t*) __p);
	}
}
