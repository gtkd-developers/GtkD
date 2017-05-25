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


module gtk.OrientableT;

public  import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The #GtkOrientable interface is implemented by all widgets that can be
 * oriented horizontally or vertically. Historically, such widgets have been
 * realized as subclasses of a common base class (e.g #GtkBox/#GtkHBox/#GtkVBox
 * or #GtkScale/#GtkHScale/#GtkVScale). #GtkOrientable is more flexible in that
 * it allows the orientation to be changed at runtime, allowing the widgets
 * to “flip”.
 * 
 * #GtkOrientable was introduced in GTK+ 2.16.
 */
public template OrientableT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkOrientable* getOrientableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkOrientable*)getStruct();
	}


	/**
	 * Retrieves the orientation of the @orientable.
	 *
	 * Returns: the orientation of the @orientable.
	 *
	 * Since: 2.16
	 */
	public GtkOrientation getOrientation()
	{
		return gtk_orientable_get_orientation(getOrientableStruct());
	}

	/**
	 * Sets the orientation of the @orientable.
	 *
	 * Params:
	 *     orientation = the orientable’s new orientation.
	 *
	 * Since: 2.16
	 */
	public void setOrientation(GtkOrientation orientation)
	{
		gtk_orientable_set_orientation(getOrientableStruct(), orientation);
	}
}
