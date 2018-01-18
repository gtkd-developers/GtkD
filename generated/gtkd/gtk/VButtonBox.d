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


module gtk.VButtonBox;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.ButtonBox;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class VButtonBox : ButtonBox
{
	/** the main Gtk struct */
	protected GtkVButtonBox* gtkVButtonBox;

	/** Get the main Gtk struct */
	public GtkVButtonBox* getVButtonBoxStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkVButtonBox;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkVButtonBox;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkVButtonBox* gtkVButtonBox, bool ownedRef = false)
	{
		this.gtkVButtonBox = gtkVButtonBox;
		super(cast(GtkButtonBox*)gtkVButtonBox, ownedRef);
	}

	/**
	 * Creates a new vertical button box and sets standart values for it's comon parameters
	 * Returns: a new vertical button box
	 */
	static VButtonBox createActionBox()
	{
		VButtonBox bBox = new VButtonBox();
		bBox.setLayout(ButtonBoxStyle.START);
		bBox.setBorderWidth(5);
		bBox.setSpacing(7);
		return bBox;
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_vbutton_box_get_type();
	}

	/**
	 * Creates a new vertical button box.
	 *
	 * Deprecated: Use gtk_button_box_new() with %GTK_ORIENTATION_VERTICAL instead
	 *
	 * Returns: a new button box #GtkWidget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_vbutton_box_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkVButtonBox*) p);
	}
}
