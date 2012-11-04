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

/*
 * Conversion parameters:
 * inFile  = gdk-Windows.html
 * outPack = gdk
 * outFile = Window
 * strct   = GdkWindow
 * realStrct=
 * ctorStrct=
 * clss    = Window
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_window_
 * 	- gdk_
 * omit structs:
 * omit prefixes:
 * 	- gdk_window_invalidate_maybe_recurse
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Region
 * 	- gdk.Rectangle
 * 	- gdk.Drawable
 * 	- gdk.Bitmap
 * 	- gdk.Color
 * 	- gdk.Pixmap
 * 	- gdk.Cursor
 * 	- gdk.Display
 * 	- gdk.Screen
 * 	- gdk.Visual
 * 	- glib.ListG
 * 	- cairo.Pattern
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdkBitmap* -> Bitmap
 * 	- GdkColor* -> Color
 * 	- GdkCursor* -> Cursor
 * 	- GdkDisplay* -> Display
 * 	- GdkDrawable* -> Drawable
 * 	- GdkPixmap* -> Pixmap
 * 	- GdkRectangle* -> Rectangle
 * 	- GdkRegion* -> Region
 * 	- GdkScreen* -> Screen
 * 	- GdkVisual* -> Visual
 * 	- GdkWindow* -> Window
 * 	- cairo_pattern_t* -> Pattern
 * module aliases:
 * local aliases:
 * overrides:
 * 	- getDisplay
 * 	- getScreen
 * 	- getVisual
 */

module gdk.Window;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gdk.Region;
private import gdk.Rectangle;
private import gdk.Drawable;
private import gdk.Bitmap;
private import gdk.Color;
private import gdk.Pixmap;
private import gdk.Cursor;
private import gdk.Display;
private import gdk.Screen;
private import gdk.Visual;
private import glib.ListG;
private import cairo.Pattern;



private import gdk.Drawable;

/**
 * Description
 * A GdkWindow is a rectangular region on the screen. It's a low-level object,
 * used to implement high-level objects such as GtkWidget and GtkWindow on the
 * GTK+ level. A GtkWindow is a toplevel window, the thing a user might think of
 * as a "window" with a titlebar and so on; a GtkWindow may contain many GdkWindow.
 * For example, each GtkButton has a GdkWindow associated with it.
 * Composited Windows
 * Normally, the windowing system takes care of rendering the contents of a child
 * window onto its parent window. This mechanism can be intercepted by calling
 * gdk_window_set_composited() on the child window. For a
 * composited window it is the responsibility of the
 * application to render the window contents at the right spot.
 * $(DDOC_COMMENT example)
 * In the example Example 7, “Composited windows”, a button is
 * placed inside of an event box inside of a window. The event box is
 * set as composited and therefore is no longer automatically drawn to
 * the screen.
 * When the contents of the event box change, an expose event is
 * generated on its parent window (which, in this case, belongs to
 * the toplevel GtkWindow). The expose handler for this widget is
 * responsible for merging the changes back on the screen in the way
 * that it wishes.
 * In our case, we merge the contents with a 50% transparency. We
 * also set the background colour of the window to red. The effect is
 * that the background shows through the button.
 * <hr>
 * Offscreen Windows
 * Offscreen windows are more general than composited windows, since they
 * allow not only to modify the rendering of the child window onto its parent,
 * but also to apply coordinate transformations.
 * To integrate an offscreen window into a window hierarchy, one has to call
 * gdk_offscreen_window_set_embedder() and handle a number of signals. The
 * "pick-embedded-child" signal on the embedder window is used to
 * select an offscreen child at given coordinates, and the "to-embedder"
 * and "from-embedder" signals on the offscreen window are used to
 * translate coordinates between the embedder and the offscreen window.
 * For rendering an offscreen window onto its embedder, the contents of the
 * offscreen window are available as a pixmap, via
 * gdk_offscreen_window_get_pixmap().
 */
public class Window : Drawable
{
	
