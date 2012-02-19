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
 * inFile  = gdk-X-Window-System-Interaction.html
 * outPack = gdk
 * outFile = X11
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = X11
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_x11_
 * omit structs:
 * omit prefixes:
 * 	- gdkx_visual_get
 * 	- gdkx_colormap_get
 * 	- gdk_pixmap_foreign_new
 * 	- gdk_pixmap_foreign_new_for_display
 * 	- gdk_pixmap_foreign_new_for_screen
 * 	- gdk_window_foreign_new_for_display
 * 	- gdk_xid_table_lookup_for_display
 * 	- gdk_window_lookup_for_display
 * 	- gdk_pixmap_lookup_for_display
 * 	- gdk_x11_lookup_xdisplay
 * 	- gdk_net_wm_supports
 * 	- gdk_x11_screen_supports_net_wm_hint
 * 	- gdk_x11_screen_get_window_manager_name
 * 	- gdk_x11_screen_lookup_visual
 * 	- gdk_x11_display_get_user_time
 * 	- gdk_x11_colormap_foreign_new
 * 	- gdk_x11_colormap_get_xcolormap
 * 	- gdk_x11_colormap_get_xdisplay
 * 	- gdk_x11_cursor_get_xcursor
 * 	- gdk_x11_cursor_get_xdisplay
 * 	- gdk_x11_display_get_xdisplay
 * 	- gdk_x11_display_grab
 * 	- gdk_x11_display_ungrab
 * 	- gdk_x11_display_set_cursor_theme
 * 	- gdk_x11_register_standard_event_type
 * 	- gdk_x11_drawable_get_xdisplay
 * 	- gdk_x11_font_get_xdisplay
 * 	- gdk_x11_gc_get_xdisplay
 * 	- gdk_x11_gc_get_xgc
 * 	- gdk_x11_get_default_root_xwindow
 * 	- gdk_x11_get_default_xdisplay
 * 	- gdk_x11_image_get_xdisplay
 * 	- gdk_x11_image_get_ximage
 * 	- gdk_x11_screen_get_screen_number
 * 	- gdk_x11_screen_get_xscreen
 * 	- gdk_x11_visual_get_xvisual
 * 	- gdk_x11_atom_to_xatom
 * 	- gdk_x11_atom_to_xatom_for_display
 * 	- gdk_x11_xatom_to_atom
 * 	- gdk_x11_xatom_to_atom_for_display
 * 	- gdk_x11_get_xatom_by_name
 * 	- gdk_x11_get_xatom_by_name_for_display
 * 	- gdk_x11_get_xatom_name
 * 	- gdk_x11_get_xatom_name_for_display
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Drawable
 * 	- gdk.Display
 * 	- gdk.Window
 * 	- gdk.Font
 * 	- gdk.Pixmap
 * structWrap:
 * 	- GdkDisplay* -> Display
 * 	- GdkDrawable* -> Drawable
 * 	- GdkFont* -> Font
 * 	- GdkPixmap* -> Pixmap
 * 	- GdkWindow* -> Window
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.X11;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;


private import glib.Str;
private import gdk.Drawable;
private import gdk.Display;
private import gdk.Window;
private import gdk.Font;
private import gdk.Pixmap;




/**
 * Description
 */
public class X11
{
	
	/**
	 */
	
	/**
	 * Wraps a native window for the default display in a GdkWindow.
	 * This may fail if the window has been destroyed.
	 * For example in the X backend, a native window handle is an Xlib
	 * XID.
	 * Params:
	 * anid = a native window handle.
	 * Returns: the newly-created GdkWindow wrapper for the native window or NULL if the window has been destroyed.
	 */
	public static Window gdkWindowForeignNew(GdkNativeWindow anid)
	{
		// GdkWindow* gdk_window_foreign_new (GdkNativeWindow anid);
		auto p = gdk_window_foreign_new(anid);
		if(p is null)
		{
			return null;
		}
		return new Window(cast(GdkWindow*) p);
	}
	
	/**
	 * Returns the Gdk object associated with the given X id for the default
	 * display.
	 * Params:
	 * xid = an X id.
	 * Returns: the associated Gdk object, which may be a GdkPixmap, a GdkWindow or a GdkFont or NULL if no object is associated with the X id.
	 */
	public static void* gdkXidTableLookup(uint xid)
	{
		// gpointer gdk_xid_table_lookup (XID xid);
		return gdk_xid_table_lookup(xid);
	}
	
	/**
	 * Looks up the GdkWindow that wraps the given native window handle.
	 * For example in the X backend, a native window handle is an Xlib
	 * XID.
	 * Params:
	 * anid = a native window handle.
	 * Returns: the GdkWindow wrapper for the native window, or NULL if there is none.
	 */
	public static Window gdkWindowLookup(GdkNativeWindow anid)
	{
		// GdkWindow* gdk_window_lookup (GdkNativeWindow anid);
		auto p = gdk_window_lookup(anid);
		if(p is null)
		{
			return null;
		}
		return new Window(cast(GdkWindow*) p);
	}
	
	/**
	 * Looks up the GdkPixmap that wraps the given native pixmap handle.
	 * For example in the X backend, a native pixmap handle is an Xlib
	 * XID.
	 * Params:
	 * anid = a native pixmap handle.
	 * Returns: the GdkPixmap wrapper for the native pixmap, or NULL if there is none.
	 */
	public static Pixmap gdkPixmapLookup(GdkNativeWindow anid)
	{
		// GdkPixmap* gdk_pixmap_lookup (GdkNativeWindow anid);
		auto p = gdk_pixmap_lookup(anid);
		if(p is null)
		{
			return null;
		}
		return new Pixmap(cast(GdkPixmap*) p);
	}
	
