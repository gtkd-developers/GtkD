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


module gdk.X11;

private import gdk.Display;
private import gdk.Window;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
public  import gtkc.gdktypes;


/** */
/**
 * Looks up the #GdkWindow that wraps the given native window handle.
 *
 * Params:
 *     display = the #GdkDisplay corresponding to the
 *         window handle
 *     window = an Xlib Window
 *
 * Return: the #GdkWindow wrapper for the native
 *     window, or %NULL if there is none.
 *
 * Since: 2.24
 */
public Window lookupForDisplay(Display display, uint window)
{
	auto p = gdk_x11_window_lookup_for_display((display is null) ? null : display.getDisplayStruct(), window);

	if(p is null)
	{
		return null;
	}

	return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
}

/**
 */

/**
 * Gets the number of the workspace @window is on.
 *
 * Returns: the current workspace of @window
 *
 * Since: 3.10
 */
public uint getDesktop(Window window)
{
	return gdk_x11_window_get_desktop(cast(GdkWindow*)(window is null) ? null : window.getWindowStruct());
}

/**
 * Returns the X resource (window) belonging to a #GdkWindow.
 *
 * Returns: the ID of @drawable’s X resource.
 */
public uint getXid(Window window)
{
	return gdk_x11_window_get_xid(cast(GdkWindow*)(window is null) ? null : window.getWindowStruct());
}

/**
 * Moves the window to the correct workspace when running under a
 * window manager that supports multiple workspaces, as described
 * in the [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec) specification.
 * Will not do anything if the window is already on all workspaces.
 *
 * Since: 2.8
 */
public void moveToCurrentDesktop(Window window)
{
	gdk_x11_window_move_to_current_desktop(cast(GdkWindow*)(window is null) ? null : window.getWindowStruct());
}

/**
 * Moves the window to the given workspace when running unde a
 * window manager that supports multiple workspaces, as described
 * in the [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec) specification.
 *
 * Params:
 *     desktop = the number of the workspace to move the window to
 *
 * Since: 3.10
 */
public void moveToDesktop(Window window, uint desktop)
{
	gdk_x11_window_move_to_desktop(cast(GdkWindow*)(window is null) ? null : window.getWindowStruct(), desktop);
}

/**
 * This is the same as gdk_window_set_shadow_width() but it only works
 * on GdkX11Window.
 *
 * Deprecated: Use gdk_window_set_shadow_width() instead.
 *
 * Params:
 *     left = The left extent
 *     right = The right extent
 *     top = The top extent
 *     bottom = The bottom extent
 *
 * Since: 3.10
 */
public void setFrameExtents(Window window, int left, int right, int top, int bottom)
{
	gdk_x11_window_set_frame_extents(cast(GdkWindow*)(window is null) ? null : window.getWindowStruct(), left, right, top, bottom);
}

/**
 * This function can be used to disable frame synchronization for a window.
 * Normally frame synchronziation will be enabled or disabled based on whether
 * the system has a compositor that supports frame synchronization, but if
 * the window is not directly managed by the window manager, then frame
 * synchronziation may need to be disabled. This is the case for a window
 * embedded via the XEMBED protocol.
 *
 * Params:
 *     frameSyncEnabled = whether frame-synchronization should be enabled
 *
 * Since: 3.8
 */
public void setFrameSyncEnabled(Window window, bool frameSyncEnabled)
{
	gdk_x11_window_set_frame_sync_enabled(cast(GdkWindow*)(window is null) ? null : window.getWindowStruct(), frameSyncEnabled);
}

/**
 * Set a hint for the window manager, requesting that the titlebar
 * should be hidden when the window is maximized.
 *
 * Note that this property is automatically updated by GTK+, so this
 * function should only be used by applications which do not use GTK+
 * to create toplevel windows.
 *
 * Params:
 *     hideTitlebarWhenMaximized = whether to hide the titlebar when
 *         maximized
 *
 * Since: 3.4
 */
public void setHideTitlebarWhenMaximized(Window window, bool hideTitlebarWhenMaximized)
{
	gdk_x11_window_set_hide_titlebar_when_maximized(cast(GdkWindow*)(window is null) ? null : window.getWindowStruct(), hideTitlebarWhenMaximized);
}

/**
 * GTK+ applications can request a dark theme variant. In order to
 * make other applications - namely window managers using GTK+ for
 * themeing - aware of this choice, GTK+ uses this function to
 * export the requested theme variant as _GTK_THEME_VARIANT property
 * on toplevel windows.
 *
 * Note that this property is automatically updated by GTK+, so this
 * function should only be used by applications which do not use GTK+
 * to create toplevel windows.
 *
 * Params:
 *     variant = the theme variant to export
 *
 * Since: 3.2
 */
public void setThemeVariant(Window window, string variant)
{
	gdk_x11_window_set_theme_variant(cast(GdkWindow*)(window is null) ? null : window.getWindowStruct(), Str.toStringz(variant));
}

/**
 * The application can use this call to update the _NET_WM_USER_TIME
 * property on a toplevel window.  This property stores an Xserver
 * time which represents the time of the last user input event
 * received for this window.  This property may be used by the window
 * manager to alter the focus, stacking, and/or placement behavior of
 * windows when they are mapped depending on whether the new window
 * was created by a user action or is a "pop-up" window activated by a
 * timer or some other event.
 *
 * Note that this property is automatically updated by GDK, so this
 * function should only be used by applications which handle input
 * events bypassing GDK.
 *
 * Params:
 *     timestamp = An XServer timestamp to which the property should be set
 *
 * Since: 2.6
 */
public void setUserTime(Window window, uint timestamp)
{
	gdk_x11_window_set_user_time(cast(GdkWindow*)(window is null) ? null : window.getWindowStruct(), timestamp);
}

/**
 * This function modifies or removes an arbitrary X11 window
 * property of type UTF8_STRING.  If the given @window is
 * not a toplevel window, it is ignored.
 *
 * Params:
 *     name = Property name, will be interned as an X atom
 *     value = Property value, or %NULL to delete
 *
 * Since: 3.4
 */
public void setUtf8Property(Window window, string name, string value)
{
	gdk_x11_window_set_utf8_property(cast(GdkWindow*)(window is null) ? null : window.getWindowStruct(), Str.toStringz(name), Str.toStringz(value));
}