	/** the main Gtk struct */
	protected GdkWindow* gdkWindow;
	
	
	public GdkWindow* getWindowStruct()
	{
		return gdkWindow;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkWindow;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkWindow* gdkWindow)
	{
		super(cast(GdkDrawable*)gdkWindow);
		this.gdkWindow = gdkWindow;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdkWindow = cast(GdkWindow*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(gdouble, gdouble, void*, void*, Window)[] onFromEmbedderListeners;
	/**
	 * The ::from-embedder signal is emitted to translate coordinates
	 * in the embedder of an offscreen window to the offscreen window.
	 * See also "to-embedder".
	 * Since 2.18
	 */
	void addOnFromEmbedder(void delegate(gdouble, gdouble, void*, void*, Window) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("from-embedder" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"from-embedder",
			cast(GCallback)&callBackFromEmbedder,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["from-embedder"] = 1;
		}
		onFromEmbedderListeners ~= dlg;
	}
	extern(C) static void callBackFromEmbedder(GdkWindow* windowStruct, gdouble embedder_x, gdouble embedder_y, void* offscreen_x, void* offscreen_y, Window _window)
	{
		foreach ( void delegate(gdouble, gdouble, void*, void*, Window) dlg ; _window.onFromEmbedderListeners )
		{
			dlg(embedder_x, embedder_y, offscreen_x, offscreen_y, _window);
		}
	}
	
	Window delegate(gdouble, gdouble, Window)[] onPickEmbeddedChildListeners;
	/**
	 * The ::pick-embedded-child signal is emitted to find an embedded
	 * child at the given position.
	 * Since 2.18
	 */
	void addOnPickEmbeddedChild(Window delegate(gdouble, gdouble, Window) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("pick-embedded-child" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"pick-embedded-child",
			cast(GCallback)&callBackPickEmbeddedChild,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["pick-embedded-child"] = 1;
		}
		onPickEmbeddedChildListeners ~= dlg;
	}
	extern(C) static void callBackPickEmbeddedChild(GdkWindow* windowStruct, gdouble x, gdouble y, Window _window)
	{
		foreach ( Window delegate(gdouble, gdouble, Window) dlg ; _window.onPickEmbeddedChildListeners )
		{
			dlg(x, y, _window);
		}
	}
	
	void delegate(gdouble, gdouble, void*, void*, Window)[] onToEmbedderListeners;
	/**
	 * The ::to-embedder signal is emitted to translate coordinates
	 * in an offscreen window to its embedder.
	 * See also "from-embedder".
	 * Since 2.18
	 */
	void addOnToEmbedder(void delegate(gdouble, gdouble, void*, void*, Window) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("to-embedder" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"to-embedder",
			cast(GCallback)&callBackToEmbedder,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["to-embedder"] = 1;
		}
		onToEmbedderListeners ~= dlg;
	}
	extern(C) static void callBackToEmbedder(GdkWindow* windowStruct, gdouble offscreen_x, gdouble offscreen_y, void* embedder_x, void* embedder_y, Window _window)
	{
		foreach ( void delegate(gdouble, gdouble, void*, void*, Window) dlg ; _window.onToEmbedderListeners )
		{
			dlg(offscreen_x, offscreen_y, embedder_x, embedder_y, _window);
		}
	}
	
	
	/**
	 * Creates a new GdkWindow using the attributes from
	 * attributes. See GdkWindowAttr and GdkWindowAttributesType for
	 * more details. Note: to use this on displays other than the default
	 * display, parent must be specified.
	 * Params:
	 * parent = a GdkWindow, or NULL to create the window as a child of
	 * the default root window for the default display. [allow-none]
	 * attributes = attributes of the new window
	 * attributesMask = mask indicating which fields in attributes are valid
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Window parent, GdkWindowAttr* attributes, int attributesMask)
	{
		// GdkWindow * gdk_window_new (GdkWindow *parent,  GdkWindowAttr *attributes,  gint attributes_mask);
		auto p = gdk_window_new((parent is null) ? null : parent.getWindowStruct(), attributes, attributesMask);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_window_new((parent is null) ? null : parent.getWindowStruct(), attributes, attributesMask)");
		}
		this(cast(GdkWindow*) p);
	}
	
	/**
	 * Destroys the window system resources associated with window and decrements window's
	 * reference count. The window system resources for all children of window are also
	 * destroyed, but the children's reference counts are not decremented.
	 * Note that a window will not be destroyed automatically when its reference count
	 * reaches zero. You must call this function yourself before that happens.
	 */
	public void destroy()
	{
		// void gdk_window_destroy (GdkWindow *window);
		gdk_window_destroy(gdkWindow);
	}
	
	/**
	 * Gets the GdkDisplay associated with a GdkWindow.
	 * Since 2.24
	 * Returns: the GdkDisplay associated with window
	 */
	public override Display getDisplay()
	{
		// GdkDisplay * gdk_window_get_display (GdkWindow *window);
		auto p = gdk_window_get_display(gdkWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Display(cast(GdkDisplay*) p);
	}
	
	/**
	 * Gets the GdkScreen associated with a GdkWindow.
	 * Returns: the GdkScreen associated with window
	 */
	public override Screen getScreen()
	{
		// GdkScreen * gdk_window_get_screen (GdkWindow *window);
		auto p = gdk_window_get_screen(gdkWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Screen(cast(GdkScreen*) p);
	}
	
	/**
	 * Gets the GdkVisual describing the pixel format of window.
	 * Since 2.24
	 * Returns: a GdkVisual
	 */
	public override Visual getVisual()
	{
		// GdkVisual * gdk_window_get_visual (GdkWindow *window);
		auto p = gdk_window_get_visual(gdkWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Visual(cast(GdkVisual*) p);
	}
	
	/**
	 * Returns the width of the given window.
	 * On the X11 platform the returned size is the size reported in the
	 * most-recently-processed configure event, rather than the current
	 * size on the X server.
	 * Since 2.24
	 * Returns: The width of window
	 */
	public int getWidth()
	{
		// int gdk_window_get_width (GdkWindow *window);
		return gdk_window_get_width(gdkWindow);
	}
	
	/**
	 * Returns the height of the given window.
	 * On the X11 platform the returned size is the size reported in the
	 * most-recently-processed configure event, rather than the current
	 * size on the X server.
	 * Since 2.24
	 * Returns: The height of window
	 */
	public int getHeight()
	{
		// int gdk_window_get_height (GdkWindow *window);
		return gdk_window_get_height(gdkWindow);
	}
	
	/**
	 * Gets the type of the window. See GdkWindowType.
	 * Returns: type of window
	 */
	public GdkWindowType getWindowType()
	{
		// GdkWindowType gdk_window_get_window_type (GdkWindow *window);
		return gdk_window_get_window_type(gdkWindow);
	}
	
	/**
	 * Obtains the window underneath the mouse pointer, returning the
	 * location of that window in win_x, win_y. Returns NULL if the
	 * window under the mouse pointer is not known to GDK (if the window
	 * belongs to another application and a GdkWindow hasn't been created
	 * for it with gdk_window_foreign_new())
	 * NOTE: For multihead-aware widgets or applications use
	 * gdk_display_get_window_at_pointer() instead.
	 * Params:
	 * winX = return location for origin of the window under the pointer. [out][allow-none]
	 * winY = return location for origin of the window under the pointer. [out][allow-none]
	 * Returns: window under the mouse pointer. [transfer none]
	 */
	public static Window atPointer(out int winX, out int winY)
	{
		// GdkWindow * gdk_window_at_pointer (gint *win_x,  gint *win_y);
		auto p = gdk_window_at_pointer(&winX, &winY);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Window(cast(GdkWindow*) p);
	}
	
	/**
	 * Like gdk_window_show_unraised(), but also raises the window to the
	 * top of the window stack (moves the window to the front of the
	 * Z-order).
	 * This function maps a window so it's visible onscreen. Its opposite
	 * is gdk_window_hide().
	 * When implementing a GtkWidget, you should call this function on the widget's
	 * GdkWindow as part of the "map" method.
	 */
	public void show()
	{
		// void gdk_window_show (GdkWindow *window);
		gdk_window_show(gdkWindow);
	}
	
	/**
	 * Shows a GdkWindow onscreen, but does not modify its stacking
	 * order. In contrast, gdk_window_show() will raise the window
	 * to the top of the window stack.
	 * On the X11 platform, in Xlib terms, this function calls
	 * XMapWindow() (it also updates some internal GDK state, which means
	 * that you can't really use XMapWindow() directly on a GDK window).
	 */
	public void showUnraised()
	{
		// void gdk_window_show_unraised (GdkWindow *window);
		gdk_window_show_unraised(gdkWindow);
	}
	
	/**
	 * For toplevel windows, withdraws them, so they will no longer be
	 * known to the window manager; for all windows, unmaps them, so
	 * they won't be displayed. Normally done automatically as
	 * part of gtk_widget_hide().
	 */
	public void hide()
	{
		// void gdk_window_hide (GdkWindow *window);
		gdk_window_hide(gdkWindow);
	}
	
	/**
	 * Check to see if a window is destroyed..
	 * Since 2.18
	 * Returns: TRUE if the window is destroyed
	 */
	public int isDestroyed()
	{
		// gboolean gdk_window_is_destroyed (GdkWindow *window);
		return gdk_window_is_destroyed(gdkWindow);
	}
	
	/**
	 * Checks whether the window has been mapped (with gdk_window_show() or
	 * gdk_window_show_unraised()).
	 * Returns: TRUE if the window is mapped
	 */
	public int isVisible()
	{
		// gboolean gdk_window_is_visible (GdkWindow *window);
		return gdk_window_is_visible(gdkWindow);
	}
	
	/**
	 * Check if the window and all ancestors of the window are
	 * mapped. (This is not necessarily "viewable" in the X sense, since
	 * we only check as far as we have GDK window parents, not to the root
	 * window.)
	 * Returns: TRUE if the window is viewable
	 */
	public int isViewable()
	{
		// gboolean gdk_window_is_viewable (GdkWindow *window);
		return gdk_window_is_viewable(gdkWindow);
	}
	
	/**
	 * Determines whether or not the window is shaped.
	 * Since 2.22
	 * Returns: TRUE if window is shaped
	 */
	public int isShaped()
	{
		// gboolean gdk_window_is_shaped (GdkWindow *window);
		return gdk_window_is_shaped(gdkWindow);
	}
	
	/**
	 * Determines whether or not the window is an input only window.
	 * Since 2.22
	 * Returns: TRUE if window is input only
	 */
	public int isInputOnly()
	{
		// gboolean gdk_window_is_input_only (GdkWindow *window);
		return gdk_window_is_input_only(gdkWindow);
	}
	
	/**
	 * Gets the bitwise OR of the currently active window state flags,
	 * from the GdkWindowState enumeration.
	 * Returns: window state bitfield
	 */
	public GdkWindowState getState()
	{
		// GdkWindowState gdk_window_get_state (GdkWindow *window);
		return gdk_window_get_state(gdkWindow);
	}
	
	/**
	 * Withdraws a window (unmaps it and asks the window manager to forget about it).
	 * This function is not really useful as gdk_window_hide() automatically
	 * withdraws toplevel windows before hiding them.
	 */
	public void withdraw()
	{
		// void gdk_window_withdraw (GdkWindow *window);
		gdk_window_withdraw(gdkWindow);
	}
	
	/**
	 * Asks to iconify (minimize) window. The window manager may choose
	 * to ignore the request, but normally will honor it. Using
	 * gtk_window_iconify() is preferred, if you have a GtkWindow widget.
	 * This function only makes sense when window is a toplevel window.
	 */
	public void iconify()
	{
		// void gdk_window_iconify (GdkWindow *window);
		gdk_window_iconify(gdkWindow);
	}
	
	/**
	 * Attempt to deiconify (unminimize) window. On X11 the window manager may
	 * choose to ignore the request to deiconify. When using GTK+,
	 * use gtk_window_deiconify() instead of the GdkWindow variant. Or better yet,
	 * you probably want to use gtk_window_present(), which raises the window, focuses it,
	 * unminimizes it, and puts it on the current desktop.
	 */
	public void deiconify()
	{
		// void gdk_window_deiconify (GdkWindow *window);
		gdk_window_deiconify(gdkWindow);
	}
	
	/**
	 * "Pins" a window such that it's on all workspaces and does not scroll
	 * with viewports, for window managers that have scrollable viewports.
	 * (When using GtkWindow, gtk_window_stick() may be more useful.)
	 * On the X11 platform, this function depends on window manager
	 * support, so may have no effect with many window managers. However,
	 * GDK will do the best it can to convince the window manager to stick
	 * the window. For window managers that don't support this operation,
	 * there's nothing you can do to force it to happen.
	 */
	public void stick()
	{
		// void gdk_window_stick (GdkWindow *window);
		gdk_window_stick(gdkWindow);
	}
	
	/**
	 * Reverse operation for gdk_window_stick(); see gdk_window_stick(),
	 * and gtk_window_unstick().
	 */
	public void unstick()
	{
		// void gdk_window_unstick (GdkWindow *window);
		gdk_window_unstick(gdkWindow);
	}
	
	/**
	 * Maximizes the window. If the window was already maximized, then
	 * this function does nothing.
	 * On X11, asks the window manager to maximize window, if the window
	 * manager supports this operation. Not all window managers support
	 * this, and some deliberately ignore it or don't have a concept of
	 * "maximized"; so you can't rely on the maximization actually
	 * happening. But it will happen with most standard window managers,
	 * and GDK makes a best effort to get it to happen.
	 * On Windows, reliably maximizes the window.
	 */
	public void maximize()
	{
		// void gdk_window_maximize (GdkWindow *window);
		gdk_window_maximize(gdkWindow);
	}
	
	/**
	 * Unmaximizes the window. If the window wasn't maximized, then this
	 * function does nothing.
	 * On X11, asks the window manager to unmaximize window, if the
	 * window manager supports this operation. Not all window managers
	 * support this, and some deliberately ignore it or don't have a
	 * concept of "maximized"; so you can't rely on the unmaximization
	 * actually happening. But it will happen with most standard window
	 * managers, and GDK makes a best effort to get it to happen.
	 * On Windows, reliably unmaximizes the window.
	 */
	public void unmaximize()
	{
		// void gdk_window_unmaximize (GdkWindow *window);
		gdk_window_unmaximize(gdkWindow);
	}
	
	/**
	 * Moves the window into fullscreen mode. This means the
	 * window covers the entire screen and is above any panels
	 * or task bars.
	 * If the window was already fullscreen, then this function does nothing.
	 * On X11, asks the window manager to put window in a fullscreen
	 * state, if the window manager supports this operation. Not all
	 * window managers support this, and some deliberately ignore it or
	 * don't have a concept of "fullscreen"; so you can't rely on the
	 * fullscreenification actually happening. But it will happen with
	 * most standard window managers, and GDK makes a best effort to get
	 * it to happen.
	 * Since 2.2
	 */
	public void fullscreen()
	{
		// void gdk_window_fullscreen (GdkWindow *window);
		gdk_window_fullscreen(gdkWindow);
	}
	
	/**
	 * Moves the window out of fullscreen mode. If the window was not
	 * fullscreen, does nothing.
	 * On X11, asks the window manager to move window out of the fullscreen
	 * state, if the window manager supports this operation. Not all
	 * window managers support this, and some deliberately ignore it or
	 * don't have a concept of "fullscreen"; so you can't rely on the
	 * unfullscreenification actually happening. But it will happen with
	 * most standard window managers, and GDK makes a best effort to get
	 * it to happen.
	 * Since 2.2
	 */
	public void unfullscreen()
	{
		// void gdk_window_unfullscreen (GdkWindow *window);
		gdk_window_unfullscreen(gdkWindow);
	}
	
	/**
	 * Set if window must be kept above other windows. If the
	 * window was already above, then this function does nothing.
	 * On X11, asks the window manager to keep window above, if the window
	 * manager supports this operation. Not all window managers support
	 * this, and some deliberately ignore it or don't have a concept of
	 * "keep above"; so you can't rely on the window being kept above.
	 * But it will happen with most standard window managers,
	 * and GDK makes a best effort to get it to happen.
	 * Since 2.4
	 * Params:
	 * setting = whether to keep window above other windows
	 */
	public void setKeepAbove(int setting)
	{
		// void gdk_window_set_keep_above (GdkWindow *window,  gboolean setting);
		gdk_window_set_keep_above(gdkWindow, setting);
	}
	
	/**
	 * Set if window must be kept below other windows. If the
	 * window was already below, then this function does nothing.
	 * On X11, asks the window manager to keep window below, if the window
	 * manager supports this operation. Not all window managers support
	 * this, and some deliberately ignore it or don't have a concept of
	 * "keep below"; so you can't rely on the window being kept below.
	 * But it will happen with most standard window managers,
	 * and GDK makes a best effort to get it to happen.
	 * Since 2.4
	 * Params:
	 * setting = whether to keep window below other windows
	 */
	public void setKeepBelow(int setting)
	{
		// void gdk_window_set_keep_below (GdkWindow *window,  gboolean setting);
		gdk_window_set_keep_below(gdkWindow, setting);
	}
	
	/**
	 * Request the windowing system to make window partially transparent,
	 * with opacity 0 being fully transparent and 1 fully opaque. (Values
	 * of the opacity parameter are clamped to the [0,1] range.)
	 * On X11, this works only on X screens with a compositing manager
	 * running.
	 * For setting up per-pixel alpha, see gdk_screen_get_rgba_colormap().
	 * For making non-toplevel windows translucent, see
	 * gdk_window_set_composited().
	 * Since 2.12
	 * Params:
	 * opacity = opacity
	 */
	public void setOpacity(double opacity)
	{
		// void gdk_window_set_opacity (GdkWindow *window,  gdouble opacity);
		gdk_window_set_opacity(gdkWindow, opacity);
	}
	
	/**
	 * Sets a GdkWindow as composited, or unsets it. Composited
	 * windows do not automatically have their contents drawn to
	 * the screen. Drawing is redirected to an offscreen buffer
	 * and an expose event is emitted on the parent of the composited
	 * window. It is the responsibility of the parent's expose handler
	 * to manually merge the off-screen content onto the screen in
	 * whatever way it sees fit. See Example 7, “Composited windows”
	 * for an example.
	 * It only makes sense for child windows to be composited; see
	 * gdk_window_set_opacity() if you need translucent toplevel
	 * windows.
	 * An additional effect of this call is that the area of this
	 * window is no longer clipped from regions marked for
	 * invalidation on its parent. Draws done on the parent
	 * window are also no longer clipped by the child.
	 * This call is only supported on some systems (currently,
	 * only X11 with new enough Xcomposite and Xdamage extensions).
	 * You must call gdk_display_supports_composite() to check if
	 * setting a window as composited is supported before
	 * attempting to do so.
	 * Since 2.12
	 * Params:
	 * composited = TRUE to set the window as composited
	 */
	public void setComposited(int composited)
	{
		// void gdk_window_set_composited (GdkWindow *window,  gboolean composited);
		gdk_window_set_composited(gdkWindow, composited);
	}
	
	/**
	 * Determines whether window is composited.
	 * See gdk_window_set_composited().
	 * Since 2.22
	 * Returns: TRUE if the window is composited.
	 */
	public int getComposited()
	{
		// gboolean gdk_window_get_composited (GdkWindow *window);
		return gdk_window_get_composited(gdkWindow);
	}
	
	/**
	 * Repositions a window relative to its parent window.
	 * For toplevel windows, window managers may ignore or modify the move;
	 * you should probably use gtk_window_move() on a GtkWindow widget
	 * anyway, instead of using GDK functions. For child windows,
	 * the move will reliably succeed.
	 * If you're also planning to resize the window, use gdk_window_move_resize()
	 * to both move and resize simultaneously, for a nicer visual effect.
	 * Params:
	 * x = X coordinate relative to window's parent
	 * y = Y coordinate relative to window's parent
	 */
	public void move(int x, int y)
	{
		// void gdk_window_move (GdkWindow *window,  gint x,  gint y);
		gdk_window_move(gdkWindow, x, y);
	}
	
	/**
	 * Resizes window; for toplevel windows, asks the window manager to resize
	 * the window. The window manager may not allow the resize. When using GTK+,
	 * use gtk_window_resize() instead of this low-level GDK function.
	 * Windows may not be resized below 1x1.
	 * If you're also planning to move the window, use gdk_window_move_resize()
	 * to both move and resize simultaneously, for a nicer visual effect.
	 * Params:
	 * width = new width of the window
	 * height = new height of the window
	 */
	public void resize(int width, int height)
	{
		// void gdk_window_resize (GdkWindow *window,  gint width,  gint height);
		gdk_window_resize(gdkWindow, width, height);
	}
	
	/**
	 * Equivalent to calling gdk_window_move() and gdk_window_resize(),
	 * except that both operations are performed at once, avoiding strange
	 * visual effects. (i.e. the user may be able to see the window first
	 * move, then resize, if you don't use gdk_window_move_resize().)
	 * Params:
	 * x = new X position relative to window's parent
	 * y = new Y position relative to window's parent
	 * width = new width
	 * height = new height
	 */
	public void moveResize(int x, int y, int width, int height)
	{
		// void gdk_window_move_resize (GdkWindow *window,  gint x,  gint y,  gint width,  gint height);
		gdk_window_move_resize(gdkWindow, x, y, width, height);
	}
	
	/**
	 * Scroll the contents of its window, both pixels and children, by
	 * the given amount. Portions of the window that the scroll operation
	 * brings in from offscreen areas are invalidated.
	 * Params:
	 * dx = Amount to scroll in the X direction
	 * dy = Amount to scroll in the Y direction
	 */
	public void scroll(int dx, int dy)
	{
		// void gdk_window_scroll (GdkWindow *window,  gint dx,  gint dy);
		gdk_window_scroll(gdkWindow, dx, dy);
	}
	
	/**
	 * Move the part of window indicated by region by dy pixels in the Y
	 * direction and dx pixels in the X direction. The portions of region
	 * that not covered by the new position of region are invalidated.
	 * Child windows are not moved.
	 * Since 2.8
	 * Params:
	 * region = The GdkRegion to move
	 * dx = Amount to move in the X direction
	 * dy = Amount to move in the Y direction
	 */
	public void moveRegion(Region region, int dx, int dy)
	{
		// void gdk_window_move_region (GdkWindow *window,  const GdkRegion *region,  gint dx,  gint dy);
		gdk_window_move_region(gdkWindow, (region is null) ? null : region.getRegionStruct(), dx, dy);
	}
	
	/**
	 * Flush all outstanding cached operations on a window, leaving the
	 * window in a state which reflects all that has been drawn before.
	 * Gdk uses multiple kinds of caching to get better performance and
	 * nicer drawing. For instance, during exposes all paints to a window
	 * using double buffered rendering are keep on a pixmap until the last
	 * window has been exposed. It also delays window moves/scrolls until
	 * as long as possible until next update to avoid tearing when moving
	 * windows.
	 * Normally this should be completely invisible to applications, as
	 * we automatically flush the windows when required, but this might
	 * be needed if you for instance mix direct native drawing with
	 * gdk drawing. For Gtk widgets that don't use double buffering this
	 * will be called automatically before sending the expose event.
	 * Since 2.18
	 */
	public void flush()
	{
		// void gdk_window_flush (GdkWindow *window);
		gdk_window_flush(gdkWindow);
	}
	
	/**
	 * Checks whether the window has a native window or not. Note that
	 * you can use gdk_window_ensure_native() if a native window is needed.
	 * Since 2.22
	 * Returns: TRUE if the window has a native window, FALSE otherwise.
	 */
	public int hasNative()
	{
		// gboolean gdk_window_has_native (GdkWindow *window);
		return gdk_window_has_native(gdkWindow);
	}
	
	/**
	 * Tries to ensure that there is a window-system native window for this
	 * GdkWindow. This may fail in some situations, returning FALSE.
	 * Offscreen window and children of them can never have native windows.
	 * Some backends may not support native child windows.
	 * Since 2.18
	 * Returns: TRUE if the window has a native window, FALSE otherwise
	 */
	public int ensureNative()
	{
		// gboolean gdk_window_ensure_native (GdkWindow *window);
		return gdk_window_ensure_native(gdkWindow);
	}
	
	/**
	 * Reparents window into the given new_parent. The window being
	 * reparented will be unmapped as a side effect.
	 * Params:
	 * newParent = new parent to move window into
	 * x = X location inside the new parent
	 * y = Y location inside the new parent
	 */
	public void reparent(Window newParent, int x, int y)
	{
		// void gdk_window_reparent (GdkWindow *window,  GdkWindow *new_parent,  gint x,  gint y);
		gdk_window_reparent(gdkWindow, (newParent is null) ? null : newParent.getWindowStruct(), x, y);
	}
	
	/**
	 * Clears an entire window to the background color or background pixmap.
	 */
	public void clear()
	{
		// void gdk_window_clear (GdkWindow *window);
		gdk_window_clear(gdkWindow);
	}
	
	/**
	 * Clears an area of window to the background color or background pixmap.
	 * Params:
	 * x = x coordinate of rectangle to clear
	 * y = y coordinate of rectangle to clear
	 * width = width of rectangle to clear
	 * height = height of rectangle to clear
	 */
	public void clearArea(int x, int y, int width, int height)
	{
		// void gdk_window_clear_area (GdkWindow *window,  gint x,  gint y,  gint width,  gint height);
		gdk_window_clear_area(gdkWindow, x, y, width, height);
	}
	
	/**
	 * Like gdk_window_clear_area(), but also generates an expose event for
	 * the cleared area.
	 * This function has a stupid name because it dates back to the mists
	 * time, pre-GDK-1.0.
	 * Params:
	 * x = x coordinate of rectangle to clear
	 * y = y coordinate of rectangle to clear
	 * width = width of rectangle to clear
	 * height = height of rectangle to clear
	 */
	public void clearAreaE(int x, int y, int width, int height)
	{
		// void gdk_window_clear_area_e (GdkWindow *window,  gint x,  gint y,  gint width,  gint height);
		gdk_window_clear_area_e(gdkWindow, x, y, width, height);
	}
	
	/**
	 * Raises window to the top of the Z-order (stacking order), so that
	 * other windows with the same parent window appear below window.
	 * This is true whether or not the windows are visible.
	 * If window is a toplevel, the window manager may choose to deny the
	 * request to move the window in the Z-order, gdk_window_raise() only
	 * requests the restack, does not guarantee it.
	 */
	public void raise()
	{
		// void gdk_window_raise (GdkWindow *window);
		gdk_window_raise(gdkWindow);
	}
	
	/**
	 * Lowers window to the bottom of the Z-order (stacking order), so that
	 * other windows with the same parent window appear above window.
	 * This is true whether or not the other windows are visible.
	 * If window is a toplevel, the window manager may choose to deny the
	 * request to move the window in the Z-order, gdk_window_lower() only
	 * requests the restack, does not guarantee it.
	 * Note that gdk_window_show() raises the window again, so don't call this
	 * function before gdk_window_show(). (Try gdk_window_show_unraised().)
	 */
	public void lower()
	{
		// void gdk_window_lower (GdkWindow *window);
		gdk_window_lower(gdkWindow);
	}
	
	/**
	 * Changes the position of window in the Z-order (stacking order), so that
	 * it is above sibling (if above is TRUE) or below sibling (if above is
	 * FALSE).
	 * If sibling is NULL, then this either raises (if above is TRUE) or
	 * lowers the window.
	 * If window is a toplevel, the window manager may choose to deny the
	 * request to move the window in the Z-order, gdk_window_restack() only
	 * requests the restack, does not guarantee it.
	 * Since 2.18
	 * Params:
	 * sibling = a GdkWindow that is a sibling of window, or NULL. [allow-none]
	 * above = a boolean
	 */
	public void restack(Window sibling, int above)
	{
		// void gdk_window_restack (GdkWindow *window,  GdkWindow *sibling,  gboolean above);
		gdk_window_restack(gdkWindow, (sibling is null) ? null : sibling.getWindowStruct(), above);
	}
	
	/**
	 * Sets keyboard focus to window. In most cases, gtk_window_present()
	 * should be used on a GtkWindow, rather than calling this function.
	 * Params:
	 * timestamp = timestamp of the event triggering the window focus
	 */
	public void focus(uint timestamp)
	{
		// void gdk_window_focus (GdkWindow *window,  guint32 timestamp);
		gdk_window_focus(gdkWindow, timestamp);
	}
	
	/**
	 * Registers a window as a potential drop destination.
	 */
	public void registerDnd()
	{
		// void gdk_window_register_dnd (GdkWindow *window);
		gdk_window_register_dnd(gdkWindow);
	}
	
	/**
	 * Begins a window resize operation (for a toplevel window).
	 * You might use this function to implement a "window resize grip," for
	 * example; in fact GtkStatusbar uses it. The function works best
	 * with window managers that support the Extended Window Manager Hints, but has a
	 * fallback implementation for other window managers.
	 * Params:
	 * edge = the edge or corner from which the drag is started
	 * button = the button being used to drag
	 * rootX = root window X coordinate of mouse click that began the drag
	 * rootY = root window Y coordinate of mouse click that began the drag
	 * timestamp = timestamp of mouse click that began the drag (use gdk_event_get_time())
	 */
	public void beginResizeDrag(GdkWindowEdge edge, int button, int rootX, int rootY, uint timestamp)
	{
		// void gdk_window_begin_resize_drag (GdkWindow *window,  GdkWindowEdge edge,  gint button,  gint root_x,  gint root_y,  guint32 timestamp);
		gdk_window_begin_resize_drag(gdkWindow, edge, button, rootX, rootY, timestamp);
	}
	
	/**
	 * Begins a window move operation (for a toplevel window). You might
	 * use this function to implement a "window move grip," for
	 * example. The function works best with window managers that support
	 * the Extended
	 * Window Manager Hints, but has a fallback implementation for
	 * other window managers.
	 * Params:
	 * button = the button being used to drag
	 * rootX = root window X coordinate of mouse click that began the drag
	 * rootY = root window Y coordinate of mouse click that began the drag
	 * timestamp = timestamp of mouse click that began the drag
	 */
	public void beginMoveDrag(int button, int rootX, int rootY, uint timestamp)
	{
		// void gdk_window_begin_move_drag (GdkWindow *window,  gint button,  gint root_x,  gint root_y,  guint32 timestamp);
		gdk_window_begin_move_drag(gdkWindow, button, rootX, rootY, timestamp);
	}
	
	/**
	 * Constrains a desired width and height according to a
	 * set of geometry hints (such as minimum and maximum size).
	 * Params:
	 * geometry = a GdkGeometry structure
	 * flags = a mask indicating what portions of geometry are set
	 * width = desired width of window
	 * height = desired height of the window
	 * newWidth = location to store resulting width. [out]
	 * newHeight = location to store resulting height. [out]
	 */
	public static void constrainSize(GdkGeometry* geometry, uint flags, int width, int height, out int newWidth, out int newHeight)
	{
		// void gdk_window_constrain_size (GdkGeometry *geometry,  guint flags,  gint width,  gint height,  gint *new_width,  gint *new_height);
		gdk_window_constrain_size(geometry, flags, width, height, &newWidth, &newHeight);
	}
	
	/**
	 * Emits a short beep associated to window in the appropriate
	 * display, if supported. Otherwise, emits a short beep on
	 * the display just as gdk_display_beep().
	 * Since 2.12
	 */
	public void beep()
	{
		// void gdk_window_beep (GdkWindow *window);
		gdk_window_beep(gdkWindow);
	}
	
	/**
	 * A convenience wrapper around gdk_window_begin_paint_region() which
	 * creates a rectangular region for you. See
	 * gdk_window_begin_paint_region() for details.
	 * Params:
	 * rectangle = rectangle you intend to draw to
	 */
	public void beginPaintRect(Rectangle rectangle)
	{
		// void gdk_window_begin_paint_rect (GdkWindow *window,  const GdkRectangle *rectangle);
		gdk_window_begin_paint_rect(gdkWindow, (rectangle is null) ? null : rectangle.getRectangleStruct());
	}
	
	/**
	 * Indicates that you are beginning the process of redrawing region.
	 * A backing store (offscreen buffer) large enough to contain region
	 * will be created. The backing store will be initialized with the
	 * background color or background pixmap for window. Then, all
	 * drawing operations performed on window will be diverted to the
	 * backing store. When you call gdk_window_end_paint(), the backing
	 * store will be copied to window, making it visible onscreen. Only
	 * the part of window contained in region will be modified; that is,
	 * drawing operations are clipped to region.
	 * The net result of all this is to remove flicker, because the user
	 * sees the finished product appear all at once when you call
	 * gdk_window_end_paint(). If you draw to window directly without
	 * calling gdk_window_begin_paint_region(), the user may see flicker
	 * as individual drawing operations are performed in sequence. The
	 * clipping and background-initializing features of
	 * gdk_window_begin_paint_region() are conveniences for the
	 * programmer, so you can avoid doing that work yourself.
	 * When using GTK+, the widget system automatically places calls to
	 * gdk_window_begin_paint_region() and gdk_window_end_paint() around
	 * emissions of the expose_event signal. That is, if you're writing an
	 * expose event handler, you can assume that the exposed area in
	 * GdkEventExpose has already been cleared to the window background,
	 * is already set as the clip region, and already has a backing store.
	 * Therefore in most cases, application code need not call
	 * gdk_window_begin_paint_region(). (You can disable the automatic
	 * calls around expose events on a widget-by-widget basis by calling
	 * gtk_widget_set_double_buffered().)
	 * If you call this function multiple times before calling the
	 * matching gdk_window_end_paint(), the backing stores are pushed onto
	 * a stack. gdk_window_end_paint() copies the topmost backing store
	 * onscreen, subtracts the topmost region from all other regions in
	 * the stack, and pops the stack. All drawing operations affect only
	 * the topmost backing store in the stack. One matching call to
	 * gdk_window_end_paint() is required for each call to
	 * gdk_window_begin_paint_region().
	 * Params:
	 * region = region you intend to draw to
	 */
	public void beginPaintRegion(Region region)
	{
		// void gdk_window_begin_paint_region (GdkWindow *window,  const GdkRegion *region);
		gdk_window_begin_paint_region(gdkWindow, (region is null) ? null : region.getRegionStruct());
	}
	
	/**
	 * Indicates that the backing store created by the most recent call to
	 * gdk_window_begin_paint_region() should be copied onscreen and
	 * deleted, leaving the next-most-recent backing store or no backing
	 * store at all as the active paint region. See
	 * gdk_window_begin_paint_region() for full details. It is an error to
	 * call this function without a matching
	 * gdk_window_begin_paint_region() first.
	 */
	public void endPaint()
	{
		// void gdk_window_end_paint (GdkWindow *window);
		gdk_window_end_paint(gdkWindow);
	}
	
	/**
	 * A convenience wrapper around gdk_window_invalidate_region() which
	 * invalidates a rectangular region. See
	 * gdk_window_invalidate_region() for details.
	 * Params:
	 * rect = rectangle to invalidate or NULL to invalidate the whole
	 * window. [allow-none]
	 * invalidateChildren = whether to also invalidate child windows
	 */
	public void invalidateRect(Rectangle rect, int invalidateChildren)
	{
		// void gdk_window_invalidate_rect (GdkWindow *window,  const GdkRectangle *rect,  gboolean invalidate_children);
		gdk_window_invalidate_rect(gdkWindow, (rect is null) ? null : rect.getRectangleStruct(), invalidateChildren);
	}
	
	/**
	 * Adds region to the update area for window. The update area is the
	 * region that needs to be redrawn, or "dirty region." The call
	 * gdk_window_process_updates() sends one or more expose events to the
	 * window, which together cover the entire update area. An
	 * application would normally redraw the contents of window in
	 * response to those expose events.
	 * GDK will call gdk_window_process_all_updates() on your behalf
	 * whenever your program returns to the main loop and becomes idle, so
	 * normally there's no need to do that manually, you just need to
	 * invalidate regions that you know should be redrawn.
	 * The invalidate_children parameter controls whether the region of
	 * each child window that intersects region will also be invalidated.
	 * If FALSE, then the update area for child windows will remain
	 * unaffected. See gdk_window_invalidate_maybe_recurse if you need
	 * fine grained control over which children are invalidated.
	 * Params:
	 * region = a GdkRegion
	 * invalidateChildren = TRUE to also invalidate child windows
	 */
	public void invalidateRegion(Region region, int invalidateChildren)
	{
		// void gdk_window_invalidate_region (GdkWindow *window,  const GdkRegion *region,  gboolean invalidate_children);
		gdk_window_invalidate_region(gdkWindow, (region is null) ? null : region.getRegionStruct(), invalidateChildren);
	}
	
	/**
	 * Transfers ownership of the update area from window to the caller
	 * of the function. That is, after calling this function, window will
	 * no longer have an invalid/dirty region; the update area is removed
	 * from window and handed to you. If a window has no update area,
	 * gdk_window_get_update_area() returns NULL. You are responsible for
	 * calling gdk_region_destroy() on the returned region if it's non-NULL.
	 * Returns: the update area for window
	 */
	public Region getUpdateArea()
	{
		// GdkRegion * gdk_window_get_update_area (GdkWindow *window);
		auto p = gdk_window_get_update_area(gdkWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Region(cast(GdkRegion*) p);
	}
	
	/**
	 * Temporarily freezes a window such that it won't receive expose
	 * events. The window will begin receiving expose events again when
	 * gdk_window_thaw_updates() is called. If gdk_window_freeze_updates()
	 * has been called more than once, gdk_window_thaw_updates() must be called
	 * an equal number of times to begin processing exposes.
	 */
	public void freezeUpdates()
	{
		// void gdk_window_freeze_updates (GdkWindow *window);
		gdk_window_freeze_updates(gdkWindow);
	}
	
	/**
	 * Thaws a window frozen with gdk_window_freeze_updates().
	 */
	public void thawUpdates()
	{
		// void gdk_window_thaw_updates (GdkWindow *window);
		gdk_window_thaw_updates(gdkWindow);
	}
	
	/**
	 * Calls gdk_window_process_updates() for all windows (see GdkWindow)
	 * in the application.
	 */
	public static void processAllUpdates()
	{
		// void gdk_window_process_all_updates (void);
		gdk_window_process_all_updates();
	}
	
	/**
	 * Sends one or more expose events to window. The areas in each
	 * expose event will cover the entire update area for the window (see
	 * gdk_window_invalidate_region() for details). Normally GDK calls
	 * gdk_window_process_all_updates() on your behalf, so there's no
	 * need to call this function unless you want to force expose events
	 * to be delivered immediately and synchronously (vs. the usual
	 * case, where GDK delivers them in an idle handler). Occasionally
	 * this is useful to produce nicer scrolling behavior, for example.
	 * Params:
	 * updateChildren = whether to also process updates for child windows
	 */
	public void processUpdates(int updateChildren)
	{
		// void gdk_window_process_updates (GdkWindow *window,  gboolean update_children);
		gdk_window_process_updates(gdkWindow, updateChildren);
	}
	
	/**
	 * With update debugging enabled, calls to
	 * gdk_window_invalidate_region() clear the invalidated region of the
	 * screen to a noticeable color, and GDK pauses for a short time
	 * before sending exposes to windows during
	 * gdk_window_process_updates(). The net effect is that you can see
	 * the invalid region for each window and watch redraws as they
	 * occur. This allows you to diagnose inefficiencies in your application.
	 * In essence, because the GDK rendering model prevents all flicker,
	 * if you are redrawing the same region 400 times you may never
	 * notice, aside from noticing a speed problem. Enabling update
	 * debugging causes GTK to flicker slowly and noticeably, so you can
	 * see exactly what's being redrawn when, in what order.
	 * The --gtk-debug=updates command line option passed to GTK+ programs
	 * enables this debug option at application startup time. That's
	 * usually more useful than calling gdk_window_set_debug_updates()
	 * yourself, though you might want to use this function to enable
	 * updates sometime after application startup time.
	 * Params:
	 * setting = TRUE to turn on update debugging
	 */
	public static void setDebugUpdates(int setting)
	{
		// void gdk_window_set_debug_updates (gboolean setting);
		gdk_window_set_debug_updates(setting);
	}
	
	/**
	 * If you bypass the GDK layer and use windowing system primitives to
	 * draw directly onto a GdkWindow, then you need to deal with two
	 * details: there may be an offset between GDK coordinates and windowing
	 * system coordinates, and GDK may have redirected drawing to a offscreen
	 * pixmap as the result of a gdk_window_begin_paint_region() calls.
	 * This function allows retrieving the information you need to compensate
	 * for these effects.
	 * This function exposes details of the GDK implementation, and is thus
	 * likely to change in future releases of GDK.
	 * Params:
	 * realDrawable = location to store the drawable to which drawing should be
	 * done. [out]
	 * xOffset = location to store the X offset between coordinates in window,
	 * and the underlying window system primitive coordinates for
	 * *real_drawable. [out]
	 * yOffset = location to store the Y offset between coordinates in window,
	 * and the underlying window system primitive coordinates for
	 * *real_drawable. [out]
	 */
	public void getInternalPaintInfo(out Drawable realDrawable, out int xOffset, out int yOffset)
	{
		// void gdk_window_get_internal_paint_info (GdkWindow *window,  GdkDrawable **real_drawable,  gint *x_offset,  gint *y_offset);
		GdkDrawable* outrealDrawable = null;
		
		gdk_window_get_internal_paint_info(gdkWindow, &outrealDrawable, &xOffset, &yOffset);
		
		realDrawable = ObjectG.getDObject!Drawable(outrealDrawable);
	}
	
	/**
	 * Indicates that the application will cooperate with the window
	 * system in synchronizing the window repaint with the window
	 * manager during resizing operations. After an application calls
	 * this function, it must call gdk_window_configure_finished() every
	 * time it has finished all processing associated with a set of
	 * Configure events. Toplevel GTK+ windows automatically use this
	 * protocol.
	 * On X, calling this function makes window participate in the
	 * _NET_WM_SYNC_REQUEST window manager protocol.
	 * Since 2.6
	 */
	public void enableSynchronizedConfigure()
	{
		// void gdk_window_enable_synchronized_configure  (GdkWindow *window);
		gdk_window_enable_synchronized_configure(gdkWindow);
	}
	
	/**
	 * Signal to the window system that the application has finished
	 * handling Configure events it has received. Window Managers can
	 * use this to better synchronize the frame repaint with the
	 * application. GTK+ applications will automatically call this
	 * function when appropriate.
	 * This function can only be called if gdk_window_enable_synchronized_configure()
	 * was called previously.
	 * Since 2.6
	 */
	public void configureFinished()
	{
		// void gdk_window_configure_finished (GdkWindow *window);
		gdk_window_configure_finished(gdkWindow);
	}
	
	/**
	 * For most purposes this function is deprecated in favor of
	 * g_object_set_data(). However, for historical reasons GTK+ stores
	 * the GtkWidget that owns a GdkWindow as user data on the
	 * GdkWindow. So, custom widget implementations should use
	 * this function for that. If GTK+ receives an event for a GdkWindow,
	 * and the user data for the window is non-NULL, GTK+ will assume the
	 * user data is a GtkWidget, and forward the event to that widget.
	 * Params:
	 * userData = user data
	 */
	public void setUserData(void* userData)
	{
		// void gdk_window_set_user_data (GdkWindow *window,  gpointer user_data);
		gdk_window_set_user_data(gdkWindow, userData);
	}
	
	/**
	 * An override redirect window is not under the control of the window manager.
	 * This means it won't have a titlebar, won't be minimizable, etc. - it will
	 * be entirely under the control of the application. The window manager
	 * can't see the override redirect window at all.
	 * Override redirect should only be used for short-lived temporary
	 * windows, such as popup menus. GtkMenu uses an override redirect
	 * window in its implementation, for example.
	 * Params:
	 * overrideRedirect = TRUE if window should be override redirect
	 */
	public void setOverrideRedirect(int overrideRedirect)
	{
		// void gdk_window_set_override_redirect (GdkWindow *window,  gboolean override_redirect);
		gdk_window_set_override_redirect(gdkWindow, overrideRedirect);
	}
	
	/**
	 * Setting accept_focus to FALSE hints the desktop environment that the
	 * window doesn't want to receive input focus.
	 * On X, it is the responsibility of the window manager to interpret this
	 * hint. ICCCM-compliant window manager usually respect it.
	 * Since 2.4
	 * Params:
	 * acceptFocus = TRUE if the window should receive input focus
	 */
	public void setAcceptFocus(int acceptFocus)
	{
		// void gdk_window_set_accept_focus (GdkWindow *window,  gboolean accept_focus);
		gdk_window_set_accept_focus(gdkWindow, acceptFocus);
	}
	
	/**
	 * Determines whether or not the desktop environment shuld be hinted that
	 * the window does not want to receive input focus.
	 * Since 2.22
	 * Returns: whether or not the window should receive input focus.
	 */
	public int getAcceptFocus()
	{
		// gboolean gdk_window_get_accept_focus (GdkWindow *window);
		return gdk_window_get_accept_focus(gdkWindow);
	}
	
	/**
	 * Setting focus_on_map to FALSE hints the desktop environment that the
	 * window doesn't want to receive input focus when it is mapped.
	 * focus_on_map should be turned off for windows that aren't triggered
	 * interactively (such as popups from network activity).
	 * On X, it is the responsibility of the window manager to interpret
	 * this hint. Window managers following the freedesktop.org window
	 * manager extension specification should respect it.
	 * Since 2.6
	 * Params:
	 * focusOnMap = TRUE if the window should receive input focus when mapped
	 */
	public void setFocusOnMap(int focusOnMap)
	{
		// void gdk_window_set_focus_on_map (GdkWindow *window,  gboolean focus_on_map);
		gdk_window_set_focus_on_map(gdkWindow, focusOnMap);
	}
	
	/**
	 * Determines whether or not the desktop environment should be hinted that the
	 * window does not want to receive input focus when it is mapped.
	 * Since 2.22
	 * Returns: whether or not the window wants to receive input focus when it is mapped.
	 */
	public int getFocusOnMap()
	{
		// gboolean gdk_window_get_focus_on_map (GdkWindow *window);
		return gdk_window_get_focus_on_map(gdkWindow);
	}
	
	/**
	 * Adds an event filter to window, allowing you to intercept events
	 * before they reach GDK. This is a low-level operation and makes it
	 * easy to break GDK and/or GTK+, so you have to know what you're
	 * doing. Pass NULL for window to get all events for all windows,
	 * instead of events for a specific window.
	 * See gdk_display_add_client_message_filter() if you are interested
	 * in X ClientMessage events.
	 * Params:
	 * data = data to pass to filter callback
	 */
	public void addFilter(GdkFilterFunc funct, void* data)
	{
		// void gdk_window_add_filter (GdkWindow *window,  GdkFilterFunc function,  gpointer data);
		gdk_window_add_filter(gdkWindow, funct, data);
	}
	
	/**
	 * Remove a filter previously added with gdk_window_add_filter().
	 * Params:
	 * data = user data for previously-added filter function
	 */
	public void removeFilter(GdkFilterFunc funct, void* data)
	{
		// void gdk_window_remove_filter (GdkWindow *window,  GdkFilterFunc function,  gpointer data);
		gdk_window_remove_filter(gdkWindow, funct, data);
	}
	
	/**
	 * Applies a shape mask to window. Pixels in window corresponding to
	 * set bits in the mask will be visible; pixels in window
	 * corresponding to unset bits in the mask will be transparent. This
	 * gives a non-rectangular window.
	 * If mask is NULL, the shape mask will be unset, and the x/y
	 * parameters are not used.
	 * On the X11 platform, this uses an X server extension which is
	 * widely available on most common platforms, but not available on
	 * very old X servers, and occasionally the implementation will be
	 * buggy. On servers without the shape extension, this function
	 * will do nothing.
	 * This function works on both toplevel and child windows.
	 * Params:
	 * mask = shape mask
	 * x = X position of shape mask with respect to window
	 * y = Y position of shape mask with respect to window
	 */
	public void shapeCombineMask(Bitmap mask, int x, int y)
	{
		// void gdk_window_shape_combine_mask (GdkWindow *window,  GdkBitmap *mask,  gint x,  gint y);
		gdk_window_shape_combine_mask(gdkWindow, (mask is null) ? null : mask.getBitmapStruct(), x, y);
	}
	
	/**
	 * Makes pixels in window outside shape_region be transparent,
	 * so that the window may be nonrectangular. See also
	 * gdk_window_shape_combine_mask() to use a bitmap as the mask.
	 * If shape_region is NULL, the shape will be unset, so the whole
	 * window will be opaque again. offset_x and offset_y are ignored
	 * if shape_region is NULL.
	 * On the X11 platform, this uses an X server extension which is
	 * widely available on most common platforms, but not available on
	 * very old X servers, and occasionally the implementation will be
	 * buggy. On servers without the shape extension, this function
	 * will do nothing.
	 * This function works on both toplevel and child windows.
	 * Params:
	 * shapeRegion = region of window to be non-transparent
	 * offsetX = X position of shape_region in window coordinates
	 * offsetY = Y position of shape_region in window coordinates
	 */
	public void shapeCombineRegion(Region shapeRegion, int offsetX, int offsetY)
	{
		// void gdk_window_shape_combine_region (GdkWindow *window,  const GdkRegion *shape_region,  gint offset_x,  gint offset_y);
		gdk_window_shape_combine_region(gdkWindow, (shapeRegion is null) ? null : shapeRegion.getRegionStruct(), offsetX, offsetY);
	}
	
	/**
	 * Sets the shape mask of window to the union of shape masks
	 * for all children of window, ignoring the shape mask of window
	 * itself. Contrast with gdk_window_merge_child_shapes() which includes
	 * the shape mask of window in the masks to be merged.
	 */
	public void setChildShapes()
	{
		// void gdk_window_set_child_shapes (GdkWindow *window);
		gdk_window_set_child_shapes(gdkWindow);
	}
	
	/**
	 * Merges the shape masks for any child windows into the
	 * shape mask for window. i.e. the union of all masks
	 * for window and its children will become the new mask
	 * for window. See gdk_window_shape_combine_mask().
	 * This function is distinct from gdk_window_set_child_shapes()
	 * because it includes window's shape mask in the set of shapes to
	 * be merged.
	 */
	public void mergeChildShapes()
	{
		// void gdk_window_merge_child_shapes (GdkWindow *window);
		gdk_window_merge_child_shapes(gdkWindow);
	}
	
	/**
	 * Like gdk_window_shape_combine_mask(), but the shape applies
	 * only to event handling. Mouse events which happen while
	 * the pointer position corresponds to an unset bit in the
	 * mask will be passed on the window below window.
	 * An input shape is typically used with RGBA windows.
	 * The alpha channel of the window defines which pixels are
	 * invisible and allows for nicely antialiased borders,
	 * and the input shape controls where the window is
	 * "clickable".
	 * On the X11 platform, this requires version 1.1 of the
	 * shape extension.
	 * On the Win32 platform, this functionality is not present and the
	 * function does nothing.
	 * Since 2.10
	 * Params:
	 * mask = shape mask, or NULL. [allow-none]
	 * x = X position of shape mask with respect to window
	 * y = Y position of shape mask with respect to window
	 */
	public void inputShapeCombineMask(Bitmap mask, int x, int y)
	{
		// void gdk_window_input_shape_combine_mask (GdkWindow *window,  GdkBitmap *mask,  gint x,  gint y);
		gdk_window_input_shape_combine_mask(gdkWindow, (mask is null) ? null : mask.getBitmapStruct(), x, y);
	}
	
	/**
	 * Like gdk_window_shape_combine_region(), but the shape applies
	 * only to event handling. Mouse events which happen while
	 * the pointer position corresponds to an unset bit in the
	 * mask will be passed on the window below window.
	 * An input shape is typically used with RGBA windows.
	 * The alpha channel of the window defines which pixels are
	 * invisible and allows for nicely antialiased borders,
	 * and the input shape controls where the window is
	 * "clickable".
	 * On the X11 platform, this requires version 1.1 of the
	 * shape extension.
	 * On the Win32 platform, this functionality is not present and the
	 * function does nothing.
	 * Since 2.10
	 * Params:
	 * shapeRegion = region of window to be non-transparent
	 * offsetX = X position of shape_region in window coordinates
	 * offsetY = Y position of shape_region in window coordinates
	 */
	public void inputShapeCombineRegion(Region shapeRegion, int offsetX, int offsetY)
	{
		// void gdk_window_input_shape_combine_region  (GdkWindow *window,  const GdkRegion *shape_region,  gint offset_x,  gint offset_y);
		gdk_window_input_shape_combine_region(gdkWindow, (shapeRegion is null) ? null : shapeRegion.getRegionStruct(), offsetX, offsetY);
	}
	
	/**
	 * Sets the input shape mask of window to the union of input shape masks
	 * for all children of window, ignoring the input shape mask of window
	 * itself. Contrast with gdk_window_merge_child_input_shapes() which includes
	 * the input shape mask of window in the masks to be merged.
	 * Since 2.10
	 */
	public void setChildInputShapes()
	{
		// void gdk_window_set_child_input_shapes (GdkWindow *window);
		gdk_window_set_child_input_shapes(gdkWindow);
	}
	
	/**
	 * Merges the input shape masks for any child windows into the
	 * input shape mask for window. i.e. the union of all input masks
	 * for window and its children will become the new input mask
	 * for window. See gdk_window_input_shape_combine_mask().
	 * This function is distinct from gdk_window_set_child_input_shapes()
	 * because it includes window's input shape mask in the set of
	 * shapes to be merged.
	 * Since 2.10
	 */
	public void mergeChildInputShapes()
	{
		// void gdk_window_merge_child_input_shapes (GdkWindow *window);
		gdk_window_merge_child_input_shapes(gdkWindow);
	}
	
	/**
	 * Set the bit gravity of the given window to static, and flag it so
	 * all children get static subwindow gravity. This is used if you are
	 * implementing scary features that involve deep knowledge of the
	 * windowing system. Don't worry about it unless you have to.
	 * Params:
	 * useStatic = TRUE to turn on static gravity
	 * Returns: TRUE if the server supports static gravity
	 */
	public int setStaticGravities(int useStatic)
	{
		// gboolean gdk_window_set_static_gravities (GdkWindow *window,  gboolean use_static);
		return gdk_window_set_static_gravities(gdkWindow, useStatic);
	}
	
	/**
	 * Warning
	 * gdk_window_set_hints is deprecated and should not be used in newly-written code.
	 * This function is broken and useless and you should ignore it.
	 * If using GTK+, use functions such as gtk_window_resize(), gtk_window_set_size_request(),
	 * gtk_window_move(), gtk_window_parse_geometry(), and gtk_window_set_geometry_hints(),
	 * depending on what you're trying to do.
	 * If using GDK directly, use gdk_window_set_geometry_hints().
	 * Params:
	 * x = ignored field, does not matter
	 * y = ignored field, does not matter
	 * minWidth = minimum width hint
	 * minHeight = minimum height hint
	 * maxWidth = max width hint
	 * maxHeight = max height hint
	 * flags = logical OR of GDK_HINT_POS, GDK_HINT_MIN_SIZE, and/or GDK_HINT_MAX_SIZE
	 */
	public void setHints(int x, int y, int minWidth, int minHeight, int maxWidth, int maxHeight, int flags)
	{
		// void gdk_window_set_hints (GdkWindow *window,  gint x,  gint y,  gint min_width,  gint min_height,  gint max_width,  gint max_height,  gint flags);
		gdk_window_set_hints(gdkWindow, x, y, minWidth, minHeight, maxWidth, maxHeight, flags);
	}
	
	/**
	 * Sets the title of a toplevel window, to be displayed in the titlebar.
	 * If you haven't explicitly set the icon name for the window
	 * (using gdk_window_set_icon_name()), the icon name will be set to
	 * title as well. title must be in UTF-8 encoding (as with all
	 * user-readable strings in GDK/GTK+). title may not be NULL.
	 * Params:
	 * title = title of window
	 */
	public void setTitle(string title)
	{
		// void gdk_window_set_title (GdkWindow *window,  const gchar *title);
		gdk_window_set_title(gdkWindow, Str.toStringz(title));
	}
	
	/**
	 * Sets the background color of window. (However, when using GTK+,
	 * set the background of a widget with gtk_widget_modify_bg() - if
	 * you're an application - or gtk_style_set_background() - if you're
	 * implementing a custom widget.)
	 * The color must be allocated; gdk_rgb_find_color() is the best way
	 * to allocate a color.
	 * See also gdk_window_set_back_pixmap().
	 * Params:
	 * color = an allocated GdkColor
	 */
	public void setBackground(Color color)
	{
		// void gdk_window_set_background (GdkWindow *window,  const GdkColor *color);
		gdk_window_set_background(gdkWindow, (color is null) ? null : color.getColorStruct());
	}
	
	/**
	 * Sets the background pixmap of window. May also be used to set a
	 * background of "None" on window, by setting a background pixmap
	 * of NULL.
	 * A background pixmap will be tiled, positioning the first tile at
	 * the origin of window, or if parent_relative is TRUE, the tiling
	 * will be done based on the origin of the parent window (useful to
	 * align tiles in a parent with tiles in a child).
	 * A background pixmap of NULL means that the window will have no
	 * background. A window with no background will never have its
	 * background filled by the windowing system, instead the window will
	 * contain whatever pixels were already in the corresponding area of
	 * the display.
	 * The windowing system will normally fill a window with its background
	 * when the window is obscured then exposed, and when you call
	 * gdk_window_clear().
	 * Params:
	 * pixmap = a GdkPixmap, or NULL. [allow-none]
	 * parentRelative = whether the tiling origin is at the origin of
	 * window's parent
	 */
	public void setBackPixmap(Pixmap pixmap, int parentRelative)
	{
		// void gdk_window_set_back_pixmap (GdkWindow *window,  GdkPixmap *pixmap,  gboolean parent_relative);
		gdk_window_set_back_pixmap(gdkWindow, (pixmap is null) ? null : pixmap.getPixmapStruct(), parentRelative);
	}
	
	/**
	 * Gets the pattern used to clear the background on window. If window
	 * does not have its own background and reuses the parent's, NULL is
	 * returned and you'll have to query it yourself.
	 * Since 2.22
	 * Returns: The pattern to use for the background or NULL to use the parent's background. [transfer none]
	 */
	public Pattern getBackgroundPattern()
	{
		// cairo_pattern_t * gdk_window_get_background_pattern (GdkWindow *window);
		auto p = gdk_window_get_background_pattern(gdkWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Pattern(cast(cairo_pattern_t*) p);
	}
	
	/**
	 * Sets the mouse pointer for a GdkWindow. Use gdk_cursor_new_for_display()
	 * or gdk_cursor_new_from_pixmap() to create the cursor. To make the cursor
	 * invisible, use GDK_BLANK_CURSOR. Passing NULL for the cursor argument
	 * to gdk_window_set_cursor() means that window will use the cursor of its
	 * parent window. Most windows should use this default.
	 * Params:
	 * cursor = a cursor. [allow-none]
	 */
	public void setCursor(Cursor cursor)
	{
		// void gdk_window_set_cursor (GdkWindow *window,  GdkCursor *cursor);
		gdk_window_set_cursor(gdkWindow, (cursor is null) ? null : cursor.getCursorStruct());
	}
	
	/**
	 * Retrieves a GdkCursor pointer for the cursor currently set on the
	 * specified GdkWindow, or NULL. If the return value is NULL then
	 * there is no custom cursor set on the specified window, and it is
	 * using the cursor for its parent window.
	 * Since 2.18
	 * Returns: a GdkCursor, or NULL. The returned object is owned by the GdkWindow and should not be unreferenced directly. Use gdk_window_set_cursor() to unset the cursor of the window. [transfer none]
	 */
	public Cursor getCursor()
	{
		// GdkCursor * gdk_window_get_cursor (GdkWindow *window);
		auto p = gdk_window_get_cursor(gdkWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Cursor(cast(GdkCursor*) p);
	}
	
	/**
	 * Retrieves the user data for window, which is normally the widget
	 * that window belongs to. See gdk_window_set_user_data().
	 * Params:
	 * data = return location for user data. [out]
	 */
	public void getUserData(void** data)
	{
		// void gdk_window_get_user_data (GdkWindow *window,  gpointer *data);
		gdk_window_get_user_data(gdkWindow, data);
	}
	
	/**
	 * Any of the return location arguments to this function may be NULL,
	 * if you aren't interested in getting the value of that field.
	 * The X and Y coordinates returned are relative to the parent window
	 * of window, which for toplevels usually means relative to the
	 * window decorations (titlebar, etc.) rather than relative to the
	 * root window (screen-size background window).
	 * On the X11 platform, the geometry is obtained from the X server,
	 * so reflects the latest position of window; this may be out-of-sync
	 * with the position of window delivered in the most-recently-processed
	 * GdkEventConfigure. gdk_window_get_position() in contrast gets the
	 * position from the most recent configure event.
	 * Note
	 * If window is not a toplevel, it is much better
	 * to call gdk_window_get_position() and gdk_drawable_get_size() instead,
	 * because it avoids the roundtrip to the X server and because
	 * gdk_drawable_get_size() supports the full 32-bit coordinate space,
	 * whereas gdk_window_get_geometry() is restricted to the 16-bit
	 * coordinates of X11.
	 * Params:
	 * x = return location for X coordinate of window (relative to its parent)
	 * y = return location for Y coordinate of window (relative to its parent)
	 * width = return location for width of window
	 * height = return location for height of window
	 * depth = return location for bit depth of window
	 */
	public void getGeometry(out int x, out int y, out int width, out int height, out int depth)
	{
		// void gdk_window_get_geometry (GdkWindow *window,  gint *x,  gint *y,  gint *width,  gint *height,  gint *depth);
		gdk_window_get_geometry(gdkWindow, &x, &y, &width, &height, &depth);
	}
	
	/**
	 * Sets the geometry hints for window. Hints flagged in geom_mask
	 * are set, hints not flagged in geom_mask are unset.
	 * To unset all hints, use a geom_mask of 0 and a geometry of NULL.
	 * This function provides hints to the windowing system about
	 * acceptable sizes for a toplevel window. The purpose of
	 * this is to constrain user resizing, but the windowing system
	 * will typically (but is not required to) also constrain the
	 * current size of the window to the provided values and
	 * constrain programatic resizing via gdk_window_resize() or
	 * gdk_window_move_resize().
	 * Note that on X11, this effect has no effect on windows
	 * of type GDK_WINDOW_TEMP or windows where override redirect
	 * has been turned on via gdk_window_set_override_redirect()
	 * since these windows are not resizable by the user.
	 * Since you can't count on the windowing system doing the
	 * constraints for programmatic resizes, you should generally
	 * call gdk_window_constrain_size() yourself to determine
	 * appropriate sizes.
	 * Params:
	 * geometry = geometry hints
	 * geomMask = bitmask indicating fields of geometry to pay attention to
	 */
	public void setGeometryHints(GdkGeometry* geometry, GdkWindowHints geomMask)
	{
		// void gdk_window_set_geometry_hints (GdkWindow *window,  const GdkGeometry *geometry,  GdkWindowHints geom_mask);
		gdk_window_set_geometry_hints(gdkWindow, geometry, geomMask);
	}
	
	/**
	 * Sets a list of icons for the window. One of these will be used
	 * to represent the window when it has been iconified. The icon is
	 * usually shown in an icon box or some sort of task bar. Which icon
	 * size is shown depends on the window manager. The window manager
	 * can scale the icon but setting several size icons can give better
	 * image quality since the window manager may only need to scale the
	 * icon by a small amount or not at all.
	 * Params:
	 * pixbufs = A list of pixbufs, of different sizes. [transfer none][element-type GdkPixbuf]
	 */
	public void setIconList(ListG pixbufs)
	{
		// void gdk_window_set_icon_list (GdkWindow *window,  GList *pixbufs);
		gdk_window_set_icon_list(gdkWindow, (pixbufs is null) ? null : pixbufs.getListGStruct());
	}
	
	/**
	 * The application can use this hint to tell the window manager
	 * that a certain window has modal behaviour. The window manager
	 * can use this information to handle modal windows in a special
	 * way.
	 * You should only use this on windows for which you have
	 * previously called gdk_window_set_transient_for()
	 * Params:
	 * modal = TRUE if the window is modal, FALSE otherwise.
	 */
	public void setModalHint(int modal)
	{
		// void gdk_window_set_modal_hint (GdkWindow *window,  gboolean modal);
		gdk_window_set_modal_hint(gdkWindow, modal);
	}
	
	/**
	 * Determines whether or not the window manager is hinted that window
	 * has modal behaviour.
	 * Since 2.22
	 * Returns: whether or not the window has the modal hint set.
	 */
	public int getModalHint()
	{
		// gboolean gdk_window_get_modal_hint (GdkWindow *window);
		return gdk_window_get_modal_hint(gdkWindow);
	}
	
	/**
	 * The application can use this call to provide a hint to the window
	 * manager about the functionality of a window. The window manager
	 * can use this information when determining the decoration and behaviour
	 * of the window.
	 * The hint must be set before the window is mapped.
	 * Params:
	 * hint = A hint of the function this window will have
	 */
	public void setTypeHint(GdkWindowTypeHint hint)
	{
		// void gdk_window_set_type_hint (GdkWindow *window,  GdkWindowTypeHint hint);
		gdk_window_set_type_hint(gdkWindow, hint);
	}
	
	/**
	 * This function returns the type hint set for a window.
	 * Since 2.10
	 * Returns: The type hint set for window
	 */
	public GdkWindowTypeHint getTypeHint()
	{
		// GdkWindowTypeHint gdk_window_get_type_hint (GdkWindow *window);
		return gdk_window_get_type_hint(gdkWindow);
	}
	
	/**
	 * Toggles whether a window should appear in a task list or window
	 * list. If a window's semantic type as specified with
	 * gdk_window_set_type_hint() already fully describes the window, this
	 * function should not be called in addition,
	 * instead you should allow the window to be treated according to
	 * standard policy for its semantic type.
	 * Since 2.2
	 * Params:
	 * skipsTaskbar = TRUE to skip the taskbar
	 */
	public void setSkipTaskbarHint(int skipsTaskbar)
	{
		// void gdk_window_set_skip_taskbar_hint (GdkWindow *window,  gboolean skips_taskbar);
		gdk_window_set_skip_taskbar_hint(gdkWindow, skipsTaskbar);
	}
	
	/**
	 * Toggles whether a window should appear in a pager (workspace
	 * switcher, or other desktop utility program that displays a small
	 * thumbnail representation of the windows on the desktop). If a
	 * window's semantic type as specified with gdk_window_set_type_hint()
	 * already fully describes the window, this function should
	 * not be called in addition, instead you should
	 * allow the window to be treated according to standard policy for
	 * its semantic type.
	 * Since 2.2
	 * Params:
	 * skipsPager = TRUE to skip the pager
	 */
	public void setSkipPagerHint(int skipsPager)
	{
		// void gdk_window_set_skip_pager_hint (GdkWindow *window,  gboolean skips_pager);
		gdk_window_set_skip_pager_hint(gdkWindow, skipsPager);
	}
	
	/**
	 * Toggles whether a window needs the user's
	 * urgent attention.
	 * Since 2.8
	 * Params:
	 * urgent = TRUE if the window is urgent
	 */
	public void setUrgencyHint(int urgent)
	{
		// void gdk_window_set_urgency_hint (GdkWindow *window,  gboolean urgent);
		gdk_window_set_urgency_hint(gdkWindow, urgent);
	}
	
	/**
	 * Obtains the position of the window as reported in the
	 * most-recently-processed GdkEventConfigure. Contrast with
	 * gdk_window_get_geometry() which queries the X server for the
	 * current window position, regardless of which events have been
	 * received or processed.
	 * The position coordinates are relative to the window's parent window.
	 * Params:
	 * x = X coordinate of window. [out][allow-none]
	 * y = Y coordinate of window. [out][allow-none]
	 */
	public void getPosition(out int x, out int y)
	{
		// void gdk_window_get_position (GdkWindow *window,  gint *x,  gint *y);
		gdk_window_get_position(gdkWindow, &x, &y);
	}
	
	/**
	 * Obtains the top-left corner of the window manager frame in root
	 * window coordinates.
	 * Params:
	 * x = return location for X position of window frame
	 * y = return location for Y position of window frame
	 */
	public void getRootOrigin(out int x, out int y)
	{
		// void gdk_window_get_root_origin (GdkWindow *window,  gint *x,  gint *y);
		gdk_window_get_root_origin(gdkWindow, &x, &y);
	}
	
	/**
	 * Obtains the bounding box of the window, including window manager
	 * titlebar/borders if any. The frame position is given in root window
	 * coordinates. To get the position of the window itself (rather than
	 * the frame) in root window coordinates, use gdk_window_get_origin().
	 * Params:
	 * rect = rectangle to fill with bounding box of the window frame
	 */
	public void getFrameExtents(Rectangle rect)
	{
		// void gdk_window_get_frame_extents (GdkWindow *window,  GdkRectangle *rect);
		gdk_window_get_frame_extents(gdkWindow, (rect is null) ? null : rect.getRectangleStruct());
	}
	
	/**
	 * Obtains the position of a window in root window coordinates.
	 * (Compare with gdk_window_get_position() and
	 * gdk_window_get_geometry() which return the position of a window
	 * relative to its parent window.)
	 * Params:
	 * x = return location for X coordinate
	 * y = return location for Y coordinate
	 * Returns: not meaningful, ignore
	 */
	public int getOrigin(out int x, out int y)
	{
		// gint gdk_window_get_origin (GdkWindow *window,  gint *x,  gint *y);
		return gdk_window_get_origin(gdkWindow, &x, &y);
	}
	
	/**
	 * Warning
	 * gdk_window_get_deskrelative_origin is deprecated and should not be used in newly-written code.
	 * This gets the origin of a GdkWindow relative to
	 * an Enlightenment-window-manager desktop. As long as you don't
	 * assume that the user's desktop/workspace covers the entire
	 * root window (i.e. you don't assume that the desktop begins
	 * at root window coordinate 0,0) this function is not necessary.
	 * It's deprecated for that reason.
	 * Params:
	 * x = return location for X coordinate
	 * y = return location for Y coordinate
	 * Returns: not meaningful
	 */
	public int getDeskrelativeOrigin(out int x, out int y)
	{
		// gboolean gdk_window_get_deskrelative_origin (GdkWindow *window,  gint *x,  gint *y);
		return gdk_window_get_deskrelative_origin(gdkWindow, &x, &y);
	}
	
	/**
	 * Obtains the position of a window position in root
	 * window coordinates. This is similar to
	 * gdk_window_get_origin() but allows you go pass
	 * in any position in the window, not just the origin.
	 * Since 2.18
	 * Params:
	 * x = X coordinate in window
	 * y = Y coordinate in window
	 * rootX = return location for X coordinate. [out]
	 * rootY = return location for Y coordinate. [out]
	 */
	public void getRootCoords(int x, int y, out int rootX, out int rootY)
	{
		// void gdk_window_get_root_coords (GdkWindow *window,  gint x,  gint y,  gint *root_x,  gint *root_y);
		gdk_window_get_root_coords(gdkWindow, x, y, &rootX, &rootY);
	}
	
	/**
	 * Transforms window coordinates from a parent window to a child
	 * window, where the parent window is the normal parent as returned by
	 * gdk_window_get_parent() for normal windows, and the window's
	 * embedder as returned by gdk_offscreen_window_get_embedder() for
	 * offscreen windows.
	 * For normal windows, calling this function is equivalent to subtracting
	 * the return values of gdk_window_get_position() from the parent coordinates.
	 * For offscreen windows however (which can be arbitrarily transformed),
	 * this function calls the GdkWindow::from-embedder: signal to translate
	 * the coordinates.
	 * You should always use this function when writing generic code that
	 * walks down a window hierarchy.
	 * See also: gdk_window_coords_to_parent()
	 * Since 2.22
	 * Params:
	 * parentX = X coordinate in parent's coordinate system
	 * parentY = Y coordinate in parent's coordinate system
	 * x = return location for X coordinate in child's coordinate system. [out][allow-none]
	 * y = return location for Y coordinate in child's coordinate system. [out][allow-none]
	 */
	public void coordsFromParent(double parentX, double parentY, out double x, out double y)
	{
		// void gdk_window_coords_from_parent (GdkWindow *window,  gdouble parent_x,  gdouble parent_y,  gdouble *x,  gdouble *y);
		gdk_window_coords_from_parent(gdkWindow, parentX, parentY, &x, &y);
	}
	
	/**
	 * Transforms window coordinates from a child window to its parent
	 * window, where the parent window is the normal parent as returned by
	 * gdk_window_get_parent() for normal windows, and the window's
	 * embedder as returned by gdk_offscreen_window_get_embedder() for
	 * offscreen windows.
	 * For normal windows, calling this function is equivalent to adding
	 * the return values of gdk_window_get_position() to the child coordinates.
	 * For offscreen windows however (which can be arbitrarily transformed),
	 * this function calls the GdkWindow::to-embedder: signal to translate
	 * the coordinates.
	 * You should always use this function when writing generic code that
	 * walks up a window hierarchy.
	 * See also: gdk_window_coords_from_parent()
	 * Since 2.22
	 * Params:
	 * x = X coordinate in child's coordinate system
	 * y = Y coordinate in child's coordinate system
	 * parentX = return location for X coordinate
	 * in parent's coordinate system, or NULL. [out][allow-none]
	 * parentY = return location for Y coordinate
	 * in parent's coordinate system, or NULL. [out][allow-none]
	 */
	public void coordsToParent(double x, double y, out double parentX, out double parentY)
	{
		// void gdk_window_coords_to_parent (GdkWindow *window,  gdouble x,  gdouble y,  gdouble *parent_x,  gdouble *parent_y);
		gdk_window_coords_to_parent(gdkWindow, x, y, &parentX, &parentY);
	}
	
	/**
	 * Obtains the current pointer position and modifier state.
	 * The position is given in coordinates relative to the upper left
	 * corner of window.
	 * Params:
	 * x = return location for X coordinate of pointer or NULL to not
	 * return the X coordinate. [out][allow-none]
	 * y = return location for Y coordinate of pointer or NULL to not
	 * return the Y coordinate. [out][allow-none]
	 * mask = return location for modifier mask or NULL to not return the
	 * modifier mask. [out][allow-none]
	 * Returns: the window containing the pointer (as with gdk_window_at_pointer()), or NULL if the window containing the pointer isn't known to GDK. [transfer none]
	 */
	public Window getPointer(out int x, out int y, out GdkModifierType mask)
	{
		// GdkWindow * gdk_window_get_pointer (GdkWindow *window,  gint *x,  gint *y,  GdkModifierType *mask);
		auto p = gdk_window_get_pointer(gdkWindow, &x, &y, &mask);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Window(cast(GdkWindow*) p);
	}
	
	/**
	 * Obtains the parent of window, as known to GDK. Does not query the
	 * X server; thus this returns the parent as passed to gdk_window_new(),
	 * not the actual parent. This should never matter unless you're using
	 * Xlib calls mixed with GDK calls on the X11 platform. It may also
	 * matter for toplevel windows, because the window manager may choose
	 * to reparent them.
	 * Note that you should use gdk_window_get_effective_parent() when
	 * writing generic code that walks up a window hierarchy, because
	 * gdk_window_get_parent() will most likely not do what you expect if
	 * there are offscreen windows in the hierarchy.
	 * Returns: parent of window
	 */
	public Window getParent()
	{
		// GdkWindow * gdk_window_get_parent (GdkWindow *window);
		auto p = gdk_window_get_parent(gdkWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Window(cast(GdkWindow*) p);
	}
	
	/**
	 * Obtains the parent of window, as known to GDK. Works like
	 * gdk_window_get_parent() for normal windows, but returns the
	 * window's embedder for offscreen windows.
	 * See also: gdk_offscreen_window_get_embedder()
	 * Since 2.22
	 * Returns: effective parent of window
	 */
	public Window getEffectiveParent()
	{
		// GdkWindow * gdk_window_get_effective_parent (GdkWindow *window);
		auto p = gdk_window_get_effective_parent(gdkWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Window(cast(GdkWindow*) p);
	}
	
	/**
	 * Gets the toplevel window that's an ancestor of window.
	 * Any window type but GDK_WINDOW_CHILD is considered a
	 * toplevel window, as is a GDK_WINDOW_CHILD window that
	 * has a root window as parent.
	 * Note that you should use gdk_window_get_effective_toplevel() when
	 * you want to get to a window's toplevel as seen on screen, because
	 * gdk_window_get_toplevel() will most likely not do what you expect
	 * if there are offscreen windows in the hierarchy.
	 * Returns: the toplevel window containing window
	 */
	public Window getToplevel()
	{
		// GdkWindow * gdk_window_get_toplevel (GdkWindow *window);
		auto p = gdk_window_get_toplevel(gdkWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Window(cast(GdkWindow*) p);
	}
	
	/**
	 * Gets the toplevel window that's an ancestor of window.
	 * Works like gdk_window_get_toplevel(), but treats an offscreen window's
	 * embedder as its parent, using gdk_window_get_effective_parent().
	 * See also: gdk_offscreen_window_get_embedder()
	 * Since 2.22
	 * Returns: the effective toplevel window containing window
	 */
	public Window getEffectiveToplevel()
	{
		// GdkWindow * gdk_window_get_effective_toplevel (GdkWindow *window);
		auto p = gdk_window_get_effective_toplevel(gdkWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Window(cast(GdkWindow*) p);
	}
	
	/**
	 * Gets the list of children of window known to GDK.
	 * This function only returns children created via GDK,
	 * so for example it's useless when used with the root window;
	 * it only returns windows an application created itself.
	 * The returned list must be freed, but the elements in the
	 * list need not be.
	 * Returns: list of child windows inside window. [transfer container][element-type GdkWindow]
	 */
	public ListG getChildren()
	{
		// GList * gdk_window_get_children (GdkWindow *window);
		auto p = gdk_window_get_children(gdkWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!ListG(cast(GList*) p);
	}
	
	/**
	 * Like gdk_window_get_children(), but does not copy the list of
	 * children, so the list does not need to be freed.
	 * Returns: a reference to the list of child windows in window. [transfer none][element-type GdkWindow]
	 */
	public ListG peekChildren()
	{
		// GList * gdk_window_peek_children (GdkWindow *window);
		auto p = gdk_window_peek_children(gdkWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!ListG(cast(GList*) p);
	}
	
	/**
	 * Gets the event mask for window. See gdk_window_set_events().
	 * Returns: event mask for window
	 */
	public GdkEventMask getEvents()
	{
		// GdkEventMask gdk_window_get_events (GdkWindow *window);
		return gdk_window_get_events(gdkWindow);
	}
	
	/**
	 * The event mask for a window determines which events will be reported
	 * for that window. For example, an event mask including GDK_BUTTON_PRESS_MASK
	 * means the window should report button press events. The event mask
	 * is the bitwise OR of values from the GdkEventMask enumeration.
	 * Params:
	 * eventMask = event mask for window
	 */
	public void setEvents(GdkEventMask eventMask)
	{
		// void gdk_window_set_events (GdkWindow *window,  GdkEventMask event_mask);
		gdk_window_set_events(gdkWindow, eventMask);
	}
	
	/**
	 * Sets the icon of window as a pixmap or window. If using GTK+, investigate
	 * gtk_window_set_default_icon_list() first, and then gtk_window_set_icon_list()
	 * and gtk_window_set_icon(). If those don't meet your needs, look at
	 * gdk_window_set_icon_list(). Only if all those are too high-level do you
	 * want to fall back to gdk_window_set_icon().
	 * Params:
	 * iconWindow = a GdkWindow to use for the icon, or NULL to unset
	 * pixmap = a GdkPixmap to use as the icon, or NULL to unset
	 * mask = a 1-bit pixmap (GdkBitmap) to use as mask for pixmap, or NULL to have none
	 */
	public void setIcon(Window iconWindow, Pixmap pixmap, Bitmap mask)
	{
		// void gdk_window_set_icon (GdkWindow *window,  GdkWindow *icon_window,  GdkPixmap *pixmap,  GdkBitmap *mask);
		gdk_window_set_icon(gdkWindow, (iconWindow is null) ? null : iconWindow.getWindowStruct(), (pixmap is null) ? null : pixmap.getPixmapStruct(), (mask is null) ? null : mask.getBitmapStruct());
	}
	
	/**
	 * Windows may have a name used while minimized, distinct from the
	 * name they display in their titlebar. Most of the time this is a bad
	 * idea from a user interface standpoint. But you can set such a name
	 * with this function, if you like.
	 * After calling this with a non-NULL name, calls to gdk_window_set_title()
	 * will not update the icon title.
	 * Using NULL for name unsets the icon title; further calls to
	 * gdk_window_set_title() will again update the icon title as well.
	 * Params:
	 * name = name of window while iconified (minimized)
	 */
	public void setIconName(string name)
	{
		// void gdk_window_set_icon_name (GdkWindow *window,  const gchar *name);
		gdk_window_set_icon_name(gdkWindow, Str.toStringz(name));
	}
	
	/**
	 * Indicates to the window manager that window is a transient dialog
	 * associated with the application window parent. This allows the
	 * window manager to do things like center window on parent and
	 * keep window above parent.
	 * See gtk_window_set_transient_for() if you're using GtkWindow or
	 * GtkDialog.
	 * Params:
	 * parent = another toplevel GdkWindow
	 */
	public void setTransientFor(Window parent)
	{
		// void gdk_window_set_transient_for (GdkWindow *window,  GdkWindow *parent);
		gdk_window_set_transient_for(gdkWindow, (parent is null) ? null : parent.getWindowStruct());
	}
	
	/**
	 * When using GTK+, typically you should use gtk_window_set_role() instead
	 * of this low-level function.
	 * The window manager and session manager use a window's role to
	 * distinguish it from other kinds of window in the same application.
	 * When an application is restarted after being saved in a previous
	 * session, all windows with the same title and role are treated as
	 * interchangeable. So if you have two windows with the same title
	 * that should be distinguished for session management purposes, you
	 * should set the role on those windows. It doesn't matter what string
	 * you use for the role, as long as you have a different role for each
	 * non-interchangeable kind of window.
	 * Params:
	 * role = a string indicating its role
	 */
	public void setRole(string role)
	{
		// void gdk_window_set_role (GdkWindow *window,  const gchar *role);
		gdk_window_set_role(gdkWindow, Str.toStringz(role));
	}
	
	/**
	 * When using GTK+, typically you should use gtk_window_set_startup_id()
	 * instead of this low-level function.
	 * Since 2.12
	 * Params:
	 * startupId = a string with startup-notification identifier
	 */
	public void setStartupId(string startupId)
	{
		// void gdk_window_set_startup_id (GdkWindow *window,  const gchar *startup_id);
		gdk_window_set_startup_id(gdkWindow, Str.toStringz(startupId));
	}
	
	/**
	 * Sets the group leader window for window. By default,
	 * GDK sets the group leader for all toplevel windows
	 * to a global window implicitly created by GDK. With this function
	 * you can override this default.
	 * The group leader window allows the window manager to distinguish
	 * all windows that belong to a single application. It may for example
	 * allow users to minimize/unminimize all windows belonging to an
	 * application at once. You should only set a non-default group window
	 * if your application pretends to be multiple applications.
	 * Params:
	 * leader = group leader window, or NULL to restore the default group leader window
	 */
	public void setGroup(Window leader)
	{
		// void gdk_window_set_group (GdkWindow *window,  GdkWindow *leader);
		gdk_window_set_group(gdkWindow, (leader is null) ? null : leader.getWindowStruct());
	}
	
	/**
	 * Returns the group leader window for window. See gdk_window_set_group().
	 * Since 2.4
	 * Returns: the group leader window for window
	 */
	public Window getGroup()
	{
		// GdkWindow * gdk_window_get_group (GdkWindow *window);
		auto p = gdk_window_get_group(gdkWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Window(cast(GdkWindow*) p);
	}
	
	/**
	 * "Decorations" are the features the window manager adds to a toplevel GdkWindow.
	 * This function sets the traditional Motif window manager hints that tell the
	 * window manager which decorations you would like your window to have.
	 * Usually you should use gtk_window_set_decorated() on a GtkWindow instead of
	 * using the GDK function directly.
	 * The decorations argument is the logical OR of the fields in
	 * the GdkWMDecoration enumeration. If GDK_DECOR_ALL is included in the
	 * mask, the other bits indicate which decorations should be turned off.
	 * If GDK_DECOR_ALL is not included, then the other bits indicate
	 * which decorations should be turned on.
	 * Most window managers honor a decorations hint of 0 to disable all decorations,
	 * but very few honor all possible combinations of bits.
	 * Params:
	 * decorations = decoration hint mask
	 */
	public void setDecorations(GdkWMDecoration decorations)
	{
		// void gdk_window_set_decorations (GdkWindow *window,  GdkWMDecoration decorations);
		gdk_window_set_decorations(gdkWindow, decorations);
	}
	
	/**
	 * Returns the decorations set on the GdkWindow with gdk_window_set_decorations
	 * Params:
	 * decorations = The window decorations will be written here
	 * Returns: TRUE if the window has decorations set, FALSE otherwise.
	 */
	public int getDecorations(out GdkWMDecoration decorations)
	{
		// gboolean gdk_window_get_decorations (GdkWindow *window,  GdkWMDecoration *decorations);
		return gdk_window_get_decorations(gdkWindow, &decorations);
	}
	
	/**
	 * Sets hints about the window management functions to make available
	 * via buttons on the window frame.
	 * On the X backend, this function sets the traditional Motif window
	 * manager hint for this purpose. However, few window managers do
	 * anything reliable or interesting with this hint. Many ignore it
	 * entirely.
	 * The functions argument is the logical OR of values from the
	 * GdkWMFunction enumeration. If the bitmask includes GDK_FUNC_ALL,
	 * then the other bits indicate which functions to disable; if
	 * it doesn't include GDK_FUNC_ALL, it indicates which functions to
	 * enable.
	 * Params:
	 * functions = bitmask of operations to allow on window
	 */
	public void setFunctions(GdkWMFunction functions)
	{
		// void gdk_window_set_functions (GdkWindow *window,  GdkWMFunction functions);
		gdk_window_set_functions(gdkWindow, functions);
	}
	
	/**
	 * Warning
	 * gdk_window_get_toplevels has been deprecated since version 2.16 and should not be used in newly-written code. Use gdk_screen_get_toplevel_windows() instead.
	 * Obtains a list of all toplevel windows known to GDK on the default
	 * screen (see gdk_screen_get_toplevel_windows()).
	 * A toplevel window is a child of the root window (see
	 * gdk_get_default_root_window()).
	 * The returned list should be freed with g_list_free(), but
	 * its elements need not be freed.
	 * Returns: list of toplevel windows, free with g_list_free()
	 */
	public static ListG getToplevels()
	{
		// GList * gdk_window_get_toplevels (void);
		auto p = gdk_window_get_toplevels();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!ListG(cast(GList*) p);
	}
	
	/**
	 * Obtains the root window (parent all other windows are inside)
	 * for the default display and screen.
	 * Returns: the default root window
	 */
	public static Window getDefaultRootWindow()
	{
		// GdkWindow * gdk_get_default_root_window (void);
		auto p = gdk_get_default_root_window();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Window(cast(GdkWindow*) p);
	}
	
	/**
	 * Warning
	 * gdk_set_pointer_hooks has been deprecated since version 2.24 and should not be used in newly-written code. This function will go away in GTK 3 for lack of use cases.
	 * This function allows for hooking into the operation
	 * of getting the current location of the pointer. This
	 * is only useful for such low-level tools as an
	 * event recorder. Applications should never have any
	 * reason to use this facility.
	 * This function is not multihead safe. For multihead operation,
	 * see gdk_display_set_pointer_hooks().
	 * Params:
	 * newHooks = a table of pointers to functions for getting
	 * quantities related to the current pointer position,
	 * or NULL to restore the default table.
	 * Returns: the previous pointer hook table
	 */
	public static GdkPointerHooks* setPointerHooks(GdkPointerHooks* newHooks)
	{
		// GdkPointerHooks * gdk_set_pointer_hooks (const GdkPointerHooks *new_hooks);
		return gdk_set_pointer_hooks(newHooks);
	}
	
	/**
	 * Gets the offscreen pixmap that an offscreen window renders into.
	 * If you need to keep this around over window resizes, you need to
	 * add a reference to it.
	 * Since 2.18
	 * Returns: The offscreen pixmap, or NULL if not offscreen
	 */
	public Pixmap offscreenWindowGetPixmap()
	{
		// GdkPixmap * gdk_offscreen_window_get_pixmap (GdkWindow *window);
		auto p = gdk_offscreen_window_get_pixmap(gdkWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Pixmap(cast(GdkPixmap*) p);
	}
	
	/**
	 * Sets window to be embedded in embedder.
	 * To fully embed an offscreen window, in addition to calling this
	 * function, it is also necessary to handle the "pick-embedded-child"
	 * signal on the embedder and the "to-embedder" and
	 * "from-embedder" signals on window.
	 * Since 2.18
	 * Params:
	 * embedder = the GdkWindow that window gets embedded in
	 */
	public void offscreenWindowSetEmbedder(Window embedder)
	{
		// void gdk_offscreen_window_set_embedder (GdkWindow *window,  GdkWindow *embedder);
		gdk_offscreen_window_set_embedder(gdkWindow, (embedder is null) ? null : embedder.getWindowStruct());
	}
	
	/**
	 * Gets the window that window is embedded in.
	 * Since 2.18
	 * Returns: the embedding GdkWindow, or NULL if window is not an embedded offscreen window
	 */
	public Window offscreenWindowGetEmbedder()
	{
		// GdkWindow * gdk_offscreen_window_get_embedder (GdkWindow *window);
		auto p = gdk_offscreen_window_get_embedder(gdkWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!Window(cast(GdkWindow*) p);
	}
	
	/**
	 * This function informs GDK that the geometry of an embedded
	 * offscreen window has changed. This is necessary for GDK to keep
	 * track of which offscreen window the pointer is in.
	 * Since 2.18
	 */
	public void geometryChanged()
	{
		// void gdk_window_geometry_changed (GdkWindow *window);
		gdk_window_geometry_changed(gdkWindow);
	}
	
	/**
	 * Redirects drawing into window so that drawing to the
	 * window in the rectangle specified by src_x, src_y,
	 * width and height is also drawn into drawable at
	 * dest_x, dest_y.
	 * Only drawing between gdk_window_begin_paint_region() or
	 * gdk_window_begin_paint_rect() and gdk_window_end_paint() is
	 * redirected.
	 * Redirection is active until gdk_window_remove_redirection()
	 * is called.
	 * Since 2.14
	 * Params:
	 * drawable = a GdkDrawable
	 * srcX = x position in window
	 * srcY = y position in window
	 * destX = x position in drawable
	 * destY = y position in drawable
	 * width = width of redirection, or -1 to use the width of window
	 * height = height of redirection or -1 to use the height of window
	 */
	public void redirectToDrawable(Drawable drawable, int srcX, int srcY, int destX, int destY, int width, int height)
	{
		// void gdk_window_redirect_to_drawable (GdkWindow *window,  GdkDrawable *drawable,  gint src_x,  gint src_y,  gint dest_x,  gint dest_y,  gint width,  gint height);
		gdk_window_redirect_to_drawable(gdkWindow, (drawable is null) ? null : drawable.getDrawableStruct(), srcX, srcY, destX, destY, width, height);
	}
	
	/**
	 * Removes any active redirection started by
	 * gdk_window_redirect_to_drawable().
	 * Since 2.14
	 */
	public void removeRedirection()
	{
		// void gdk_window_remove_redirection (GdkWindow *window);
		gdk_window_remove_redirection(gdkWindow);
	}
}
