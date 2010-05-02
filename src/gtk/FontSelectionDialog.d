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
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Font
 * 	- gtk.Widget
 * structWrap:
 * 	- GdkFont* -> Font
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.FontSelectionDialog;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;


private import glib.Str;
private import gdk.Font;
private import gtk.Widget;



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
		if(gtkFontSelectionDialog is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkFontSelectionDialog);
		if( ptr !is null )
		{
			this = cast(FontSelectionDialog)ptr;
			return;
		}
		super(cast(GtkDialog*)gtkFontSelectionDialog);
		this.gtkFontSelectionDialog = gtkFontSelectionDialog;
	}
	
	/**
	 */
	
	/**
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
	 * gtk_font_selection_dialog_get_font has been deprecated since version 2.0 and should not be used in newly-written code. Use gtk_font_selection_dialog_get_font_name() instead.
	 * Gets the currently-selected font.
	 * Returns: the GdkFont from the GtkFontSelection for the currently selected font in the dialog, or NULL if no font is selected
	 */
	public Font getFont()
	{
		// GdkFont* gtk_font_selection_dialog_get_font (GtkFontSelectionDialog *fsd);
		auto p = gtk_font_selection_dialog_get_font(gtkFontSelectionDialog);
		if(p is null)
		{
			return null;
		}
		return new Font(cast(GdkFont*) p);
	}
	
	/**
	 * Gets the currently-selected font name.
	 * Note that this can be a different string than what you set with
	 * gtk_font_selection_dialog_set_font_name(), as the font selection widget
	 * may normalize font names and thus return a string with a different
	 * structure. For example, "Helvetica Italic Bold 12" could be normalized
	 * to "Helvetica Bold Italic 12". Use pango_font_description_equal()
	 * if you want to compare two font descriptions.
	 * Returns: A string with the name of the current font, or NULL if no  font is selected. You must free this string with g_free().
	 */
	public string getFontName()
	{
		// gchar* gtk_font_selection_dialog_get_font_name  (GtkFontSelectionDialog *fsd);
		return Str.toString(gtk_font_selection_dialog_get_font_name(gtkFontSelectionDialog));
	}
	
	/**
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
	 * Gets the text displayed in the preview area.
	 * Returns: the text displayed in the preview area.  This string is owned by the widget and should not be  modified or freed
	 */
	public string getPreviewText()
	{
		// const gchar * gtk_font_selection_dialog_get_preview_text  (GtkFontSelectionDialog *fsd);
		return Str.toString(gtk_font_selection_dialog_get_preview_text(gtkFontSelectionDialog));
	}
	
	/**
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
	 * gtk_font_selection_dialog_get_apply_button has been deprecated since version 2.16 and should not be used in newly-written code. Don't use this function.
	 * Obtains a button. The button doesn't have any function.
	 * Since 2.14
	 * Returns: a GtkWidget
	 */
	public Widget getApplyButton()
	{
		// GtkWidget * gtk_font_selection_dialog_get_apply_button  (GtkFontSelectionDialog *fsd);
		auto p = gtk_font_selection_dialog_get_apply_button(gtkFontSelectionDialog);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * Gets the 'Cancel' button.
	 * Since 2.14
	 * Returns: the GtkWidget used in the dialog for the 'Cancel' button.
	 */
	public Widget getCancelButton()
	{
		// GtkWidget * gtk_font_selection_dialog_get_cancel_button  (GtkFontSelectionDialog *fsd);
		auto p = gtk_font_selection_dialog_get_cancel_button(gtkFontSelectionDialog);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * Gets the 'OK' button.
	 * Since 2.14
	 * Returns: the GtkWidget used in the dialog for the 'OK' button.
	 */
	public Widget getOkButton()
	{
		// GtkWidget * gtk_font_selection_dialog_get_ok_button  (GtkFontSelectionDialog *fsd);
		auto p = gtk_font_selection_dialog_get_ok_button(gtkFontSelectionDialog);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
}
