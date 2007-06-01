/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_font_selection_dialog_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gdk.Font
 * structWrap:
 * 	- GdkFont* -> Font
 * module aliases:
 * local aliases:
 */

module gtk.FontSelectionDialog;

private import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gdk.Font;




/**
 * Description
 * The GtkFontSelectionDialog widget is a dialog box for selecting a font.
 * To set the font which is initially selected, use
 * gtk_font_selection_dialog_set_font_name().
 * To get the selected font use gtk_font_selection_dialog_get_font_name().
 * To change the text which is shown in the preview area, use
 * gtk_font_selection_dialog_set_preview_text().
 */
private import gtk.Dialog;
public class FontSelectionDialog : Dialog
{
	
	/** the main Gtk struct */
	protected GtkFontSelectionDialog* gtkFontSelectionDialog;
	
	
	public GtkFontSelectionDialog* getFontSelectionDialogStruct()
	{
		return gtkFontSelectionDialog;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkFontSelectionDialog;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkFontSelectionDialog* gtkFontSelectionDialog)
	{
		assert(gtkFontSelectionDialog !is null, "struct gtkFontSelectionDialog is null on constructor");
		super(cast(GtkDialog*)gtkFontSelectionDialog);
		this.gtkFontSelectionDialog = gtkFontSelectionDialog;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkFontSelectionDialog.
	 * title:
	 * the title of the dialog box.
	 * Returns:
	 * a new GtkFontSelectionDialog.
	 */
	public this (char[] title)
	{
		// GtkWidget* gtk_font_selection_dialog_new (const gchar *title);
		this(cast(GtkFontSelectionDialog*)gtk_font_selection_dialog_new(Str.toStringz(title)) );
	}
	
	/**
	 * Warning
	 * gtk_font_selection_dialog_get_font is deprecated and should not be used in newly-written code.
	 * Gets the currently-selected font.
	 * fsd:
	 * a GtkFontSelectionDialog.
	 * Returns:
	 * the currently-selected font, or NULL if no font is selected.
	 */
	public Font getFont()
	{
		// GdkFont* gtk_font_selection_dialog_get_font (GtkFontSelectionDialog *fsd);
		return new Font( gtk_font_selection_dialog_get_font(gtkFontSelectionDialog) );
	}
	
	/**
	 * Gets the currently-selected font name. Note that this can be a different
	 * string than what you set with gtk_font_selection_dialog_set_font_name(), as
	 * the font selection widget may normalize font names and thus return a string
	 * with a different structure. For example, "Helvetica Italic Bold 12" could be
	 * normalized to "Helvetica Bold Italic 12". Use pango_font_description_equal()
	 * if you want to compare two font descriptions.
	 * fsd:
	 *  a GtkFontSelectionDialog
	 * Returns:
	 *  A string with the name of the current font, or NULL if no font
	 * is selected. You must free this string with g_free().
	 */
	public char[] getFontName()
	{
		// gchar* gtk_font_selection_dialog_get_font_name  (GtkFontSelectionDialog *fsd);
		return Str.toString(gtk_font_selection_dialog_get_font_name(gtkFontSelectionDialog) );
	}
	
	/**
	 * Sets the currently-selected font.
	 * fsd:
	 * a GtkFontSelectionDialog.
	 * fontname:
	 * a fontname.
	 * Returns:
	 * TRUE if the font was found.
	 */
	public int setFontName(char[] fontname)
	{
		// gboolean gtk_font_selection_dialog_set_font_name  (GtkFontSelectionDialog *fsd,  const gchar *fontname);
		return gtk_font_selection_dialog_set_font_name(gtkFontSelectionDialog, Str.toStringz(fontname));
	}
	
	/**
	 * Gets the text displayed in the preview area.
	 * fsd:
	 * a GtkFontSelectionDialog.
	 * Returns:
	 * the text displayed in the preview area. This string is owned
	 *  by the widget and should not be modified or freed.
	 */
	public char[] getPreviewText()
	{
		// const gchar* gtk_font_selection_dialog_get_preview_text  (GtkFontSelectionDialog *fsd);
		return Str.toString(gtk_font_selection_dialog_get_preview_text(gtkFontSelectionDialog) );
	}
	
	/**
	 * Sets the text displayed in the preview area.
	 * fsd:
	 * a GtkFontSelectionDialog.
	 * text:
	 * the text to display in the preview area.
	 * See Also
	 * GtkFontSelection, GtkDialog
	 * the underlying widget for selecting
	 * fonts.
	 * the parent class of GtkFontSelectionDialog
	 */
	public void setPreviewText(char[] text)
	{
		// void gtk_font_selection_dialog_set_preview_text  (GtkFontSelectionDialog *fsd,  const gchar *text);
		gtk_font_selection_dialog_set_preview_text(gtkFontSelectionDialog, Str.toStringz(text));
	}
}
