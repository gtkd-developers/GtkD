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
 * inFile  = GtkColorSelectionDialog.html
 * outPack = gtk
 * outFile = ColorSelectionDialog
 * strct   = GtkColorSelectionDialog
 * realStrct=
 * ctorStrct=
 * clss    = ColorSelectionDialog
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_color_selection_dialog_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_color_selection_dialog_get_color_selection
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.ColorSelection
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ColorSelectionDialog;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.ColorSelection;



private import gtk.Dialog;

/**
 * The GtkColorSelectionDialog provides a standard dialog which
 * allows the user to select a color much like the GtkFileChooserDialog
 * provides a standard dialog for file selection.
 *
 * Use gtk_color_selection_dialog_get_color_selection() to get the
 * GtkColorSelection widget contained within the dialog. Use this widget
 * and its gtk_color_selection_get_current_color()
 * function to gain access to the selected color. Connect a handler
 * for this widget's "color-changed" signal to be notified
 * when the color changes.
 *
 * GtkColorSelectionDialog as GtkBuildable
 *
 * The GtkColorSelectionDialog implementation of the GtkBuildable interface
 * exposes the embedded GtkColorSelection as internal child with the
 * name "color_selection". It also exposes the buttons with the names
 * "ok_button", "cancel_button" and "help_button".
 */
public class ColorSelectionDialog : Dialog
{
	
	/** the main Gtk struct */
	protected GtkColorSelectionDialog* gtkColorSelectionDialog;
	
	
	public GtkColorSelectionDialog* getColorSelectionDialogStruct()
	{
		return gtkColorSelectionDialog;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkColorSelectionDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkColorSelectionDialog* gtkColorSelectionDialog)
	{
		super(cast(GtkDialog*)gtkColorSelectionDialog);
		this.gtkColorSelectionDialog = gtkColorSelectionDialog;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkColorSelectionDialog = cast(GtkColorSelectionDialog*)obj;
	}
	
	/**
	 * Retrieves the GtkColorSelection widget embedded in the dialog.
	 * Since 2.14
	 * Returns: the embedded GtkColorSelection
	 */
	public ColorSelection getColorSelection()
	{
		// GtkWidget* gtk_color_selection_dialog_get_color_selection  (GtkColorSelectionDialog *colorsel);
		auto p = gtk_color_selection_dialog_get_color_selection(gtkColorSelectionDialog);
		if(p is null)
		{
			return null;
		}
		return new ColorSelection(cast(GtkColorSelection*) p);
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkColorSelectionDialog.
	 * Params:
	 * title = a string containing the title text for the dialog.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string title)
	{
		// GtkWidget * gtk_color_selection_dialog_new (const gchar *title);
		auto p = gtk_color_selection_dialog_new(Str.toStringz(title));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_color_selection_dialog_new(Str.toStringz(title))");
		}
		this(cast(GtkColorSelectionDialog*) p);
	}
}
