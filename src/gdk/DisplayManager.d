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
 * inFile  = GdkDisplayManager.html
 * outPack = gdk
 * outFile = DisplayManager
 * strct   = GdkDisplayManager
 * realStrct=
 * ctorStrct=
 * clss    = DisplayManager
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_display_manager_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListSG
 * 	- gdk.Display
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- GdkDisplay* -> Display
 * 	- GdkDisplayManager* -> DisplayManager
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.DisplayManager;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ListSG;
private import gdk.Display;



private import gobject.ObjectG;

/**
 * Description
 * The purpose of the GdkDisplayManager singleton object is to offer
 * notification when displays appear or disappear or the default display
 * changes.
 * You can use gdk_display_manager_get() to obtain the GdkDisplayManager
 * singleton, but that should be rarely necessary. Typically, initializing
 * GTK+ opens a display that you can work with without ever accessing the
 * GdkDisplayManager.
 * The GDK library can be built with support for multiple backends.
 * The GdkDisplayManager object determines which backend is used
 * at runtime.
 * When writing backend-specific code that is supposed to work with
 * multiple GDK backends, you have to consider both compile time and
 * runtime. At compile time, use the GDK_WINDOWING_X11, GDK_WINDOWING_WIN32
 * macros, etc. to find out which backends are present in the GDK library
 * you are building your application against. At runtime, use type-check
 * macros like GDK_IS_X11_DISPLAY() to find out which backend is in use:
 * $(DDOC_COMMENT example)
 */
public class DisplayManager : ObjectG
{
	
	/** the main Gtk struct */
	protected GdkDisplayManager* gdkDisplayManager;
	
	
	public GdkDisplayManager* getDisplayManagerStruct()
	{
		return gdkDisplayManager;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkDisplayManager;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkDisplayManager* gdkDisplayManager)
	{
		super(cast(GObject*)gdkDisplayManager);
		this.gdkDisplayManager = gdkDisplayManager;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdkDisplayManager = cast(GdkDisplayManager*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Display, DisplayManager)[] onDisplayOpenedListeners;
	/**
	 * The ::display-opened signal is emitted when a display is opened.
	 * Since 2.2
	 */
	void addOnDisplayOpened(void delegate(Display, DisplayManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("display-opened" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"display-opened",
			cast(GCallback)&callBackDisplayOpened,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["display-opened"] = 1;
		}
		onDisplayOpenedListeners ~= dlg;
	}
	extern(C) static void callBackDisplayOpened(GdkDisplayManager* managerStruct, GdkDisplay* display, DisplayManager _displayManager)
	{
		foreach ( void delegate(Display, DisplayManager) dlg ; _displayManager.onDisplayOpenedListeners )
		{
			dlg(ObjectG.getDObject!(Display)(display), _displayManager);
		}
	}
	
	
	/**
	 * Gets the singleton GdkDisplayManager object.
	 * When called for the first time, this function consults the
	 * GDK_BACKEND environment variable to find out which
	 * of the supported GDK backends to use (in case GDK has been compiled
	 * with multiple backends).
	 * Since 2.2
	 * Returns: The global GdkDisplayManager singleton; gdk_parse_args(), gdk_init(), or gdk_init_check() must have been called first. [transfer none]
	 */
	public static DisplayManager get()
	{
		// GdkDisplayManager * gdk_display_manager_get (void);
		auto p = gdk_display_manager_get();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DisplayManager)(cast(GdkDisplayManager*) p);
	}
	
	/**
	 * Gets the default GdkDisplay.
	 * Since 2.2
	 * Returns: a GdkDisplay, or NULL if there is no default display. [transfer none]
	 */
	public Display getDefaultDisplay()
	{
		// GdkDisplay * gdk_display_manager_get_default_display  (GdkDisplayManager *manager);
		auto p = gdk_display_manager_get_default_display(gdkDisplayManager);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) p);
	}
	
	/**
	 * Sets display as the default display.
	 * Since 2.2
	 * Params:
	 * display = a GdkDisplay
	 */
	public void setDefaultDisplay(Display display)
	{
		// void gdk_display_manager_set_default_display  (GdkDisplayManager *manager,  GdkDisplay *display);
		gdk_display_manager_set_default_display(gdkDisplayManager, (display is null) ? null : display.getDisplayStruct());
	}
	
	/**
	 * List all currently open displays.
	 * Since 2.2
	 * Returns: a newly allocated GSList of GdkDisplay objects. Free with g_slist_free() when you are done with it. [transfer container][element-type GdkDisplay]
	 */
	public ListSG listDisplays()
	{
		// GSList * gdk_display_manager_list_displays (GdkDisplayManager *manager);
		auto p = gdk_display_manager_list_displays(gdkDisplayManager);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListSG)(cast(GSList*) p);
	}
	
	/**
	 * Opens a display.
	 * Params:
	 * name = the name of the display to open
	 * Returns: a GdkDisplay, or NULL if the display could not be opened. [transfer none] Since 3.0
	 */
	public Display openDisplay(string name)
	{
		// GdkDisplay * gdk_display_manager_open_display (GdkDisplayManager *manager,  const gchar *name);
		auto p = gdk_display_manager_open_display(gdkDisplayManager, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) p);
	}
}
