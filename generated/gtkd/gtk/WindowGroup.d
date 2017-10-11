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


module gtk.WindowGroup;

private import gdk.Device;
private import glib.ConstructionException;
private import glib.ListG;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * A #GtkWindowGroup restricts the effect of grabs to windows
 * in the same group, thereby making window groups almost behave
 * like separate applications.
 * 
 * A window can be a member in at most one window group at a time.
 * Windows that have not been explicitly assigned to a group are
 * implicitly treated like windows of the default window group.
 * 
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

	/** Get the main Gtk struct */
	public GtkWindowGroup* getWindowGroupStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkWindowGroup;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkWindowGroup;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkWindowGroup* gtkWindowGroup, bool ownedRef = false)
	{
		this.gtkWindowGroup = gtkWindowGroup;
		super(cast(GObject*)gtkWindowGroup, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_window_group_get_type();
	}

	/**
	 * Creates a new #GtkWindowGroup object. Grabs added with
	 * gtk_grab_add() only affect windows within the same #GtkWindowGroup.
	 *
	 * Returns: a new #GtkWindowGroup.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_window_group_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkWindowGroup*) p, true);
	}

	/**
	 * Adds a window to a #GtkWindowGroup.
	 *
	 * Params:
	 *     window = the #GtkWindow to add
	 */
	public void addWindow(Window window)
	{
		gtk_window_group_add_window(gtkWindowGroup, (window is null) ? null : window.getWindowStruct());
	}

	/**
	 * Returns the current grab widget for @device, or %NULL if none.
	 *
	 * Params:
	 *     device = a #GdkDevice
	 *
	 * Returns: The grab widget, or %NULL
	 *
	 * Since: 3.0
	 */
	public Widget getCurrentDeviceGrab(Device device)
	{
		auto p = gtk_window_group_get_current_device_grab(gtkWindowGroup, (device is null) ? null : device.getDeviceStruct());

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Gets the current grab widget of the given group,
	 * see gtk_grab_add().
	 *
	 * Returns: the current grab widget of the group
	 *
	 * Since: 2.22
	 */
	public Widget getCurrentGrab()
	{
		auto p = gtk_window_group_get_current_grab(gtkWindowGroup);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Returns a list of the #GtkWindows that belong to @window_group.
	 *
	 * Returns: A
	 *     newly-allocated list of windows inside the group.
	 *
	 * Since: 2.14
	 */
	public ListG listWindows()
	{
		auto p = gtk_window_group_list_windows(gtkWindowGroup);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p);
	}

	/**
	 * Removes a window from a #GtkWindowGroup.
	 *
	 * Params:
	 *     window = the #GtkWindow to remove
	 */
	public void removeWindow(Window window)
	{
		gtk_window_group_remove_window(gtkWindowGroup, (window is null) ? null : window.getWindowStruct());
	}
}
