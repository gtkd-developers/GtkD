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


module gtk.FontChooserDialog;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Dialog;
private import gtk.FontChooserIF;
private import gtk.FontChooserT;
private import gtk.Widget;
private import gtk.Window;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * The `GtkFontChooserDialog` widget is a dialog for selecting a font.
 * 
 * ![An example GtkFontChooserDialog](fontchooser.png)
 * 
 * `GtkFontChooserDialog` implements the [iface@Gtk.FontChooser] interface
 * and does not provide much API of its own.
 * 
 * To create a `GtkFontChooserDialog`, use [ctor@Gtk.FontChooserDialog.new].
 * 
 * # GtkFontChooserDialog as GtkBuildable
 * 
 * The `GtkFontChooserDialog` implementation of the `GtkBuildable`
 * interface exposes the buttons with the names “select_button”
 * and “cancel_button”.
 */
public class FontChooserDialog : Dialog, FontChooserIF
{
	/** the main Gtk struct */
	protected GtkFontChooserDialog* gtkFontChooserDialog;

	/** Get the main Gtk struct */
	public GtkFontChooserDialog* getFontChooserDialogStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkFontChooserDialog;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFontChooserDialog;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFontChooserDialog* gtkFontChooserDialog, bool ownedRef = false)
	{
		this.gtkFontChooserDialog = gtkFontChooserDialog;
		super(cast(GtkDialog*)gtkFontChooserDialog, ownedRef);
	}

	// add the FontChooser capabilities
	mixin FontChooserT!(GtkFontChooserDialog);


	/** */
	public static GType getType()
	{
		return gtk_font_chooser_dialog_get_type();
	}

	/**
	 * Creates a new `GtkFontChooserDialog`.
	 *
	 * Params:
	 *     title = Title of the dialog
	 *     parent = Transient parent of the dialog
	 *
	 * Returns: a new `GtkFontChooserDialog`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string title, Window parent)
	{
		auto __p = gtk_font_chooser_dialog_new(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkFontChooserDialog*) __p);
	}
}
