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

/*
 * Conversion parameters:
 * inFile  = GtkColorChooserDialog.html
 * outPack = gtk
 * outFile = ColorChooserDialog
 * strct   = GtkColorChooserDialog
 * realStrct=
 * ctorStrct=
 * clss    = ColorChooserDialog
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ColorChooserIF
 * prefixes:
 * 	- gtk_color_chooser_dialog_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.ColorChooserIF
 * 	- gtk.ColorChooserT
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ColorChooserDialog;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.ColorChooserIF;
private import gtk.ColorChooserT;



private import gtk.Dialog;

/**
 * The GtkColorChooserDialog widget is a dialog for choosing
 * a color. It implements the GtkColorChooser interface.
 */
public class ColorChooserDialog : Dialog, ColorChooserIF
{
	
	/** the main Gtk struct */
	protected GtkColorChooserDialog* gtkColorChooserDialog;
	
	
	public GtkColorChooserDialog* getColorChooserDialogStruct()
	{
		return gtkColorChooserDialog;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkColorChooserDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkColorChooserDialog* gtkColorChooserDialog)
	{
		super(cast(GtkDialog*)gtkColorChooserDialog);
		this.gtkColorChooserDialog = gtkColorChooserDialog;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkColorChooserDialog = cast(GtkColorChooserDialog*)obj;
	}
	
	// add the ColorChooser capabilities
	mixin ColorChooserT!(GtkColorChooserDialog);
	
	/**
	 */
	
	/**
	 * Creates a new GtkColorChooserDialog.
	 * Params:
	 * title = Title of the dialog, or NULL. [allow-none]
	 * parent = Transient parent of the dialog, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string title, GtkWindow* parent)
	{
		// GtkWidget * gtk_color_chooser_dialog_new (const gchar *title,  GtkWindow *parent);
		auto p = gtk_color_chooser_dialog_new(Str.toStringz(title), parent);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_color_chooser_dialog_new(Str.toStringz(title), parent)");
		}
		this(cast(GtkColorChooserDialog*) p);
	}
}
