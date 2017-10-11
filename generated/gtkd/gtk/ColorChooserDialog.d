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


module gtk.ColorChooserDialog;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.ColorChooserIF;
private import gtk.ColorChooserT;
private import gtk.Dialog;
private import gtk.Widget;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The #GtkColorChooserDialog widget is a dialog for choosing
 * a color. It implements the #GtkColorChooser interface.
 */
public class ColorChooserDialog : Dialog, ColorChooserIF
{
	/** the main Gtk struct */
	protected GtkColorChooserDialog* gtkColorChooserDialog;

	/** Get the main Gtk struct */
	public GtkColorChooserDialog* getColorChooserDialogStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkColorChooserDialog;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkColorChooserDialog;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkColorChooserDialog* gtkColorChooserDialog, bool ownedRef = false)
	{
		this.gtkColorChooserDialog = gtkColorChooserDialog;
		super(cast(GtkDialog*)gtkColorChooserDialog, ownedRef);
	}

	// add the ColorChooser capabilities
	mixin ColorChooserT!(GtkColorChooserDialog);


	/** */
	public static GType getType()
	{
		return gtk_color_chooser_dialog_get_type();
	}

	/**
	 * Creates a new #GtkColorChooserDialog.
	 *
	 * Params:
	 *     title = Title of the dialog, or %NULL
	 *     parent = Transient parent of the dialog, or %NULL
	 *
	 * Returns: a new #GtkColorChooserDialog
	 *
	 * Since: 3.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string title, Window parent)
	{
		auto p = gtk_color_chooser_dialog_new(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkColorChooserDialog*) p);
	}
}
