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


module gtk.HButtonBox;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.ButtonBox;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class HButtonBox : ButtonBox
{
	/** the main Gtk struct */
	protected GtkHButtonBox* gtkHButtonBox;

	/** Get the main Gtk struct */
	public GtkHButtonBox* getHButtonBoxStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkHButtonBox;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkHButtonBox;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkHButtonBox* gtkHButtonBox, bool ownedRef = false)
	{
		this.gtkHButtonBox = gtkHButtonBox;
		super(cast(GtkButtonBox*)gtkHButtonBox, ownedRef);
	}

	/**
	 * Creates a new HButtonBox and sets comon parameters
	 */
	static HButtonBox createActionBox()
	{
		HButtonBox bBox = new HButtonBox();
		bBox.setLayout(ButtonBoxStyle.END);
		bBox.setBorderWidth(5);
		bBox.setSpacing(7);
		return bBox;
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_hbutton_box_get_type();
	}

	/**
	 * Creates a new horizontal button box.
	 *
	 * Deprecated: Use gtk_button_box_new() with %GTK_ORIENTATION_HORIZONTAL instead
	 *
	 * Returns: a new button box #GtkWidget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_hbutton_box_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkHButtonBox*) p);
	}
}
