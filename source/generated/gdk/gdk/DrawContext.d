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


module gdk.DrawContext;

private import cairo.Region;
private import gdk.Display;
private import gdk.Surface;
private import gdk.c.functions;
public  import gdk.c.types;
private import gobject.ObjectG;


/**
 * Base class for objects implementing different rendering methods.
 * 
 * `GdkDrawContext` is the base object used by contexts implementing different
 * rendering methods, such as [class@Gdk.CairoContext] or [class@Gdk.GLContext].
 * It provides shared functionality between those contexts.
 * 
 * You will always interact with one of those subclasses.
 * 
 * A `GdkDrawContext` is always associated with a single toplevel surface.
 */
public class DrawContext : ObjectG
{
	/** the main Gtk struct */
	protected GdkDrawContext* gdkDrawContext;

	/** Get the main Gtk struct */
	public GdkDrawContext* getDrawContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkDrawContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkDrawContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkDrawContext* gdkDrawContext, bool ownedRef = false)
	{
		this.gdkDrawContext = gdkDrawContext;
		super(cast(GObject*)gdkDrawContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_draw_context_get_type();
	}

	/**
	 * Indicates that you are beginning the process of redrawing @region
	 * on the @context's surface.
	 *
	 * Calling this function begins a drawing operation using @context on the
	 * surface that @context was created from. The actual requirements and
	 * guarantees for the drawing operation vary for different implementations
	 * of drawing, so a [class@Gdk.CairoContext] and a [class@Gdk.GLContext]
	 * need to be treated differently.
	 *
	 * A call to this function is a requirement for drawing and must be
	 * followed by a call to [method@Gdk.DrawContext.end_frame], which will
	 * complete the drawing operation and ensure the contents become visible
	 * on screen.
	 *
	 * Note that the @region passed to this function is the minimum region that
	 * needs to be drawn and depending on implementation, windowing system and
	 * hardware in use, it might be necessary to draw a larger region. Drawing
	 * implementation must use [method@Gdk.DrawContext.get_frame_region] to
	 * query the region that must be drawn.
	 *
	 * When using GTK, the widget system automatically places calls to
	 * gdk_draw_context_begin_frame() and gdk_draw_context_end_frame() via the
	 * use of [class@Gsk.Renderer]s, so application code does not need to call
	 * these functions explicitly.
	 *
	 * Params:
	 *     region = minimum region that should be drawn
	 */
	public void beginFrame(Region region)
	{
		gdk_draw_context_begin_frame(gdkDrawContext, (region is null) ? null : region.getRegionStruct());
	}

	/**
	 * Ends a drawing operation started with gdk_draw_context_begin_frame().
	 *
	 * This makes the drawing available on screen.
	 * See [method@Gdk.DrawContext.begin_frame] for more details about drawing.
	 *
	 * When using a [class@Gdk.GLContext], this function may call `glFlush()`
	 * implicitly before returning; it is not recommended to call `glFlush()`
	 * explicitly before calling this function.
	 */
	public void endFrame()
	{
		gdk_draw_context_end_frame(gdkDrawContext);
	}

	/**
	 * Retrieves the `GdkDisplay` the @context is created for
	 *
	 * Returns: the `GdkDisplay`
	 */
	public Display getDisplay()
	{
		auto __p = gdk_draw_context_get_display(gdkDrawContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * Retrieves the region that is currently being repainted.
	 *
	 * After a call to [method@Gdk.DrawContext.begin_frame] this function will
	 * return a union of the region passed to that function and the area of the
	 * surface that the @context determined needs to be repainted.
	 *
	 * If @context is not in between calls to [method@Gdk.DrawContext.begin_frame]
	 * and [method@Gdk.DrawContext.end_frame], %NULL will be returned.
	 *
	 * Returns: a Cairo region
	 */
	public Region getFrameRegion()
	{
		auto __p = gdk_draw_context_get_frame_region(gdkDrawContext);

		if(__p is null)
		{
			return null;
		}

		return new Region(cast(cairo_region_t*) __p);
	}

	/**
	 * Retrieves the surface that @context is bound to.
	 *
	 * Returns: a `GdkSurface`
	 */
	public Surface getSurface()
	{
		auto __p = gdk_draw_context_get_surface(gdkDrawContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Surface)(cast(GdkSurface*) __p);
	}

	/**
	 * Returns %TRUE if @context is in the process of drawing to its surface.
	 *
	 * This is the case between calls to [method@Gdk.DrawContext.begin_frame]
	 * and [method@Gdk.DrawContext.end_frame]. In this situation, drawing commands
	 * may be effecting the contents of the @context's surface.
	 *
	 * Returns: %TRUE if the context is between [method@Gdk.DrawContext.begin_frame]
	 *     and [method@Gdk.DrawContext.end_frame] calls.
	 */
	public bool isInFrame()
	{
		return gdk_draw_context_is_in_frame(gdkDrawContext) != 0;
	}
}