	/**
	 * Routine to get the current X server time stamp.
	 * Params:
	 * window = a GdkWindow, used for communication with the server.
	 *  The window must have GDK_PROPERTY_CHANGE_MASK in its
	 *  events mask or a hang will result.
	 * Returns: the time stamp.
	 */
	public static uint getServerTime(Window window)
	{
		// guint32 gdk_x11_get_server_time (GdkWindow *window);
		return gdk_x11_get_server_time((window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Gets the XID of the specified output/monitor.
	 * If the X server does not support version 1.2 of the RANDR
	 * extension, 0 is returned.
	 * Since 2.14
	 * Params:
	 * screen = a GdkScreen
	 * monitorNum = number of the monitor, between 0 and gdk_screen_get_n_monitors (screen)
	 * Returns: the XID of the monitor
	 */
	public static uint screenGetMonitorOutput(GdkScreen* screen, int monitorNum)
	{
		// XID gdk_x11_screen_get_monitor_output (GdkScreen *screen,  gint monitor_num);
		return gdk_x11_screen_get_monitor_output(screen, monitorNum);
	}
	
	/**
	 * The application can use this call to update the _NET_WM_USER_TIME
	 * property on a toplevel window. This property stores an Xserver
	 * time which represents the time of the last user input event
	 * received for this window. This property may be used by the window
	 * manager to alter the focus, stacking, and/or placement behavior of
	 * windows when they are mapped depending on whether the new window
	 * was created by a user action or is a "pop-up" window activated by a
	 * timer or some other event.
	 * Note that this property is automatically updated by GDK, so this
	 * function should only be used by applications which handle input
	 * events bypassing GDK.
	 * Since 2.6
	 * Params:
	 * window = A toplevel GdkWindow
	 * timestamp = An XServer timestamp to which the property should be set
	 */
	public static void windowSetUserTime(Window window, uint timestamp)
	{
		// void gdk_x11_window_set_user_time (GdkWindow *window,  guint32 timestamp);
		gdk_x11_window_set_user_time((window is null) ? null : window.getWindowStruct(), timestamp);
	}
	
	/**
	 * Moves the window to the correct workspace when running under a
	 * window manager that supports multiple workspaces, as described
	 * in the Extended
	 * Window Manager Hints. Will not do anything if the
	 * window is already on all workspaces.
	 * Since 2.8
	 * Params:
	 * window = a GdkWindow
	 */
	public static void windowMoveToCurrentDesktop(Window window)
	{
		// void gdk_x11_window_move_to_current_desktop  (GdkWindow *window);
		gdk_x11_window_move_to_current_desktop((window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Gets the startup notification ID for a display.
	 * Since 2.12
	 * Params:
	 * display = a GdkDisplay
	 * Returns: the startup notification ID for display
	 */
	public static string displayGetStartupNotificationId(Display display)
	{
		// const gchar * gdk_x11_display_get_startup_notification_id  (GdkDisplay *display);
		return Str.toString(gdk_x11_display_get_startup_notification_id((display is null) ? null : display.getDisplayStruct()));
	}
	
	/**
	 * Returns the X resource (window or pixmap) belonging to a GdkDrawable.
	 * Params:
	 * drawable = a GdkDrawable.
	 * Returns: the ID of drawable's X resource.
	 */
	public static uint drawableGetXid(Drawable drawable)
	{
		// XID gdk_x11_drawable_get_xid (GdkDrawable *drawable);
		return gdk_x11_drawable_get_xid((drawable is null) ? null : drawable.getDrawableStruct());
	}
	
	/**
	 * Warning
	 * gdk_x11_font_get_name is deprecated and should not be used in newly-written code.
	 * Return the X Logical Font Description (for font->type == GDK_FONT_FONT)
	 * or comma separated list of XLFDs (for font->type == GDK_FONT_FONTSET)
	 * that was used to load the font. If the same font was loaded
	 * via multiple names, which name is returned is undefined.
	 * Params:
	 * font = a GdkFont.
	 * Returns: the name of the font. This string is owned by GDK and must not be modified or freed.
	 */
	public static string fontGetName(Font font)
	{
		// const char * gdk_x11_font_get_name (GdkFont *font);
		return Str.toString(gdk_x11_font_get_name((font is null) ? null : font.getFontStruct()));
	}
	
	/**
	 * Warning
	 * gdk_x11_font_get_xfont is deprecated and should not be used in newly-written code.
	 * Returns the X font belonging to a GdkFont.
	 * Params:
	 * font = a GdkFont.
	 * Returns: an Xlib XFontStruct* or an XFontSet.
	 */
	public static void* fontGetXfont(Font font)
	{
		// gpointer gdk_x11_font_get_xfont (GdkFont *font);
		return gdk_x11_font_get_xfont((font is null) ? null : font.getFontStruct());
	}
	
	/**
	 * Gets the default GTK+ screen number.
	 * Returns: returns the screen number specified by the --display command line option or the DISPLAY environment variable when gdk_init() calls XOpenDisplay().
	 */
	public static int getDefaultScreen()
	{
		// gint gdk_x11_get_default_screen (void);
		return gdk_x11_get_default_screen();
	}
	
	/**
	 * Call gdk_x11_display_grab() on the default display.
	 * To ungrab the server again, use gdk_x11_ungrab_server().
	 * gdk_x11_grab_server()/gdk_x11_ungrab_server() calls can be nested.
	 */
	public static void grabServer()
	{
		// void gdk_x11_grab_server (void);
		gdk_x11_grab_server();
	}
	
	/**
	 * Ungrab the default display after it has been grabbed with
	 * gdk_x11_grab_server().
	 */
	public static void ungrabServer()
	{
		// void gdk_x11_ungrab_server (void);
		gdk_x11_ungrab_server();
	}
}
