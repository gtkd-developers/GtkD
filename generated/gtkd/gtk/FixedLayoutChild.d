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


module gtk.FixedLayoutChild;

private import gobject.ObjectG;
private import gsk.Transform;
private import gtk.LayoutChild;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkLayoutChild` subclass for children in a `GtkFixedLayout`.
 */
public class FixedLayoutChild : LayoutChild
{
	/** the main Gtk struct */
	protected GtkFixedLayoutChild* gtkFixedLayoutChild;

	/** Get the main Gtk struct */
	public GtkFixedLayoutChild* getFixedLayoutChildStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkFixedLayoutChild;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFixedLayoutChild;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFixedLayoutChild* gtkFixedLayoutChild, bool ownedRef = false)
	{
		this.gtkFixedLayoutChild = gtkFixedLayoutChild;
		super(cast(GtkLayoutChild*)gtkFixedLayoutChild, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_fixed_layout_child_get_type();
	}

	/**
	 * Retrieves the transformation of the child.
	 *
	 * Returns: a `GskTransform`
	 */
	public Transform getTransform()
	{
		auto __p = gtk_fixed_layout_child_get_transform(gtkFixedLayoutChild);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Transform)(cast(GskTransform*) __p);
	}

	/**
	 * Sets the transformation of the child of a `GtkFixedLayout`.
	 *
	 * Params:
	 *     transform = a `GskTransform`
	 */
	public void setTransform(Transform transform)
	{
		gtk_fixed_layout_child_set_transform(gtkFixedLayoutChild, (transform is null) ? null : transform.getTransformStruct());
	}
}
