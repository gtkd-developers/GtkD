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


module gdk.DisplayManager;

private import gdk.Display;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.ListSG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * A singleton object that offers notification when displays appear or
 * disappear.
 * 
 * You can use [func@Gdk.DisplayManager.get] to obtain the `GdkDisplayManager`
 * singleton, but that should be rarely necessary. Typically, initializing
 * GTK opens a display that you can work with without ever accessing the
 * `GdkDisplayManager`.
 * 
 * The GDK library can be built with support for multiple backends.
 * The `GdkDisplayManager` object determines which backend is used
 * at runtime.
 * 
 * In the rare case that you need to influence which of the backends
 * is being used, you can use [func@Gdk.set_allowed_backends]. Note
 * that you need to call this function before initializing GTK.
 * 
 * ## Backend-specific code
 * 
 * When writing backend-specific code that is supposed to work with
 * multiple GDK backends, you have to consider both compile time and
 * runtime. At compile time, use the `GDK_WINDOWING_X11`, `GDK_WINDOWING_WIN32`
 * macros, etc. to find out which backends are present in the GDK library
 * you are building your application against. At runtime, use type-check
 * macros like GDK_IS_X11_DISPLAY() to find out which backend is in use:
 * 
 * ```c
 * #ifdef GDK_WINDOWING_X11
 * if (GDK_IS_X11_DISPLAY (display))
 * {
 * // make X11-specific calls here
 * }
 * else
 * #endif
 * #ifdef GDK_WINDOWING_MACOS
 * if (GDK_IS_MACOS_DISPLAY (display))
 * {
 * // make Quartz-specific calls here
 * }
 * else
 * #endif
 * g_error ("Unsupported GDK backend");
 * ```
 */
public class DisplayManager : ObjectG
{
	/** the main Gtk struct */
	protected GdkDisplayManager* gdkDisplayManager;

	/** Get the main Gtk struct */
	public GdkDisplayManager* getDisplayManagerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkDisplayManager;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkDisplayManager;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkDisplayManager* gdkDisplayManager, bool ownedRef = false)
	{
		this.gdkDisplayManager = gdkDisplayManager;
		super(cast(GObject*)gdkDisplayManager, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_display_manager_get_type();
	}

	/**
	 * Gets the singleton `GdkDisplayManager` object.
	 *
	 * When called for the first time, this function consults the
	 * `GDK_BACKEND` environment variable to find out which of the
	 * supported GDK backends to use (in case GDK has been compiled
	 * with multiple backends).
	 *
	 * Applications can use [func@set_allowed_backends] to limit what
	 * backends wil be used.
	 *
	 * Returns: The global `GdkDisplayManager` singleton
	 */
	public static DisplayManager get()
	{
		auto __p = gdk_display_manager_get();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DisplayManager)(cast(GdkDisplayManager*) __p);
	}

	/**
	 * Gets the default `GdkDisplay`.
	 *
	 * Returns: a `GdkDisplay`
	 */
	public Display getDefaultDisplay()
	{
		auto __p = gdk_display_manager_get_default_display(gdkDisplayManager);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * List all currently open displays.
	 *
	 * Returns: a newly
	 *     allocated `GSList` of `GdkDisplay` objects
	 */
	public ListSG listDisplays()
	{
		auto __p = gdk_display_manager_list_displays(gdkDisplayManager);

		if(__p is null)
		{
			return null;
		}

		return new ListSG(cast(GSList*) __p);
	}

	/**
	 * Opens a display.
	 *
	 * Params:
	 *     name = the name of the display to open
	 *
	 * Returns: a `GdkDisplay`, or %NULL
	 *     if the display could not be opened
	 */
	public Display openDisplay(string name)
	{
		auto __p = gdk_display_manager_open_display(gdkDisplayManager, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * Sets @display as the default display.
	 *
	 * Params:
	 *     display = a `GdkDisplay`
	 */
	public void setDefaultDisplay(Display display)
	{
		gdk_display_manager_set_default_display(gdkDisplayManager, (display is null) ? null : display.getDisplayStruct());
	}

	/**
	 * Emitted when a display is opened.
	 *
	 * Params:
	 *     display = the opened display
	 */
	gulong addOnDisplayOpened(void delegate(Display, DisplayManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "display-opened", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
