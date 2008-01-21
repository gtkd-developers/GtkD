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
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- BuildableIF
 * prefixes:
 * 	- gtk_font_selection_dialog_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Font
 * 	- gobject.ObjectG
 * 	- gobject.Value
 * 	- gtk.Builder
 * 	- gtk.BuildableIF
 * 	- gtk.BuildableT
 * structWrap:
 * 	- GdkFont* -> Font
 * module aliases:
 * local aliases:
 */

module gtk.FontSelectionDialog;

public  import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gdk.Font;
private import gobject.ObjectG;
private import gobject.Value;
private import gtk.Builder;
private import gtk.BuildableIF;
private import gtk.BuildableT;



private import gtk.Dialog;

/**
 * Description
 * The GtkFontSelectionDialog widget is a dialog box for selecting a font.
 * To set the font which is initially selected, use
 * gtk_font_selection_dialog_set_font_name().
 * To get the selected font use gtk_font_selection_dialog_get_font_name().
 * To change the text which is shown in the preview area, use
 * gtk_font_selection_dialog_set_preview_text().
 * GtkFontSelectionDialog as GtkBuildable
 * The GtkFontSelectionDialog implementation of the GtkBuildable interface
 * exposes the embedded GtkFontSelection as internal child with the
 * name "font_selection". It also exposes the buttons with the names
 * "ok_button", "cancel_button" and "apply_button".
 */
public class FontSelectionDialog : Dialog, BuildableIF
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
		if(gtkFontSelectionDialog is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkFontSelectionDialog passed to constructor.");
			else return;
		}
		super(cast(GtkDialog*)gtkFontSelectionDialog);
		this.gtkFontSelectionDialog = gtkFontSelectionDialog;
	}
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkFontSelectionDialog);
	
	/**
	 */
	
	/**
	 * Creates a new GtkFontSelectionDialog.
	 * Params:
	 * title = the title of the dialog box.
	 */
	public this (char[] title)
	{
		// GtkWidget* gtk_font_selection_dialog_new (const gchar *title);
		auto p = gtk_font_selection_dialog_new(Str.toStringz(title));
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkFontSelectionDialog*) p);
	}
	
	/**
	 * Warning
	 * gtk_font_selection_dialog_get_font is deprecated and should not be used in newly-written code.
	 * Gets the currently-selected font.
	 * Returns:the currently-selected font, or NULL if no font is selected.
	 */
	public Font getFont()
	{
		// GdkFont* gtk_font_selection_dialog_get_font (GtkFontSelectionDialog *fsd);
		auto p = gtk_font_selection_dialog_get_font(gtkFontSelectionDialog);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Font(cast(GdkFont*) p);
	}
	
	/**
	 * Gets the currently-selected font name. Note that this can be a different
	 * string than what you set with gtk_font_selection_dialog_set_font_name(), as
	 * the font selection widget may normalize font names and thus return a string
	 * with a different structure. For example, "Helvetica Italic Bold 12" could be
	 * normalized to "Helvetica Bold Italic 12". Use pango_font_description_equal()
	 * if you want to compare two font descriptions.
	 * Returns: A string with the name of the current font, or NULL if no fontis selected. You must free this string with g_free().
	 */
	public char[] getFontName()
	{
		// gchar* gtk_font_selection_dialog_get_font_name  (GtkFontSelectionDialog *fsd);
		return Str.toString(gtk_font_selection_dialog_get_font_name(gtkFontSelectionDialog)).dup;
	}
	
	/**
	 * Sets the currently-selected font.
	 * Params:
	 * fontname = a fontname.
	 * Returns:TRUE if the font was found.
	 */
	public int setFontName(char[] fontname)
	{
		// gboolean gtk_font_selection_dialog_set_font_name  (GtkFontSelectionDialog *fsd,  const gchar *fontname);
		return gtk_font_selection_dialog_set_font_name(gtkFontSelectionDialog, Str.toStringz(fontname));
	}
	
	/**
	 * Gets the text displayed in the preview area.
	 * Returns:the text displayed in the preview area. This string is owned by the widget and should not be modified or freed.
	 */
	public char[] getPreviewText()
	{
		// const gchar* gtk_font_selection_dialog_get_preview_text  (GtkFontSelectionDialog *fsd);
		return Str.toString(gtk_font_selection_dialog_get_preview_text(gtkFontSelectionDialog)).dup;
	}
	
	/**
	 * Sets the text displayed in the preview area.
	 * Params:
	 * text = the text to display in the preview area.
	 */
	public void setPreviewText(char[] text)
	{
		// void gtk_font_selection_dialog_set_preview_text  (GtkFontSelectionDialog *fsd,  const gchar *text);
		gtk_font_selection_dialog_set_preview_text(gtkFontSelectionDialog, Str.toStringz(text));
	}
}
