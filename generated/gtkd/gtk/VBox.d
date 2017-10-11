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


module gtk.VBox;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Box;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * A #GtkVBox is a container that organizes child widgets into a single column.
 * 
 * Use the #GtkBox packing interface to determine the arrangement,
 * spacing, height, and alignment of #GtkVBox children.
 * 
 * All children are allocated the same width.
 * 
 * GtkVBox has been deprecated. You can use #GtkBox instead, which is a
 * very quick and easy change. If you have derived your own classes from
 * GtkVBox, you can simply change the inheritance to derive directly
 * from #GtkBox, and set the #GtkOrientable:orientation property to
 * %GTK_ORIENTATION_VERTICAL in your instance init function, with a
 * call like:
 * |[<!-- language="C" -->
 * gtk_orientable_set_orientation (GTK_ORIENTABLE (object),
 * GTK_ORIENTATION_VERTICAL);
 * ]|
 * If you don’t need first-child or last-child styling and want your code
 * to be future-proof, the recommendation is to switch to #GtkGrid instead
 * of nested boxes. For more information about migrating to #GtkGrid,
 * see [Migrating from other containers to GtkGrid][gtk-migrating-GtkGrid].
 */
public class VBox : Box
{
	/** the main Gtk struct */
	protected GtkVBox* gtkVBox;

	/** Get the main Gtk struct */
	public GtkVBox* getVBoxStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkVBox;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkVBox;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkVBox* gtkVBox, bool ownedRef = false)
	{
		this.gtkVBox = gtkVBox;
		super(cast(GtkBox*)gtkVBox, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_vbox_get_type();
	}

	/**
	 * Creates a new #GtkVBox.
	 *
	 * Deprecated: You can use gtk_box_new() with %GTK_ORIENTATION_VERTICAL instead,
	 * which is a quick and easy change. But the recommendation is to switch to
	 * #GtkGrid, since #GtkBox is going to go away eventually.
	 * See [Migrating from other containers to GtkGrid][gtk-migrating-GtkGrid].
	 *
	 * Params:
	 *     homogeneous = %TRUE if all children are to be given equal space allotments.
	 *     spacing = the number of pixels to place by default between children.
	 *
	 * Returns: a new #GtkVBox.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(bool homogeneous, int spacing)
	{
		auto p = gtk_vbox_new(homogeneous, spacing);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkVBox*) p);
	}
}
