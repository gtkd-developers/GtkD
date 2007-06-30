/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * imports:
 * 	- gdk.DisplayManager
 * 	- gdk.Display
 * 	- glib.ListSG
 * 	- gdk.Device
 * structWrap:
 * 	- GSList* -> ListSG
 * 	- GdkDevice* -> Device
 * 	- GdkDisplay* -> Display
 * 	- GdkDisplayManager* -> DisplayManager
 * module aliases:
 * local aliases:
 */

module gdk.DisplayManager;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gdktypes;

private import gtkc.gdk;


private import gdk.DisplayManager;
private import gdk.Display;
private import glib.ListSG;
private import gdk.Device;




/**
 * Description
 * The purpose of the GdkDisplayManager singleton object is to offer
 * notification when displays appear or disappear or the default display
 * changes.
 */
private import gobject.ObjectG;
public class DisplayManager : ObjectG
{
	
	/** the main Gtk struct */
	protected GdkDisplayManager* gdkDisplayManager;
	
	
	public GdkDisplayManager* getDisplayManagerStruct()
	{
		return gdkDisplayManager;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkDisplayManager;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkDisplayManager* gdkDisplayManager)
	{
		version(noAssert)
		{
			if ( gdkDisplayManager is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gdkDisplayManager is null on constructor").newline;
				}
				else
				{
					printf("struct gdkDisplayManager is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gdkDisplayManager !is null, "struct gdkDisplayManager is null on constructor");
		}
		super(cast(GObject*)gdkDisplayManager);
		this.gdkDisplayManager = gdkDisplayManager;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(Display, DisplayManager)[] onDisplayOpenedListeners;
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
	extern(C) static void callBackDisplayOpened(GdkDisplayManager* displayManagerStruct, GdkDisplay* display, DisplayManager displayManager)
	{
		bool consumed = false;
		
		foreach ( void delegate(Display, DisplayManager) dlg ; displayManager.onDisplayOpenedListeners )
		{
			dlg(new Display(display), displayManager);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Returns the global GdkDisplayManager singleton; gdk_parse_pargs(),
	 * gdk_init(), or gdk_init_check() must have been called first.
	 * Returns:
	 *  the singleton GdkDisplayManager object.
	 * Since 2.2
	 */
	public static DisplayManager get()
	{
		// GdkDisplayManager* gdk_display_manager_get (void);
		return new DisplayManager( gdk_display_manager_get() );
	}
	
	/**
	 * Gets the default GdkDisplay.
	 * display_manager:
	 *  a GdkDisplayManager
	 * Returns:
	 *  a GdkDisplay, or NULL if there is no default
	 *  display.
	 * Since 2.2
	 */
	public Display getDefaultDisplay()
	{
		// GdkDisplay* gdk_display_manager_get_default_display  (GdkDisplayManager *display_manager);
		return new Display( gdk_display_manager_get_default_display(gdkDisplayManager) );
	}
	
	/**
	 * Sets display as the default display.
	 * display_manager:
	 *  a GdkDisplayManager
	 * display:
	 *  a GdkDisplay
	 * Since 2.2
	 */
	public void setDefaultDisplay(Display display)
	{
		// void gdk_display_manager_set_default_display  (GdkDisplayManager *display_manager,  GdkDisplay *display);
		gdk_display_manager_set_default_display(gdkDisplayManager, (display is null) ? null : display.getDisplayStruct());
	}
	
	/**
	 * List all currently open displays.
	 * display_manager:
	 *  a GdkDisplayManager
	 * Returns:
	 *  a newly allocated GSList of GdkDisplay objects.
	 *  Free this list with g_slist_free() when you are done with it.
	 * Since 2.2
	 */
	public ListSG listDisplays()
	{
		// GSList* gdk_display_manager_list_displays (GdkDisplayManager *display_manager);
		return new ListSG( gdk_display_manager_list_displays(gdkDisplayManager) );
	}
	
	/**
	 * Returns the core pointer device for the given display
	 * display:
	 *  a GdkDisplay
	 * Returns:
	 *  the core pointer device; this is owned by the
	 *  display and should not be freed.
	 * Since 2.2
	 * Property Details
	 * The "default-display" property
	 *  "default-display" GdkDisplay : Read / Write
	 * The default display for GDK.
	 * Signal Details
	 * The "display-opened" signal
	 * void user_function (GdkDisplayManager *display_manager,
	 *  GdkDisplay *display,
	 *  gpointer user_data) : Run Last
	 * The ::display_opened signal is emitted when a display is opened.
	 * display_manager:
	 *  the object on which the signal is emitted
	 * display:
	 *  the opened display
	 * user_data:
	 * user data set when the signal handler was connected.
	 * Since 2.2
	 */
	public static Device gdkDisplayGetCorePointer(Display display)
	{
		// GdkDevice* gdk_display_get_core_pointer (GdkDisplay *display);
		return new Device( gdk_display_get_core_pointer((display is null) ? null : display.getDisplayStruct()) );
	}
}
