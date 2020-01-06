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
private import gdk.CairoContext;
private import gdk.Cursor;
private import gdk.Device;
private import gdk.Display;
private import gdk.Event;
private import gdk.FrameClock;
private import gdk.GLContext;
private import gdk.MonitorG;
private import gdk.Texture;
private import gdk.VulkanContext;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * A #GdkSurface is a (usually) rectangular region on the screen.
 * It’s a low-level object, used to implement high-level objects such as
 * #GtkWindow on the GTK level.
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
	 * The surface will be attached to @parent and can
	 * be positioned relative to it using
	 * gdk_surface_move_to_rect().
	 *
	 * Params:
	 *     display = the display to create the surface on
	 *     parent = the parent surface to attach the surface to
	 *     autohide = whether to hide the surface on outside clicks
	 *
	 * Returns: a new #GdkSurface
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Display display, Surface parent, bool autohide)
	{
		auto __p = gdk_surface_new_popup((display is null) ? null : display.getDisplayStruct(), (parent is null) ? null : parent.getSurfaceStruct(), autohide);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_popup");
		}

		this(cast(GdkSurface*) __p, true);
	}

	/**
	 * Creates a new temporary surface.
	 * The surface will bypass surface management.
	 *
	 * Params:
	 *     display = the display to create the surface on
	 *     position = position of the surface on screen
	 *
	 * Returns: the new #GdkSurface
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Display display, GdkRectangle* position)
	{
		auto __p = gdk_surface_new_temp((display is null) ? null : display.getDisplayStruct(), position);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_temp");
		}

		this(cast(GdkSurface*) __p, true);
	}

	/**
	 * Creates a new toplevel surface.
	 *
	 * Params:
	 *     display = the display to create the surface on
	 *     width = width of new surface
	 *     height = height of new surface
	 *
	 * Returns: the new #GdkSurface
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Display display, int width, int height)
	{
		auto __p = gdk_surface_new_toplevel((display is null) ? null : display.getDisplayStruct(), width, height);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_toplevel");
		}

		this(cast(GdkSurface*) __p, true);
	}

	/**
	 * Constrains a desired width and height according to a
	 * set of geometry hints (such as minimum and maximum size).
	 *
	 * Params:
	 *     geometry = a #GdkGeometry structure
	 *     flags = a mask indicating what portions of @geometry are set
	 *     width = desired width of surface
	 *     height = desired height of the surface
	 *     newWidth = location to store resulting width
	 *     newHeight = location to store resulting height
	 */
	public static void constrainSize(GdkGeometry* geometry, GdkSurfaceHints flags, int width, int height, out int newWidth, out int newHeight)
	{
		gdk_surface_constrain_size(geometry, flags, width, height, &newWidth, &newHeight);
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
	 * Begins a surface move operation (for a toplevel surface).
	 *
	 * This function assumes that the drag is controlled by the
	 * client pointer device, use gdk_surface_begin_move_drag_for_device()
	 * to begin a drag with a different device.
	 *
	 * Params:
	 *     button = the button being used to drag, or 0 for a keyboard-initiated drag
	 *     x = surface X coordinate of mouse click that began the drag
	 *     y = surface Y coordinate of mouse click that began the drag
	 *     timestamp = timestamp of mouse click that began the drag
	 */
	public void beginMoveDrag(int button, int x, int y, uint timestamp)
	{
		gdk_surface_begin_move_drag(gdkSurface, button, x, y, timestamp);
	}

	/**
	 * Begins a surface move operation (for a toplevel surface).
	 *
	 * Params:
	 *     device = the device used for the operation
	 *     button = the button being used to drag, or 0 for a keyboard-initiated drag
	 *     x = surface X coordinate of mouse click that began the drag
	 *     y = surface Y coordinate of mouse click that began the drag
	 *     timestamp = timestamp of mouse click that began the drag
	 */
	public void beginMoveDragForDevice(Device device, int button, int x, int y, uint timestamp)
	{
		gdk_surface_begin_move_drag_for_device(gdkSurface, (device is null) ? null : device.getDeviceStruct(), button, x, y, timestamp);
	}

	/**
	 * Begins a surface resize operation (for a toplevel surface).
	 *
	 * This function assumes that the drag is controlled by the
	 * client pointer device, use gdk_surface_begin_resize_drag_for_device()
	 * to begin a drag with a different device.
	 *
	 * Params:
	 *     edge = the edge or corner from which the drag is started
	 *     button = the button being used to drag, or 0 for a keyboard-initiated drag
	 *     x = surface X coordinate of mouse click that began the drag
	 *     y = surface Y coordinate of mouse click that began the drag
	 *     timestamp = timestamp of mouse click that began the drag (use gdk_event_get_time())
	 */
	public void beginResizeDrag(GdkSurfaceEdge edge, int button, int x, int y, uint timestamp)
	{
		gdk_surface_begin_resize_drag(gdkSurface, edge, button, x, y, timestamp);
	}

	/**
	 * Begins a surface resize operation (for a toplevel surface).
	 * You might use this function to implement a “window resize grip,”
	 *
	 * Params:
	 *     edge = the edge or corner from which the drag is started
	 *     device = the device used for the operation
	 *     button = the button being used to drag, or 0 for a keyboard-initiated drag
	 *     x = surface X coordinate of mouse click that began the drag
	 *     y = surface Y coordinate of mouse click that began the drag
	 *     timestamp = timestamp of mouse click that began the drag (use gdk_event_get_time())
	 */
	public void beginResizeDragForDevice(GdkSurfaceEdge edge, Device device, int button, int x, int y, uint timestamp)
	{
		gdk_surface_begin_resize_drag_for_device(gdkSurface, edge, (device is null) ? null : device.getDeviceStruct(), button, x, y, timestamp);
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
	 * Sets keyboard focus to @surface. In most cases, gtk_window_present_with_time()
	 * should be used on a #GtkWindow, rather than calling this function.
	 *
	 * Params:
	 *     timestamp = timestamp of the event triggering the surface focus
	 */
	public void focus(uint timestamp)
	{
		gdk_surface_focus(gdkSurface, timestamp);
	}

	/**
	 * Temporarily freezes a surface such that it won’t receive expose
	 * events.  The surface will begin receiving expose events again when
	 * gdk_surface_thaw_updates() is called. If gdk_surface_freeze_updates()
	 * has been called more than once, gdk_surface_thaw_updates() must be called
	 * an equal number of times to begin processing exposes.
	 */
	public void freezeUpdates()
	{
		gdk_surface_freeze_updates(gdkSurface);
	}

	/**
	 * Moves the surface into fullscreen mode. This means the
	 * surface covers the entire screen and is above any panels
	 * or task bars.
	 *
	 * If the surface was already fullscreen, then this function does nothing.
	 *
	 * On X11, asks the window manager to put @surface in a fullscreen
	 * state, if the window manager supports this operation. Not all
	 * window managers support this, and some deliberately ignore it or
	 * don’t have a concept of “fullscreen”; so you can’t rely on the
	 * fullscreenification actually happening. But it will happen with
	 * most standard window managers, and GDK makes a best effort to get
	 * it to happen.
	 */
	public void fullscreen()
	{
		gdk_surface_fullscreen(gdkSurface);
	}

	/**
	 * Moves the surface into fullscreen mode on the given monitor. This means
	 * the surface covers the entire screen and is above any panels or task bars.
	 *
	 * If the surface was already fullscreen, then this function does nothing.
	 *
	 * Params:
	 *     monitor = Which monitor to display fullscreen on.
	 */
	public void fullscreenOnMonitor(MonitorG monitor)
	{
		gdk_surface_fullscreen_on_monitor(gdkSurface, (monitor is null) ? null : monitor.getMonitorGStruct());
	}

	/**
	 * Determines whether or not the desktop environment shuld be hinted that
	 * the surface does not want to receive input focus.
	 *
	 * Returns: whether or not the surface should receive input focus.
	 */
	public bool getAcceptFocus()
	{
		return gdk_surface_get_accept_focus(gdkSurface) != 0;
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
	 * Returns the decorations set on the GdkSurface with
	 * gdk_surface_set_decorations().
	 *
	 * Params:
	 *     decorations = The surface decorations will be written here
	 *
	 * Returns: %TRUE if the surface has decorations set, %FALSE otherwise.
	 */
	public bool getDecorations(out GdkWMDecoration decorations)
	{
		return gdk_surface_get_decorations(gdkSurface, &decorations) != 0;
	}

	/**
	 * Retrieves a #GdkCursor pointer for the @device currently set on the
	 * specified #GdkSurface, or %NULL.  If the return value is %NULL then
	 * there is no custom cursor set on the specified surface, and it is
	 * using the cursor for its parent surface.
	 *
	 * Params:
	 *     device = a master, pointer #GdkDevice.
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
	 */
	public void getDevicePosition(Device device, out double x, out double y, out GdkModifierType mask)
	{
		gdk_surface_get_device_position(gdkSurface, (device is null) ? null : device.getDeviceStruct(), &x, &y, &mask);
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
	 * Determines whether or not the desktop environment should be hinted that the
	 * surface does not want to receive input focus when it is mapped.
	 *
	 * Returns: whether or not the surface wants to receive input focus when
	 *     it is mapped.
	 */
	public bool getFocusOnMap()
	{
		return gdk_surface_get_focus_on_map(gdkSurface) != 0;
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
	 * Obtains the #GdkFullscreenMode of the @surface.
	 *
	 * Returns: The #GdkFullscreenMode applied to the surface when fullscreen.
	 */
	public GdkFullscreenMode getFullscreenMode()
	{
		return gdk_surface_get_fullscreen_mode(gdkSurface);
	}

	/**
	 * Returns the height of the given @surface.
	 *
	 * On the X11 platform the returned size is the size reported in the
	 * most-recently-processed configure event, rather than the current
	 * size on the X server.
	 *
	 * Returns: The height of @surface
	 */
	public int getHeight()
	{
		return gdk_surface_get_height(gdkSurface);
	}

	/**
	 * Determines whether or not the window manager is hinted that @surface
	 * has modal behaviour.
	 *
	 * Returns: whether or not the surface has the modal hint set.
	 */
	public bool getModalHint()
	{
		return gdk_surface_get_modal_hint(gdkSurface) != 0;
	}

	/**
	 * Returns the parent surface of a surface, or
	 * %NULL if the surface does not have a parent.
	 *
	 * Only popup surfaces have parents.
	 *
	 * Returns: the parent of
	 *     @surface, or %NULL
	 */
	public Surface getParent()
	{
		auto __p = gdk_surface_get_parent(gdkSurface);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Surface)(cast(GdkSurface*) __p);
	}

	/**
	 * Obtains the position of the surface relative to its parent.
	 *
	 * Params:
	 *     x = X coordinate of surface
	 *     y = Y coordinate of surface
	 */
	public void getPosition(out int x, out int y)
	{
		gdk_surface_get_position(gdkSurface, &x, &y);
	}

	/**
	 * Returns the internal scale factor that maps from surface coordiantes
	 * to the actual device pixels. On traditional systems this is 1, but
	 * on very high density outputs this can be a higher value (often 2).
	 *
	 * A higher value means that drawing is automatically scaled up to
	 * a higher resolution, so any code doing drawing will automatically look
	 * nicer. However, if you are supplying pixel-based data the scale
	 * value can be used to determine whether to use a pixel resource
	 * with higher resolution data.
	 *
	 * The scale of a surface may change during runtime, if this happens
	 * a configure event will be sent to the toplevel surface.
	 *
	 * Returns: the scale factor
	 */
	public int getScaleFactor()
	{
		return gdk_surface_get_scale_factor(gdkSurface);
	}

	/**
	 * Gets the bitwise OR of the currently active surface state flags,
	 * from the #GdkSurfaceState enumeration.
	 *
	 * Returns: surface state bitfield
	 */
	public GdkSurfaceState getState()
	{
		return gdk_surface_get_state(gdkSurface);
	}

	/**
	 * Returns %TRUE if the surface is aware of the existence of multiple
	 * devices.
	 *
	 * Returns: %TRUE if the surface handles multidevice features.
	 */
	public bool getSupportMultidevice()
	{
		return gdk_surface_get_support_multidevice(gdkSurface) != 0;
	}

	/**
	 * Gets the type of the surface. See #GdkSurfaceType.
	 *
	 * Returns: type of surface
	 */
	public GdkSurfaceType getSurfaceType()
	{
		return gdk_surface_get_surface_type(gdkSurface);
	}

	/**
	 * This function returns the type hint set for a surface.
	 *
	 * Returns: The type hint set for @surface
	 */
	public GdkSurfaceTypeHint getTypeHint()
	{
		return gdk_surface_get_type_hint(gdkSurface);
	}

	/**
	 * Returns the width of the given @surface.
	 *
	 * On the X11 platform the returned size is the size reported in the
	 * most-recently-processed configure event, rather than the current
	 * size on the X server.
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
	 * Apply the region to the surface for the purpose of event
	 * handling. Mouse events which happen while the pointer position
	 * corresponds to an unset bit in the mask will be passed on the
	 * surface below @surface.
	 *
	 * An input shape is typically used with RGBA surfaces.
	 * The alpha channel of the surface defines which pixels are
	 * invisible and allows for nicely antialiased borders,
	 * and the input shape controls where the surface is
	 * “clickable”.
	 *
	 * On the X11 platform, this requires version 1.1 of the
	 * shape extension.
	 *
	 * On the Win32 platform, this functionality is not present and the
	 * function does nothing.
	 *
	 * Params:
	 *     shapeRegion = region of surface to be non-transparent
	 *     offsetX = X position of @shape_region in @surface coordinates
	 *     offsetY = Y position of @shape_region in @surface coordinates
	 */
	public void inputShapeCombineRegion(Region shapeRegion, int offsetX, int offsetY)
	{
		gdk_surface_input_shape_combine_region(gdkSurface, (shapeRegion is null) ? null : shapeRegion.getRegionStruct(), offsetX, offsetY);
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
	 * Check if the surface and all ancestors of the surface are
	 * mapped. (This is not necessarily "viewable" in the X sense, since
	 * we only check as far as we have GDK surface parents, not to the root
	 * surface.)
	 *
	 * Returns: %TRUE if the surface is viewable
	 */
	public bool isViewable()
	{
		return gdk_surface_is_viewable(gdkSurface) != 0;
	}

	/**
	 * Checks whether the surface has been mapped (with gdk_surface_show() or
	 * gdk_surface_show_unraised()).
	 *
	 * Returns: %TRUE if the surface is mapped
	 */
	public bool isVisible()
	{
		return gdk_surface_is_visible(gdkSurface) != 0;
	}

	/**
	 * Lowers @surface to the bottom of the Z-order (stacking order), so that
	 * other surfaces with the same parent surface appear above @surface.
	 * This is true whether or not the other surfaces are visible.
	 *
	 * If @surface is a toplevel, the window manager may choose to deny the
	 * request to move the surface in the Z-order, gdk_surface_lower() only
	 * requests the restack, does not guarantee it.
	 *
	 * Note that gdk_surface_show() raises the surface again, so don’t call this
	 * function before gdk_surface_show(). (Try gdk_surface_show_unraised().)
	 */
	public void lower()
	{
		gdk_surface_lower(gdkSurface);
	}

	/**
	 * Maximizes the surface. If the surface was already maximized, then
	 * this function does nothing.
	 *
	 * On X11, asks the window manager to maximize @surface, if the window
	 * manager supports this operation. Not all window managers support
	 * this, and some deliberately ignore it or don’t have a concept of
	 * “maximized”; so you can’t rely on the maximization actually
	 * happening. But it will happen with most standard window managers,
	 * and GDK makes a best effort to get it to happen.
	 *
	 * On Windows, reliably maximizes the surface.
	 */
	public void maximize()
	{
		gdk_surface_maximize(gdkSurface);
	}

	/**
	 * Asks to minimize the @surface.
	 *
	 * The windowing system may choose to ignore the request.
	 *
	 * You can track the result of this request by using the #GdkSurface:state
	 * property.
	 *
	 * This function only makes sense when @surface is a toplevel surface.
	 */
	public void minimize()
	{
		gdk_surface_minimize(gdkSurface);
	}

	/**
	 * Moves @surface to @rect, aligning their anchor points.
	 *
	 * @rect is relative to the top-left corner of the surface that @surface is
	 * transient for. @rect_anchor and @surface_anchor determine anchor points on
	 * @rect and @surface to pin together. @rect's anchor point can optionally be
	 * offset by @rect_anchor_dx and @rect_anchor_dy, which is equivalent to
	 * offsetting the position of @surface.
	 *
	 * @anchor_hints determines how @surface will be moved if the anchor points cause
	 * it to move off-screen. For example, %GDK_ANCHOR_FLIP_X will replace
	 * %GDK_GRAVITY_NORTH_WEST with %GDK_GRAVITY_NORTH_EAST and vice versa if
	 * @surface extends beyond the left or right edges of the monitor.
	 *
	 * Connect to the #GdkSurface::moved-to-rect signal to find out how it was
	 * actually positioned.
	 *
	 * Params:
	 *     rect = the destination #GdkRectangle to align @surface with
	 *     rectAnchor = the point on @rect to align with @surface's anchor point
	 *     surfaceAnchor = the point on @surface to align with @rect's anchor point
	 *     anchorHints = positioning hints to use when limited on space
	 *     rectAnchorDx = horizontal offset to shift @surface, i.e. @rect's anchor
	 *         point
	 *     rectAnchorDy = vertical offset to shift @surface, i.e. @rect's anchor point
	 */
	public void moveToRect(GdkRectangle* rect, GdkGravity rectAnchor, GdkGravity surfaceAnchor, GdkAnchorHints anchorHints, int rectAnchorDx, int rectAnchorDy)
	{
		gdk_surface_move_to_rect(gdkSurface, rect, rectAnchor, surfaceAnchor, anchorHints, rectAnchorDx, rectAnchorDy);
	}

	/**
	 * Forces an expose event for @surface to be scheduled.
	 *
	 * If the invalid area of @surface is empty, an expose event will
	 * still be emitted. Its invalid region will be empty.
	 *
	 * This function is useful for implementations that track invalid
	 * regions on their own.
	 */
	public void queueExpose()
	{
		gdk_surface_queue_expose(gdkSurface);
	}

	/**
	 * Raises @surface to the top of the Z-order (stacking order), so that
	 * other surfaces with the same parent surface appear below @surface.
	 * This is true whether or not the surfaces are visible.
	 *
	 * If @surface is a toplevel, the window manager may choose to deny the
	 * request to move the surface in the Z-order, gdk_surface_raise() only
	 * requests the restack, does not guarantee it.
	 */
	public void raise()
	{
		gdk_surface_raise(gdkSurface);
	}

	/**
	 * Registers a surface as a potential drop destination.
	 */
	public void registerDnd()
	{
		gdk_surface_register_dnd(gdkSurface);
	}

	/**
	 * Resizes @surface; for toplevel surfaces, asks the window manager to resize
	 * the surface. The window manager may not allow the resize. When using GTK,
	 * use gtk_window_resize() instead of this low-level GDK function.
	 *
	 * Surfaces may not be resized below 1x1.
	 *
	 * Params:
	 *     width = new width of the surface
	 *     height = new height of the surface
	 */
	public void resize(int width, int height)
	{
		gdk_surface_resize(gdkSurface, width, height);
	}

	/**
	 * Changes the position of  @surface in the Z-order (stacking order), so that
	 * it is above @sibling (if @above is %TRUE) or below @sibling (if @above is
	 * %FALSE).
	 *
	 * If @sibling is %NULL, then this either raises (if @above is %TRUE) or
	 * lowers the surface.
	 *
	 * If @surface is a toplevel, the window manager may choose to deny the
	 * request to move the surface in the Z-order, gdk_surface_restack() only
	 * requests the restack, does not guarantee it.
	 *
	 * Params:
	 *     sibling = a #GdkSurface that is a sibling of @surface, or %NULL
	 *     above = a boolean
	 */
	public void restack(Surface sibling, bool above)
	{
		gdk_surface_restack(gdkSurface, (sibling is null) ? null : sibling.getSurfaceStruct(), above);
	}

	/**
	 * Setting @accept_focus to %FALSE hints the desktop environment that the
	 * surface doesn’t want to receive input focus.
	 *
	 * On X, it is the responsibility of the window manager to interpret this
	 * hint. ICCCM-compliant window manager usually respect it.
	 *
	 * Params:
	 *     acceptFocus = %TRUE if the surface should receive input focus
	 */
	public void setAcceptFocus(bool acceptFocus)
	{
		gdk_surface_set_accept_focus(gdkSurface, acceptFocus);
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
	 * “Decorations” are the features the window manager adds to a toplevel #GdkSurface.
	 * This function sets the traditional Motif window manager hints that tell the
	 * window manager which decorations you would like your surface to have.
	 * Usually you should use gtk_window_set_decorated() on a #GtkWindow instead of
	 * using the GDK function directly.
	 *
	 * The @decorations argument is the logical OR of the fields in
	 * the #GdkWMDecoration enumeration. If #GDK_DECOR_ALL is included in the
	 * mask, the other bits indicate which decorations should be turned off.
	 * If #GDK_DECOR_ALL is not included, then the other bits indicate
	 * which decorations should be turned on.
	 *
	 * Most window managers honor a decorations hint of 0 to disable all decorations,
	 * but very few honor all possible combinations of bits.
	 *
	 * Params:
	 *     decorations = decoration hint mask
	 */
	public void setDecorations(GdkWMDecoration decorations)
	{
		gdk_surface_set_decorations(gdkSurface, decorations);
	}

	/**
	 * Sets a specific #GdkCursor for a given device when it gets inside @surface.
	 * Use gdk_cursor_new_fromm_name() or gdk_cursor_new_from_texture() to create
	 * the cursor. To make the cursor invisible, use %GDK_BLANK_CURSOR. Passing
	 * %NULL for the @cursor argument to gdk_surface_set_cursor() means that
	 * @surface will use the cursor of its parent surface. Most surfaces should
	 * use this default.
	 *
	 * Params:
	 *     device = a master, pointer #GdkDevice
	 *     cursor = a #GdkCursor
	 */
	public void setDeviceCursor(Device device, Cursor cursor)
	{
		gdk_surface_set_device_cursor(gdkSurface, (device is null) ? null : device.getDeviceStruct(), (cursor is null) ? null : cursor.getCursorStruct());
	}

	/**
	 * Setting @focus_on_map to %FALSE hints the desktop environment that the
	 * surface doesn’t want to receive input focus when it is mapped.
	 * focus_on_map should be turned off for surfaces that aren’t triggered
	 * interactively (such as popups from network activity).
	 *
	 * On X, it is the responsibility of the window manager to interpret
	 * this hint. Window managers following the freedesktop.org window
	 * manager extension specification should respect it.
	 *
	 * Params:
	 *     focusOnMap = %TRUE if the surface should receive input focus when mapped
	 */
	public void setFocusOnMap(bool focusOnMap)
	{
		gdk_surface_set_focus_on_map(gdkSurface, focusOnMap);
	}

	/**
	 * Specifies whether the @surface should span over all monitors (in a multi-head
	 * setup) or only the current monitor when in fullscreen mode.
	 *
	 * The @mode argument is from the #GdkFullscreenMode enumeration.
	 * If #GDK_FULLSCREEN_ON_ALL_MONITORS is specified, the fullscreen @surface will
	 * span over all monitors of the display.
	 *
	 * On X11, searches through the list of monitors display the ones
	 * which delimit the 4 edges of the entire display and will ask the window
	 * manager to span the @surface over these monitors.
	 *
	 * If the XINERAMA extension is not available or not usable, this function
	 * has no effect.
	 *
	 * Not all window managers support this, so you can’t rely on the fullscreen
	 * surface to span over the multiple monitors when #GDK_FULLSCREEN_ON_ALL_MONITORS
	 * is specified.
	 *
	 * Params:
	 *     mode = fullscreen mode
	 */
	public void setFullscreenMode(GdkFullscreenMode mode)
	{
		gdk_surface_set_fullscreen_mode(gdkSurface, mode);
	}

	/**
	 * Sets hints about the window management functions to make available
	 * via buttons on the window frame.
	 *
	 * On the X backend, this function sets the traditional Motif window
	 * manager hint for this purpose. However, few window managers do
	 * anything reliable or interesting with this hint. Many ignore it
	 * entirely.
	 *
	 * The @functions argument is the logical OR of values from the
	 * #GdkWMFunction enumeration. If the bitmask includes #GDK_FUNC_ALL,
	 * then the other bits indicate which functions to disable; if
	 * it doesn’t include #GDK_FUNC_ALL, it indicates which functions to
	 * enable.
	 *
	 * Params:
	 *     functions = bitmask of operations to allow on @surface
	 */
	public void setFunctions(GdkWMFunction functions)
	{
		gdk_surface_set_functions(gdkSurface, functions);
	}

	/**
	 * Sets the geometry hints for @surface. Hints flagged in @geom_mask
	 * are set, hints not flagged in @geom_mask are unset.
	 * To unset all hints, use a @geom_mask of 0 and a @geometry of %NULL.
	 *
	 * This function provides hints to the surfaceing system about
	 * acceptable sizes for a toplevel surface. The purpose of
	 * this is to constrain user resizing, but the windowing system
	 * will typically  (but is not required to) also constrain the
	 * current size of the surface to the provided values and
	 * constrain programatic resizing via gdk_surface_resize().
	 *
	 * Note that on X11, this effect has no effect on surfaces
	 * of type %GDK_SURFACE_TEMP since these surfaces are not resizable
	 * by the user.
	 *
	 * Since you can’t count on the windowing system doing the
	 * constraints for programmatic resizes, you should generally
	 * call gdk_surface_constrain_size() yourself to determine
	 * appropriate sizes.
	 *
	 * Params:
	 *     geometry = geometry hints
	 *     geomMask = bitmask indicating fields of @geometry to pay attention to
	 */
	public void setGeometryHints(GdkGeometry* geometry, GdkSurfaceHints geomMask)
	{
		gdk_surface_set_geometry_hints(gdkSurface, geometry, geomMask);
	}

	/**
	 * Sets a list of icons for the surface. One of these will be used
	 * to represent the surface when it has been iconified. The icon is
	 * usually shown in an icon box or some sort of task bar. Which icon
	 * size is shown depends on the window manager. The window manager
	 * can scale the icon  but setting several size icons can give better
	 * image quality since the window manager may only need to scale the
	 * icon by a small amount or not at all.
	 *
	 * Note that some platforms don't support surface icons.
	 *
	 * Params:
	 *     surfaces = A list of image surfaces, of different sizes.
	 */
	public void setIconList(ListG surfaces)
	{
		gdk_surface_set_icon_list(gdkSurface, (surfaces is null) ? null : surfaces.getListGStruct());
	}

	/**
	 * Surfaces may have a name used while minimized, distinct from the
	 * name they display in their titlebar. Most of the time this is a bad
	 * idea from a user interface standpoint. But you can set such a name
	 * with this function, if you like.
	 *
	 * After calling this with a non-%NULL @name, calls to gdk_surface_set_title()
	 * will not update the icon title.
	 *
	 * Using %NULL for @name unsets the icon title; further calls to
	 * gdk_surface_set_title() will again update the icon title as well.
	 *
	 * Note that some platforms don't support surface icons.
	 *
	 * Params:
	 *     name = name of surface while iconified (minimized)
	 */
	public void setIconName(string name)
	{
		gdk_surface_set_icon_name(gdkSurface, Str.toStringz(name));
	}

	/**
	 * Set if @surface must be kept above other surfaces. If the
	 * surface was already above, then this function does nothing.
	 *
	 * On X11, asks the window manager to keep @surface above, if the window
	 * manager supports this operation. Not all window managers support
	 * this, and some deliberately ignore it or don’t have a concept of
	 * “keep above”; so you can’t rely on the surface being kept above.
	 * But it will happen with most standard window managers,
	 * and GDK makes a best effort to get it to happen.
	 *
	 * Params:
	 *     setting = whether to keep @surface above other surfaces
	 */
	public void setKeepAbove(bool setting)
	{
		gdk_surface_set_keep_above(gdkSurface, setting);
	}

	/**
	 * Set if @surface must be kept below other surfaces. If the
	 * surface was already below, then this function does nothing.
	 *
	 * On X11, asks the window manager to keep @surface below, if the window
	 * manager supports this operation. Not all window managers support
	 * this, and some deliberately ignore it or don’t have a concept of
	 * “keep below”; so you can’t rely on the surface being kept below.
	 * But it will happen with most standard window managers,
	 * and GDK makes a best effort to get it to happen.
	 *
	 * Params:
	 *     setting = whether to keep @surface below other surfaces
	 */
	public void setKeepBelow(bool setting)
	{
		gdk_surface_set_keep_below(gdkSurface, setting);
	}

	/**
	 * The application can use this hint to tell the window manager
	 * that a certain surface has modal behaviour. The window manager
	 * can use this information to handle modal surfaces in a special
	 * way.
	 *
	 * You should only use this on surfaces for which you have
	 * previously called gdk_surface_set_transient_for()
	 *
	 * Params:
	 *     modal = %TRUE if the surface is modal, %FALSE otherwise.
	 */
	public void setModalHint(bool modal)
	{
		gdk_surface_set_modal_hint(gdkSurface, modal);
	}

	/**
	 * Set @surface to render as partially transparent,
	 * with opacity 0 being fully transparent and 1 fully opaque. (Values
	 * of the opacity parameter are clamped to the [0,1] range.)
	 *
	 * For toplevel surfaces this depends on support from the windowing system
	 * that may not always be there. For instance, On X11, this works only on
	 * X screens with a compositing manager running. On Wayland, there is no
	 * per-surface opacity value that the compositor would apply. Instead, use
	 * `gdk_surface_set_opaque_region (surface, NULL)` to tell the compositor
	 * that the entire surface is (potentially) non-opaque, and draw your content
	 * with alpha, or use gtk_widget_set_opacity() to set an overall opacity
	 * for your widgets.
	 *
	 * Support for non-toplevel surfaces was added in 3.8.
	 *
	 * Params:
	 *     opacity = opacity
	 */
	public void setOpacity(double opacity)
	{
		gdk_surface_set_opacity(gdkSurface, opacity);
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
	 * property in your #GtkWidget::style-updated handler.
	 *
	 * Params:
	 *     region = a region, or %NULL
	 */
	public void setOpaqueRegion(Region region)
	{
		gdk_surface_set_opaque_region(gdkSurface, (region is null) ? null : region.getRegionStruct());
	}

	/**
	 * Newer GTK windows using client-side decorations use extra geometry
	 * around their frames for effects like shadows and invisible borders.
	 * Window managers that want to maximize windows or snap to edges need
	 * to know where the extents of the actual frame lie, so that users
	 * don’t feel like windows are snapping against random invisible edges.
	 *
	 * Note that this property is automatically updated by GTK, so this
	 * function should only be used by applications which do not use GTK
	 * to create toplevel surfaces.
	 *
	 * Params:
	 *     left = The left extent
	 *     right = The right extent
	 *     top = The top extent
	 *     bottom = The bottom extent
	 */
	public void setShadowWidth(int left, int right, int top, int bottom)
	{
		gdk_surface_set_shadow_width(gdkSurface, left, right, top, bottom);
	}

	/**
	 * When using GTK, typically you should use gtk_window_set_startup_id()
	 * instead of this low-level function.
	 *
	 * Params:
	 *     startupId = a string with startup-notification identifier
	 */
	public void setStartupId(string startupId)
	{
		gdk_surface_set_startup_id(gdkSurface, Str.toStringz(startupId));
	}

	/**
	 * This function will enable multidevice features in @surface.
	 *
	 * Multidevice aware surfaces will need to handle properly multiple,
	 * per device enter/leave events, device grabs and grab ownerships.
	 *
	 * Params:
	 *     supportMultidevice = %TRUE to enable multidevice support in @surface.
	 */
	public void setSupportMultidevice(bool supportMultidevice)
	{
		gdk_surface_set_support_multidevice(gdkSurface, supportMultidevice);
	}

	/**
	 * Sets the title of a toplevel surface, to be displayed in the titlebar.
	 * If you haven’t explicitly set the icon name for the surface
	 * (using gdk_surface_set_icon_name()), the icon name will be set to
	 * @title as well. @title must be in UTF-8 encoding (as with all
	 * user-readable strings in GDK and GTK). @title may not be %NULL.
	 *
	 * Params:
	 *     title = title of @surface
	 */
	public void setTitle(string title)
	{
		gdk_surface_set_title(gdkSurface, Str.toStringz(title));
	}

	/**
	 * Indicates to the window manager that @surface is a transient dialog
	 * associated with the application surface @parent. This allows the
	 * window manager to do things like center @surface on @parent and
	 * keep @surface above @parent.
	 *
	 * See gtk_window_set_transient_for() if you’re using #GtkWindow or
	 * #GtkDialog.
	 *
	 * Params:
	 *     parent = another toplevel #GdkSurface
	 */
	public void setTransientFor(Surface parent)
	{
		gdk_surface_set_transient_for(gdkSurface, (parent is null) ? null : parent.getSurfaceStruct());
	}

	/**
	 * The application can use this call to provide a hint to the surface
	 * manager about the functionality of a surface. The window manager
	 * can use this information when determining the decoration and behaviour
	 * of the surface.
	 *
	 * The hint must be set before the surface is mapped.
	 *
	 * Params:
	 *     hint = A hint of the function this surface will have
	 */
	public void setTypeHint(GdkSurfaceTypeHint hint)
	{
		gdk_surface_set_type_hint(gdkSurface, hint);
	}

	/**
	 * Like gdk_surface_show_unraised(), but also raises the surface to the
	 * top of the surface stack (moves the surface to the front of the
	 * Z-order).
	 *
	 * This function maps a surface so it’s visible onscreen. Its opposite
	 * is gdk_surface_hide().
	 *
	 * When implementing a #GtkWidget, you should call this function on the widget's
	 * #GdkSurface as part of the “map” method.
	 */
	public void show()
	{
		gdk_surface_show(gdkSurface);
	}

	/**
	 * Shows a #GdkSurface onscreen, but does not modify its stacking
	 * order. In contrast, gdk_surface_show() will raise the surface
	 * to the top of the surface stack.
	 *
	 * On the X11 platform, in Xlib terms, this function calls
	 * XMapWindow() (it also updates some internal GDK state, which means
	 * that you can’t really use XMapWindow() directly on a GDK surface).
	 */
	public void showUnraised()
	{
		gdk_surface_show_unraised(gdkSurface);
	}

	/**
	 * Asks the windowing system to show the window menu. The window menu
	 * is the menu shown when right-clicking the titlebar on traditional
	 * windows managed by the window manager. This is useful for windows
	 * using client-side decorations, activating it with a right-click
	 * on the window decorations.
	 *
	 * Params:
	 *     event = a #GdkEvent to show the menu for
	 *
	 * Returns: %TRUE if the window menu was shown and %FALSE otherwise.
	 */
	public bool showWindowMenu(Event event)
	{
		return gdk_surface_show_window_menu(gdkSurface, (event is null) ? null : event.getEventStruct()) != 0;
	}

	/**
	 * “Pins” a surface such that it’s on all workspaces and does not scroll
	 * with viewports, for window managers that have scrollable viewports.
	 * (When using #GtkWindow, gtk_window_stick() may be more useful.)
	 *
	 * On the X11 platform, this function depends on window manager
	 * support, so may have no effect with many window managers. However,
	 * GDK will do the best it can to convince the window manager to stick
	 * the surface. For window managers that don’t support this operation,
	 * there’s nothing you can do to force it to happen.
	 */
	public void stick()
	{
		gdk_surface_stick(gdkSurface);
	}

	/**
	 * Thaws a surface frozen with gdk_surface_freeze_updates(). Note that this
	 * will not necessarily schedule updates if the surface freeze count reaches
	 * zero.
	 */
	public void thawUpdates()
	{
		gdk_surface_thaw_updates(gdkSurface);
	}

	/** */
	public bool translateCoordinates(Surface to, double* x, double* y)
	{
		return gdk_surface_translate_coordinates(gdkSurface, (to is null) ? null : to.getSurfaceStruct(), x, y) != 0;
	}

	/**
	 * Moves the surface out of fullscreen mode. If the surface was not
	 * fullscreen, does nothing.
	 *
	 * On X11, asks the window manager to move @surface out of the fullscreen
	 * state, if the window manager supports this operation. Not all
	 * window managers support this, and some deliberately ignore it or
	 * don’t have a concept of “fullscreen”; so you can’t rely on the
	 * unfullscreenification actually happening. But it will happen with
	 * most standard window managers, and GDK makes a best effort to get
	 * it to happen.
	 */
	public void unfullscreen()
	{
		gdk_surface_unfullscreen(gdkSurface);
	}

	/**
	 * Unmaximizes the surface. If the surface wasn’t maximized, then this
	 * function does nothing.
	 *
	 * On X11, asks the window manager to unmaximize @surface, if the
	 * window manager supports this operation. Not all window managers
	 * support this, and some deliberately ignore it or don’t have a
	 * concept of “maximized”; so you can’t rely on the unmaximization
	 * actually happening. But it will happen with most standard window
	 * managers, and GDK makes a best effort to get it to happen.
	 *
	 * On Windows, reliably unmaximizes the surface.
	 */
	public void unmaximize()
	{
		gdk_surface_unmaximize(gdkSurface);
	}

	/**
	 * Asks to unminimize the @surface.
	 *
	 * The windowing system may choose to ignore the request.
	 *
	 * You can track the result of this request by using the #GdkSurface:state
	 * property.
	 *
	 * This function only makes sense when @surface is a toplevel surface.
	 */
	public void unminimize()
	{
		gdk_surface_unminimize(gdkSurface);
	}

	/**
	 * Reverse operation for gdk_surface_stick(); see gdk_surface_stick(),
	 * and gtk_window_unstick().
	 */
	public void unstick()
	{
		gdk_surface_unstick(gdkSurface);
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
	 * Emitted when the position of @surface is finalized after being moved to a
	 * destination rectangle.
	 *
	 * @surface might be flipped over the destination rectangle in order to keep
	 * it on-screen, in which case @flipped_x and @flipped_y will be set to %TRUE
	 * accordingly.
	 *
	 * @flipped_rect is the ideal position of @surface after any possible
	 * flipping, but before any possible sliding. @final_rect is @flipped_rect,
	 * but possibly translated in the case that flipping is still ineffective in
	 * keeping @surface on-screen.
	 *
	 * Params:
	 *     flippedRect = the position of @surface after any possible
	 *         flipping or %NULL if the backend can't obtain it
	 *     finalRect = the final position of @surface or %NULL if the
	 *         backend can't obtain it
	 *     flippedX = %TRUE if the anchors were flipped horizontally
	 *     flippedY = %TRUE if the anchors were flipped vertically
	 */
	gulong addOnMovedToRect(void delegate(void*, void*, bool, bool, Surface) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "moved-to-rect", dlg, connectFlags ^ ConnectFlags.SWAPPED);
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

	/**
	 * Emitted when the size of @surface is changed.
	 *
	 * Params:
	 *     width = the new width
	 *     height = the new height
	 */
	gulong addOnSizeChanged(void delegate(int, int, Surface) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "size-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
