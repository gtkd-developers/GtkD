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
 * inFile  = GtkFontChooserDialog.html
 * outPack = gtk
 * outFile = FontChooserDialog
 * strct   = GtkFontChooserDialog
 * realStrct=
 * ctorStrct=
 * clss    = FontChooserDialog
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- FontChooserIF
 * prefixes:
 * 	- gtk_font_chooser_dialog_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Window
 * 	- gtk.FontChooserT
 * 	- gtk.FontChooserIF
 * structWrap:
 * 	- GtkWindow* -> Window
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.FontChooserDialog;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.Window;
private import gtk.FontChooserT;
private import gtk.FontChooserIF;



private import gtk.Dialog;

/**
 * Description
 * The GtkFontChooserDialog widget is a dialog for selecting a font.
 * It implements the GtkFontChooser interface.
 * GtkFontChooserDialog as GtkBuildable
 * The GtkFontChooserDialog implementation of the GtkBuildable interface
 * exposes the buttons with the names
 * "select_button" and "cancel_button.
 */
public class FontChooserDialog : Dialog, FontChooserIF
{
	
	/** the main Gtk struct */
	protected GtkFontChooserDialog* gtkFontChooserDialog;
	
	
	public GtkFontChooserDialog* getFontChooserDialogStruct()
	{
		return gtkFontChooserDialog;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFontChooserDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkFontChooserDialog* gtkFontChooserDialog)
	{
		super(cast(GtkDialog*)gtkFontChooserDialog);
		this.gtkFontChooserDialog = gtkFontChooserDialog;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkFontChooserDialog = cast(GtkFontChooserDialog*)obj;
	}
	
	// add the FontChooser capabilities
	mixin FontChooserT!(GtkFontChooserDialog);
	
	/**
	 */
	
	/**
	 * Creates a new GtkFontChooserDialog.
	 * Params:
	 * title = Title of the dialog, or NULL. [allow-none]
	 * parent = Transient parent of the dialog, or NULL. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string title, Window parent)
	{
		// GtkWidget * gtk_font_chooser_dialog_new (const gchar *title,  GtkWindow *parent);
		auto p = gtk_font_chooser_dialog_new(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_font_chooser_dialog_new(Str.toStringz(title), (parent is null) ? null : parent.getWindowStruct())");
		}
		this(cast(GtkFontChooserDialog*) p);
	}
}
