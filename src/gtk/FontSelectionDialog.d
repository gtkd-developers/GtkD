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
 * inFile  = GtkFontSelectionDialog.html
 * outPack = gtk
 * outFile = FontSelectionDialog
 * strct   = GtkFontSelectionDialog
 * realStrct=
 * ctorStrct=
 * clss    = FontSelectionDialog
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_font_selection_dialog_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_font_selection_dialog_get_font_selection
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.FontSelection
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.FontSelectionDialog;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.FontSelection;
private import gtk.Widget;



private import gtk.Dialog;

/**
 * The GtkFontSelectionDialog widget is a dialog box for selecting a font.
 *
 * To set the font which is initially selected, use
 * gtk_font_selection_dialog_set_font_name().
 *
 * To get the selected font use gtk_font_selection_dialog_get_font_name().
 *
 * To change the text which is shown in the preview area, use
 * gtk_font_selection_dialog_set_preview_text().
 *
 * In GTK+ 3.2, GtkFontSelectionDialog has been deprecated in favor of
 * GtkFontChooserDialog.
 *
 * GtkFontSelectionDialog as GtkBuildable
 *
 * The GtkFontSelectionDialog implementation of the GtkBuildable interface
 * exposes the embedded GtkFontSelection as internal child with the
 * name "font_selection". It also exposes the buttons with the names
 * "ok_button", "cancel_button" and "apply_button".
 */
public class FontSelectionDialog : Dialog
{
	
	/** the main Gtk struct */
	protected GtkFontSelectionDialog* gtkFontSelectionDialog;
	
	
	public GtkFontSelectionDialog* getFontSelectionDialogStruct()
	{
		return gtkFontSelectionDialog;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFontSelectionDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkFontSelectionDialog* gtkFontSelectionDialog)
	{
		super(cast(GtkDialog*)gtkFontSelectionDialog);
		this.gtkFontSelectionDialog = gtkFontSelectionDialog;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkFontSelectionDialog = cast(GtkFontSelectionDialog*)obj;
	}
	
	/**
	 * Retrieves the GtkFontSelection widget embedded in the dialog.
	 * Since 2.22
	 * Returns: the embedded GtkFontSelection
	 */
	public FontSelection getFontSelection()
	{
		// GtkWidget * gtk_font_selection_dialog_get_font_selection  (GtkFontSelectionDialog *fsd);
		auto p = gtk_font_selection_dialog_get_font_selection(gtkFontSelectionDialog);
		if(p is null)
		{
			return null;
		}
		return new FontSelection(cast(GtkFontSelection*) p);
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * gtk_font_selection_dialog_new has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooserDialog
	 * Creates a new GtkFontSelectionDialog.
	 * Params:
	 * title = the title of the dialog window
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string title)
	{
		// GtkWidget * gtk_font_selection_dialog_new (const gchar *title);
		auto p = gtk_font_selection_dialog_new(Str.toStringz(title));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_font_selection_dialog_new(Str.toStringz(title))");
		}
		this(cast(GtkFontSelectionDialog*) p);
	}
	
	/**
	 * Warning
	 * gtk_font_selection_dialog_get_font_name has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooserDialog
	 * Gets the currently-selected font name.
	 * Note that this can be a different string than what you set with
	 * gtk_font_selection_dialog_set_font_name(), as the font selection widget
	 * may normalize font names and thus return a string with a different
	 * structure. For example, "Helvetica Italic Bold 12" could be normalized
	 * to "Helvetica Bold Italic 12". Use pango_font_description_equal()
	 * if you want to compare two font descriptions.
	 * Returns: A string with the name of the current font, or NULL if no font is selected. You must free this string with g_free().
	 */
	public string getFontName()
	{
		// gchar * gtk_font_selection_dialog_get_font_name  (GtkFontSelectionDialog *fsd);
		return Str.toString(gtk_font_selection_dialog_get_font_name(gtkFontSelectionDialog));
	}
	
	/**
	 * Warning
	 * gtk_font_selection_dialog_set_font_name has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooserDialog
	 * Sets the currently selected font.
	 * Params:
	 * fontname = a font name like "Helvetica 12" or "Times Bold 18"
	 * Returns: TRUE if the font selected in fsd is now the fontname specified, FALSE otherwise.
	 */
	public int setFontName(string fontname)
	{
		// gboolean gtk_font_selection_dialog_set_font_name  (GtkFontSelectionDialog *fsd,  const gchar *fontname);
		return gtk_font_selection_dialog_set_font_name(gtkFontSelectionDialog, Str.toStringz(fontname));
	}
	
	/**
	 * Warning
	 * gtk_font_selection_dialog_get_preview_text has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooserDialog
	 * Gets the text displayed in the preview area.
	 * Returns: the text displayed in the preview area. This string is owned by the widget and should not be modified or freed
	 */
	public string getPreviewText()
	{
		// const gchar * gtk_font_selection_dialog_get_preview_text  (GtkFontSelectionDialog *fsd);
		return Str.toString(gtk_font_selection_dialog_get_preview_text(gtkFontSelectionDialog));
	}
	
	/**
	 * Warning
	 * gtk_font_selection_dialog_set_preview_text has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooserDialog
	 * Sets the text displayed in the preview area.
	 * Params:
	 * text = the text to display in the preview area
	 */
	public void setPreviewText(string text)
	{
		// void gtk_font_selection_dialog_set_preview_text  (GtkFontSelectionDialog *fsd,  const gchar *text);
		gtk_font_selection_dialog_set_preview_text(gtkFontSelectionDialog, Str.toStringz(text));
	}
	
	/**
	 * Warning
	 * gtk_font_selection_dialog_get_cancel_button has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooserDialog
	 * Gets the 'Cancel' button.
	 * Since 2.14
	 * Returns: the GtkWidget used in the dialog for the 'Cancel' button. [transfer none]
	 */
	public Widget getCancelButton()
	{
		// GtkWidget * gtk_font_selection_dialog_get_cancel_button  (GtkFontSelectionDialog *fsd);
		auto p = gtk_font_selection_dialog_get_cancel_button(gtkFontSelectionDialog);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Warning
	 * gtk_font_selection_dialog_get_ok_button has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooserDialog
	 * Gets the 'OK' button.
	 * Since 2.14
	 * Returns: the GtkWidget used in the dialog for the 'OK' button. [transfer none]
	 */
	public Widget getOkButton()
	{
		// GtkWidget * gtk_font_selection_dialog_get_ok_button  (GtkFontSelectionDialog *fsd);
		auto p = gtk_font_selection_dialog_get_ok_button(gtkFontSelectionDialog);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
}
