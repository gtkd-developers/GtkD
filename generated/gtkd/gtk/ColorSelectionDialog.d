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


module gtk.ColorSelectionDialog;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.ColorSelection;
private import gtk.Dialog;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/** */
public class ColorSelectionDialog : Dialog
{
	/** the main Gtk struct */
	protected GtkColorSelectionDialog* gtkColorSelectionDialog;

	/** Get the main Gtk struct */
	public GtkColorSelectionDialog* getColorSelectionDialogStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkColorSelectionDialog;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkColorSelectionDialog;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkColorSelectionDialog* gtkColorSelectionDialog, bool ownedRef = false)
	{
		this.gtkColorSelectionDialog = gtkColorSelectionDialog;
		super(cast(GtkDialog*)gtkColorSelectionDialog, ownedRef);
	}

	/**
	 * Retrieves the ColorSelection widget embedded in the dialog.
	 *
	 * Return: the embedded ColorSelection
	 *
	 * Since: 2.14
	 */
	public ColorSelection getColorSelection()
	{
		auto p = gtk_color_selection_dialog_get_color_selection(gtkColorSelectionDialog);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ColorSelection)(cast(GtkColorSelection*) p);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_color_selection_dialog_get_type();
	}

	/**
	 * Creates a new #GtkColorSelectionDialog.
	 *
	 * Params:
	 *     title = a string containing the title text for the dialog.
	 *
	 * Returns: a #GtkColorSelectionDialog.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string title)
	{
		auto p = gtk_color_selection_dialog_new(Str.toStringz(title));

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkColorSelectionDialog*) p);
	}
}
