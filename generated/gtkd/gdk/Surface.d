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


module gdk.Surface;

private import cairo.Region;
private import cairo.Surface : CairoSurface = Surface;
private import gdk.CairoContext;
private import gdk.Cursor;
private import gdk.Device;
private import gdk.Display;
private import gdk.Event;
private import gdk.FrameClock;
private import gdk.GLContext;
private import gdk.MonitorGdk;
private import gdk.VulkanContext;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * A #GdkSurface is a (usually) rectangular region on the screen.
 * It’s a low-level object, used to implement high-level objects
 * such as #GtkWindow or #GtkDialog in GTK.
 * 
 * The surfaces you see in practice are either #GdkToplevel or
 * #GdkPopup, and those interfaces provide much of the required
 * API to interact with these surfaces. Other, more specialized
 * surface types exist, but you will rarely interact with them
 * directly.
 */
public class Surface : ObjectG
{
	/** the main Gtk struct */
	protected GdkSurface* gdkSurface;

	/** Get the main Gtk struct */
	public GdkSurface* getSurfaceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkSurface;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkSurface;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkSurface* gdkSurface, bool ownedRef = false)
	{
		this.gdkSurface = gdkSurface;
		super(cast(GObject*)gdkSurface, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_surface_get_type();
	}

	/**
	 * Create a new popup surface.
	 *
	 * The surface will be attached to @parent and can be positioned
	 * relative to it using gdk_popup_present().
	 *
	 * Params:
	 *     parent = the parent surface to attach the surface to
	 *     autohide = whether to hide the surface on outside clicks
	 *
	 * Returns: a new #GdkSurface
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Surface parent, bool autohide)
	{
		auto __p = gdk_surface_new_popup((parent is null) ? null : parent.getSurfaceStruct(), autohide);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_popup");
		}

		this(cast(GdkSurface*) __p, true);
	}

	/**
	 * Creates a new toplevel surface.
	 *
	 * Params:
	 *     display = the display to create the surface on
	 *
	 * Returns: the new #GdkSurface
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Display display)
	{
		auto __p = gdk_surface_new_toplevel((display is null) ? null : display.getDisplayStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_toplevel");
		}

		this(cast(GdkSurface*) __p, true);
	}

	/**
	 * Emits a short beep associated to @surface in the appropriate
	 * display, if supported. Otherwise, emits a short beep on
	 * the display just as gdk_display_beep().
	 */
	public void beep()
	{
		gdk_surface_beep(gdkSurface);
	}

	/**
	 * Creates a new #GdkCairoContext for rendering on @surface.
	 *
	 * Returns: the newly created #GdkCairoContext
	 */
	public CairoContext createCairoContext()
	{
		auto __p = gdk_surface_create_cairo_context(gdkSurface);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CairoContext)(cast(GdkCairoContext*) __p, true);
	}

	/**
	 * Creates a new #GdkGLContext matching the
	 * framebuffer format to the visual of the #GdkSurface. The context
	 * is disconnected from any particular surface or surface.
	 *
	 * If the creation of the #GdkGLContext failed, @error will be set.
	 *
	 * Before using the returned #GdkGLContext, you will need to
	 * call gdk_gl_context_make_current() or gdk_gl_context_realize().
	 *
	 * Returns: the newly created #GdkGLContext, or
	 *     %NULL on error
	 *
	 * Throws: GException on failure.
	 */
	public GLContext createGlContext()
	{
		GError* err = null;

		auto __p = gdk_surface_create_gl_context(gdkSurface, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(GLContext)(cast(GdkGLContext*) __p, true);
	}

	/**
	 * Create a new surface that is as compatible as possible with the
	 * given @surface. For example the new surface will have the same
	 * fallback resolution and font options as @surface. Generally, the new
	 * surface will also use the same backend as @surface, unless that is
	 * not possible for some reason. The type of the returned surface may
	 * be examined with cairo_surface_get_type().
	 *
	 * Initially the surface contents are all 0 (transparent if contents
	 * have transparency, black otherwise.)
	 *
	 * Params:
	 *     content = the content for the new surface
	 *     width = width of the new surface
	 *     height = height of the new surface
	 *
	 * Returns: a pointer to the newly allocated surface. The caller
	 *     owns the surface and should call cairo_surface_destroy() when done
	 *     with it.
	 *
	 *     This function always returns a valid pointer, but it will return a
	 *     pointer to a “nil” surface if @other is already in an error state
	 *     or any other error occurs.
	 */
	public CairoSurface createSimilarSurface(cairo_content_t content, int width, int height)
	{
		auto __p = gdk_surface_create_similar_surface(gdkSurface, content, width, height);

		if(__p is null)
		{
			return null;
		}

		return new CairoSurface(cast(cairo_surface_t*) __p);
	}

	/**
	 * Creates a new #GdkVulkanContext for rendering on @surface.
	 *
	 * If the creation of the #GdkVulkanContext failed, @error will be set.
	 *
	 * Returns: the newly created #GdkVulkanContext, or
	 *     %NULL on error
	 *
	 * Throws: GException on failure.
	 */
	public VulkanContext createVulkanContext()
	{
		GError* err = null;

		auto __p = gdk_surface_create_vulkan_context(gdkSurface, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(VulkanContext)(cast(GdkVulkanContext*) __p, true);
	}

	/**
	 * Destroys the window system resources associated with @surface and decrements @surface's
	 * reference count. The window system resources for all children of @surface are also
	 * destroyed, but the children’s reference counts are not decremented.
	 *
	 * Note that a surface will not be destroyed automatically when its reference count
	 * reaches zero. You must call this function yourself before that happens.
	 */
	public void destroy()
	{
		gdk_surface_destroy(gdkSurface);
	}

	/**
	 * Retrieves a #GdkCursor pointer for the cursor currently set on the
	 * specified #GdkSurface, or %NULL.  If the return value is %NULL then
	 * there is no custom cursor set on the specified surface, and it is
	 * using the cursor for its parent surface.
	 *
	 * Returns: a #GdkCursor, or %NULL. The
	 *     returned object is owned by the #GdkSurface and should not be
	 *     unreferenced directly. Use gdk_surface_set_cursor() to unset the
	 *     cursor of the surface
	 */
	public Cursor getCursor()
	{
		auto __p = gdk_surface_get_cursor(gdkSurface);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Cursor)(cast(GdkCursor*) __p);
	}

	/**
	 * Retrieves a #GdkCursor pointer for the @device currently set on the
	 * specified #GdkSurface, or %NULL.  If the return value is %NULL then
	 * there is no custom cursor set on the specified surface, and it is
	 * using the cursor for its parent surface.
	 *
	 * Params:
	 *     device = a logical, pointer #GdkDevice.
	 *
	 * Returns: a #GdkCursor, or %NULL. The
	 *     returned object is owned by the #GdkSurface and should not be
	 *     unreferenced directly. Use gdk_surface_set_cursor() to unset the
	 *     cursor of the surface
	 */
	public Cursor getDeviceCursor(Device device)
	{
		auto __p = gdk_surface_get_device_cursor(gdkSurface, (device is null) ? null : device.getDeviceStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Cursor)(cast(GdkCursor*) __p);
	}

	/**
	 * Obtains the current device position in doubles and modifier state.
	 * The position is given in coordinates relative to the upper left
	 * corner of @surface.
	 *
	 * Params:
	 *     device = pointer #GdkDevice to query to.
	 *     x = return location for the X coordinate of @device, or %NULL.
	 *     y = return location for the Y coordinate of @device, or %NULL.
	 *     mask = return location for the modifier mask, or %NULL.
	 *
	 * Returns: %TRUE if the device is over the surface
	 */
	public bool getDevicePosition(Device device, out double x, out double y, out GdkModifierType mask)
	{
		return gdk_surface_get_device_position(gdkSurface, (device is null) ? null : device.getDeviceStruct(), &x, &y, &mask) != 0;
	}

	/**
	 * Gets the #GdkDisplay associated with a #GdkSurface.
	 *
	 * Returns: the #GdkDisplay associated with @surface
	 */
	public Display getDisplay()
	{
		auto __p = gdk_surface_get_display(gdkSurface);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * Gets the frame clock for the surface. The frame clock for a surface
	 * never changes unless the surface is reparented to a new toplevel
	 * surface.
	 *
	 * Returns: the frame clock
	 */
	public FrameClock getFrameClock()
	{
		auto __p = gdk_surface_get_frame_clock(gdkSurface);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FrameClock)(cast(GdkFrameClock*) __p);
	}

	/**
	 * Returns the height of the given @surface.
	 *
	 * Surface size is reported in ”application pixels”, not
	 * ”device pixels” (see gdk_surface_get_scale_factor()).
	 *
	 * Returns: The height of @surface
	 */
	public int getHeight()
	{
		return gdk_surface_get_height(gdkSurface);
	}

	/**
	 * Checks whether the surface has been mapped (with gdk_toplevel_present()
	 * or gdk_popup_present()).
	 *
	 * Returns: %TRUE if the surface is mapped
	 */
	public bool getMapped()
	{
		return gdk_surface_get_mapped(gdkSurface) != 0;
	}

	/**
	 * Returns the internal scale factor that maps from surface coordinates
	 * to the actual device pixels. On traditional systems this is 1, but
	 * on very high density outputs this can be a higher value (often 2).
	 *
	 * A higher value means that drawing is automatically scaled up to
	 * a higher resolution, so any code doing drawing will automatically look
	 * nicer. However, if you are supplying pixel-based data the scale
	 * value can be used to determine whether to use a pixel resource
	 * with higher resolution data.
	 *
	 * The scale of a surface may change during runtime.
	 *
	 * Returns: the scale factor
	 */
	public int getScaleFactor()
	{
		return gdk_surface_get_scale_factor(gdkSurface);
	}

	/**
	 * Returns the width of the given @surface.
	 *
	 * Surface size is reported in ”application pixels”, not
	 * ”device pixels” (see gdk_surface_get_scale_factor()).
	 *
	 * Returns: The width of @surface
	 */
	public int getWidth()
	{
		return gdk_surface_get_width(gdkSurface);
	}

	/**
	 * For toplevel surfaces, withdraws them, so they will no longer be
	 * known to the window manager; for all surfaces, unmaps them, so
	 * they won’t be displayed. Normally done automatically as
	 * part of gtk_widget_hide().
	 */
	public void hide()
	{
		gdk_surface_hide(gdkSurface);
	}

	/**
	 * Check to see if a surface is destroyed..
	 *
	 * Returns: %TRUE if the surface is destroyed
	 */
	public bool isDestroyed()
	{
		return gdk_surface_is_destroyed(gdkSurface) != 0;
	}

	/**
	 * Forces a #GdkSurface::render signal emission for @surface
	 * to be scheduled.
	 *
	 * This function is useful for implementations that track invalid
	 * regions on their own.
	 */
	public void queueRender()
	{
		gdk_surface_queue_render(gdkSurface);
	}

	/**
	 * Request a %GDK_FRAME_CLOCK_PHASE_LAYOUT from the surface's
	 * frame clock. See gdk_frame_clock_request_phase().
	 */
	public void requestLayout()
	{
		gdk_surface_request_layout(gdkSurface);
	}

	/**
	 * Sets the default mouse pointer for a #GdkSurface.
	 *
	 * Note that @cursor must be for the same display as @surface.
	 *
	 * Use gdk_cursor_new_from_name() or gdk_cursor_new_from_texture() to
	 * create the cursor. To make the cursor invisible, use %GDK_BLANK_CURSOR.
	 * Passing %NULL for the @cursor argument to gdk_surface_set_cursor() means
	 * that @surface will use the cursor of its parent surface. Most surfaces
	 * should use this default.
	 *
	 * Params:
	 *     cursor = a cursor
	 */
	public void setCursor(Cursor cursor)
	{
		gdk_surface_set_cursor(gdkSurface, (cursor is null) ? null : cursor.getCursorStruct());
	}

	/**
	 * Sets a specific #GdkCursor for a given device when it gets inside @surface.
	 * Use gdk_cursor_new_from_name() or gdk_cursor_new_from_texture() to create
	 * the cursor. To make the cursor invisible, use %GDK_BLANK_CURSOR. Passing
	 * %NULL for the @cursor argument to gdk_surface_set_cursor() means that
	 * @surface will use the cursor of its parent surface. Most surfaces should
	 * use this default.
	 *
	 * Params:
	 *     device = a logical, pointer #GdkDevice
	 *     cursor = a #GdkCursor
	 */
	public void setDeviceCursor(Device device, Cursor cursor)
	{
		gdk_surface_set_device_cursor(gdkSurface, (device is null) ? null : device.getDeviceStruct(), (cursor is null) ? null : cursor.getCursorStruct());
	}

	/**
	 * Apply the region to the surface for the purpose of event
	 * handling. Mouse events which happen while the pointer position
	 * corresponds to an unset bit in the mask will be passed on the
	 * surface below @surface.
	 *
	 * An input region is typically used with RGBA surfaces.
	 * The alpha channel of the surface defines which pixels are
	 * invisible and allows for nicely antialiased borders,
	 * and the input region controls where the surface is
	 * “clickable”.
	 *
	 * Use gdk_display_supports_input_shapes() to find out if
	 * a particular backend supports input regions.
	 *
	 * Params:
	 *     region = region of surface to be reactive
	 */
	public void setInputRegion(Region region)
	{
		gdk_surface_set_input_region(gdkSurface, (region is null) ? null : region.getRegionStruct());
	}

	/**
	 * For optimisation purposes, compositing window managers may
	 * like to not draw obscured regions of surfaces, or turn off blending
	 * during for these regions. With RGB windows with no transparency,
	 * this is just the shape of the window, but with ARGB32 windows, the
	 * compositor does not know what regions of the window are transparent
	 * or not.
	 *
	 * This function only works for toplevel surfaces.
	 *
	 * GTK will update this property automatically if
	 * the @surface background is opaque, as we know where the opaque regions
	 * are. If your surface background is not opaque, please update this
	 * property in your #GtkWidgetClass.css_changed() handler.
	 *
	 * Params:
	 *     region = a region, or %NULL
	 */
	public void setOpaqueRegion(Region region)
	{
		gdk_surface_set_opaque_region(gdkSurface, (region is null) ? null : region.getRegionStruct());
	}

	/**
	 * Translates the given coordinates from being
	 * relative to the @from surface to being relative
	 * to the @to surface.
	 *
	 * Note that this only works if @to and @from are
	 * popups or transient-for to the same toplevel
	 * (directly or indirectly).
	 *
	 * Params:
	 *     to = the target surface
	 *     x = coordinates to translate
	 *     y = coordinates to translate
	 *
	 * Returns: %TRUE if the coordinates were successfully
	 *     translated
	 */
	public bool translateCoordinates(Surface to, double* x, double* y)
	{
		return gdk_surface_translate_coordinates(gdkSurface, (to is null) ? null : to.getSurfaceStruct(), x, y) != 0;
	}

	/**
	 * Emitted when @surface starts being present on the monitor.
	 *
	 * Params:
	 *     monitor = the monitor
	 */
	gulong addOnEnterMonitor(void delegate(MonitorGdk, Surface) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "enter-monitor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when GDK receives an input event for @surface.
	 *
	 * Params:
	 *     event = an input event
	 *
	 * Returns: %TRUE to indicate that the event has been handled
	 */
	gulong addOnEvent(bool delegate(Event, Surface) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "event", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the size of @surface is changed, or when relayout should
	 * be performed.
	 *
	 * Surface size is reported in ”application pixels”, not
	 * ”device pixels” (see gdk_surface_get_scale_factor()).
	 *
	 * Params:
	 *     width = the current width
	 *     height = the current height
	 */
	gulong addOnLayout(void delegate(int, int, Surface) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "layout", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when @surface stops being present on the monitor.
	 *
	 * Params:
	 *     monitor = the monitor
	 */
	gulong addOnLeaveMonitor(void delegate(MonitorGdk, Surface) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "leave-monitor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when part of the surface needs to be redrawn.
	 *
	 * Params:
	 *     region = the region that needs to be redrawn
	 *
	 * Returns: %TRUE to indicate that the signal has been handled
	 */
	gulong addOnRender(bool delegate(Region, Surface) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "render", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
