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

private import gdk.Display;
private import gio.MountOperation : DGioMountOperation = MountOperation;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkMountOperation` is an implementation of `GMountOperation`.
 * 
 * The functions and objects described here make working with GTK and
 * GIO more convenient.
 * 
 * `GtkMountOperation` is needed when mounting volumes:
 * It is an implementation of `GMountOperation` that can be used with
 * GIO functions for mounting volumes such as
 * g_file_mount_enclosing_volume(), g_file_mount_mountable(),
 * g_volume_mount(), g_mount_unmount_with_operation() and others.
 * 
 * When necessary, `GtkMountOperation` shows dialogs to let the user
 * enter passwords, ask questions or show processes blocking unmount.
 */
public class MountOperation : DGioMountOperation
{
	/** the main Gtk struct */
	protected GtkMountOperation* gtkMountOperation;

	/** Get the main Gtk struct */
	public GtkMountOperation* getGtkMountOperationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkMountOperation;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMountOperation;
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
	 * Creates a new `GtkMountOperation`.
	 *
	 * Params:
	 *     parent = transient parent of the window
	 *
	 * Returns: a new `GtkMountOperation`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Window parent)
	{
		auto __p = gtk_mount_operation_new((parent is null) ? null : parent.getWindowStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkMountOperation*) __p, true);
	}

	/**
	 * Gets the display on which windows of the `GtkMountOperation`
	 * will be shown.
	 *
	 * Returns: the display on which windows of @op are shown
	 */
	public Display getDisplay()
	{
		auto __p = gtk_mount_operation_get_display(gtkMountOperation);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * Gets the transient parent used by the `GtkMountOperation`.
	 *
	 * Returns: the transient parent for windows shown by @op
	 */
	public Window getParent()
	{
		auto __p = gtk_mount_operation_get_parent(gtkMountOperation);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Window)(cast(GtkWindow*) __p);
	}

	/**
	 * Returns whether the `GtkMountOperation` is currently displaying
	 * a window.
	 *
	 * Returns: %TRUE if @op is currently displaying a window
	 */
	public bool isShowing()
	{
		return gtk_mount_operation_is_showing(gtkMountOperation) != 0;
	}

	/**
	 * Sets the display to show windows of the `GtkMountOperation` on.
	 *
	 * Params:
	 *     display = a `GdkDisplay`
	 */
	public void setDisplay(Display display)
	{
		gtk_mount_operation_set_display(gtkMountOperation, (display is null) ? null : display.getDisplayStruct());
	}

	/**
	 * Sets the transient parent for windows shown by the
	 * `GtkMountOperation`.
	 *
	 * Params:
	 *     parent = transient parent of the window
	 */
	public void setParent(Window parent)
	{
		gtk_mount_operation_set_parent(gtkMountOperation, (parent is null) ? null : parent.getWindowStruct());
	}
}
