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


module gtk.MountOperation;

private import gdk.Screen;
private import gio.MountOperation : GioMountOperation = MountOperation;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Window;
private import gtkc.gtk;
public  import gtkc.gtktypes;


/**
 * This should not be accessed directly. Use the accessor functions below.
 */
public class MountOperation : GioMountOperation
{
	/** the main Gtk struct */
	protected GtkMountOperation* gtkMountOperation;

	/** Get the main Gtk struct */
	public GtkMountOperation* getGtkMountOperationStruct()
	{
		return gtkMountOperation;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMountOperation;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkMountOperation = cast(GtkMountOperation*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkMountOperation* gtkMountOperation, bool ownedRef = false)
	{
		this.gtkMountOperation = gtkMountOperation;
		super(cast(GMountOperation*)gtkMountOperation, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_mount_operation_get_type();
	}

	/**
	 * Creates a new #GtkMountOperation
	 *
	 * Params:
	 *     parent = transient parent of the window, or %NULL
	 *
	 * Return: a new #GtkMountOperation
	 *
	 * Since: 2.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Window parent)
	{
		auto p = gtk_mount_operation_new((parent is null) ? null : parent.getWindowStruct());
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkMountOperation*) p, true);
	}

	/**
	 * Gets the transient parent used by the #GtkMountOperation
	 *
	 * Return: the transient parent for windows shown by @op
	 *
	 * Since: 2.14
	 */
	public Window getParent()
	{
		auto p = gtk_mount_operation_get_parent(gtkMountOperation);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GtkWindow*) p);
	}

	/**
	 * Gets the screen on which windows of the #GtkMountOperation
	 * will be shown.
	 *
	 * Return: the screen on which windows of @op are shown
	 *
	 * Since: 2.14
	 */
	public Screen getScreen()
	{
		auto p = gtk_mount_operation_get_screen(gtkMountOperation);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}

	/**
	 * Returns whether the #GtkMountOperation is currently displaying
	 * a window.
	 *
	 * Return: %TRUE if @op is currently displaying a window
	 *
	 * Since: 2.14
	 */
	public bool isShowing()
	{
		return gtk_mount_operation_is_showing(gtkMountOperation) != 0;
	}

	/**
	 * Sets the transient parent for windows shown by the
	 * #GtkMountOperation.
	 *
	 * Params:
	 *     parent = transient parent of the window, or %NULL
	 *
	 * Since: 2.14
	 */
	public void setParent(Window parent)
	{
		gtk_mount_operation_set_parent(gtkMountOperation, (parent is null) ? null : parent.getWindowStruct());
	}

	/**
	 * Sets the screen to show windows of the #GtkMountOperation on.
	 *
	 * Params:
	 *     screen = a #GdkScreen
	 *
	 * Since: 2.14
	 */
	public void setScreen(Screen screen)
	{
		gtk_mount_operation_set_screen(gtkMountOperation, (screen is null) ? null : screen.getScreenStruct());
	}

	/**
	 * This is a convenience function for launching the default application
	 * to show the uri. The uri must be of a form understood by GIO (i.e. you
	 * need to install gvfs to get support for uri schemes such as http://
	 * or ftp://, as only local files are handled by GIO itself).
	 * Typical examples are
	 * - `file:///home/gnome/pict.jpg`
	 * - `http://www.gnome.org`
	 * - `mailto:me@gnome.org`
	 *
	 * Ideally the timestamp is taken from the event triggering
	 * the gtk_show_uri() call. If timestamp is not known you can take
	 * %GDK_CURRENT_TIME.
	 *
	 * Params:
	 *     screen = screen to show the uri on
	 *         or %NULL for the default screen
	 *     uri = the uri to show
	 *     timestamp = a timestamp to prevent focus stealing
	 *
	 * Return: %TRUE on success, %FALSE on error
	 *
	 * Since: 2.14
	 *
	 * Throws: GException on failure.
	 */
	public static bool showUri(Screen screen, string uri, uint timestamp)
	{
		GError* err = null;
		
		auto p = gtk_show_uri((screen is null) ? null : screen.getScreenStruct(), Str.toStringz(uri), timestamp, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
