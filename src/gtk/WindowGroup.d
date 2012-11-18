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
 * inFile  = GtkWindowGroup.html
 * outPack = gtk
 * outFile = WindowGroup
 * strct   = GtkWindowGroup
 * realStrct=
 * ctorStrct=
 * clss    = WindowGroup
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_window_group_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ListG
 * 	- gdk.Device
 * 	- gtk.Widget
 * 	- gtk.Window
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdkDevice* -> Device
 * 	- GtkWidget* -> Widget
 * 	- GtkWindow* -> Window
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.WindowGroup;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ListG;
private import gdk.Device;
private import gtk.Widget;
private import gtk.Window;



private import gobject.ObjectG;

/**
 * Description
 * GtkWindowGroup objects are referenced by each window in the group,
 * so once you have added all windows to a GtkWindowGroup, you can drop
 * the initial reference to the window group with g_object_unref(). If the
 * windows in the window group are subsequently destroyed, then they will
 * be removed from the window group and drop their references on the window
 * group; when all window have been removed, the window group will be
 * freed.
 */
public class WindowGroup : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkWindowGroup* gtkWindowGroup;
	
	
	public GtkWindowGroup* getWindowGroupStruct()
	{
		return gtkWindowGroup;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkWindowGroup;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkWindowGroup* gtkWindowGroup)
	{
		super(cast(GObject*)gtkWindowGroup);
		this.gtkWindowGroup = gtkWindowGroup;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkWindowGroup = cast(GtkWindowGroup*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkWindowGroup object. Grabs added with
	 * gtk_grab_add() only affect windows within the same GtkWindowGroup.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWindowGroup * gtk_window_group_new (void);
		auto p = gtk_window_group_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_window_group_new()");
		}
		this(cast(GtkWindowGroup*) p);
	}
	
	/**
	 * Adds a window to a GtkWindowGroup.
	 * Params:
	 * window = the GtkWindow to add
	 */
	public void addWindow(Window window)
	{
		// void gtk_window_group_add_window (GtkWindowGroup *window_group,  GtkWindow *window);
		gtk_window_group_add_window(gtkWindowGroup, (window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Removes a window from a GtkWindowGroup.
	 * Params:
	 * window = the GtkWindow to remove
	 */
	public void removeWindow(Window window)
	{
		// void gtk_window_group_remove_window (GtkWindowGroup *window_group,  GtkWindow *window);
		gtk_window_group_remove_window(gtkWindowGroup, (window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Returns a list of the GtkWindows that belong to window_group.
	 * Since 2.14
	 * Returns: A newly-allocated list of windows inside the group. [element-type GtkWindow][transfer container]
	 */
	public ListG listWindows()
	{
		// GList * gtk_window_group_list_windows (GtkWindowGroup *window_group);
		auto p = gtk_window_group_list_windows(gtkWindowGroup);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Gets the current grab widget of the given group,
	 * see gtk_grab_add().
	 * Since 2.22
	 * Returns: the current grab widget of the group. [transfer none]
	 */
	public Widget getCurrentGrab()
	{
		// GtkWidget * gtk_window_group_get_current_grab (GtkWindowGroup *window_group);
		auto p = gtk_window_group_get_current_grab(gtkWindowGroup);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Returns the current grab widget for device, or NULL if none.
	 * Params:
	 * device = a GdkDevice
	 * Returns: The grab widget, or NULL. [transfer none] Since 3.0
	 */
	public Widget getCurrentDeviceGrab(Device device)
	{
		// GtkWidget * gtk_window_group_get_current_device_grab  (GtkWindowGroup *window_group,  GdkDevice *device);
		auto p = gtk_window_group_get_current_device_grab(gtkWindowGroup, (device is null) ? null : device.getDeviceStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
}
