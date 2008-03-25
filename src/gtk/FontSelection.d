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
 * inFile  = GtkFontSelection.html
 * outPack = gtk
 * outFile = FontSelection
 * strct   = GtkFontSelection
 * realStrct=
 * ctorStrct=
 * clss    = FontSelection
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_font_selection_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Font
 * structWrap:
 * 	- GdkFont* -> Font
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.FontSelection;

public  import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gdk.Font;



private import gtk.VBox;

/**
 * Description
 * The GtkFontSelection widget lists the available fonts, styles and sizes,
 * allowing the user to select a font.
 * It is used in the GtkFontSelectionDialog widget to provide a dialog box for
 * selecting fonts.
 * To set the font which is initially selected, use
 * gtk_font_selection_set_font_name().
 * To get the selected font use gtk_font_selection_get_font_name().
 * To change the text which is shown in the preview area, use
 * gtk_font_selection_set_preview_text().
 */
public class FontSelection : VBox
{
	
	/** the main Gtk struct */
	protected GtkFontSelection* gtkFontSelection;
	
	
	public GtkFontSelection* getFontSelectionStruct()
	{
		return gtkFontSelection;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFontSelection;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkFontSelection* gtkFontSelection)
	{
		if(gtkFontSelection is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkFontSelection passed to constructor.");
			else return;
		}
		super(cast(GtkVBox*)gtkFontSelection);
		this.gtkFontSelection = gtkFontSelection;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkFontSelection.
	 */
	public this ()
	{
		// GtkWidget* gtk_font_selection_new (void);
		auto p = gtk_font_selection_new();
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GtkFontSelection*) p);
	}
	
	/**
	 * Warning
	 * gtk_font_selection_get_font is deprecated and should not be used in newly-written code.
	 * Gets the currently-selected font.
	 * Returns:the currently-selected font, or NULL if no font is selected.
	 */
	public Font getFont()
	{
		// GdkFont* gtk_font_selection_get_font (GtkFontSelection *fontsel);
		auto p = gtk_font_selection_get_font(gtkFontSelection);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Font(cast(GdkFont*) p);
	}
	
	/**
	 * Gets the currently-selected font name. Note that this can be a different
	 * string than what you set with gtk_font_selection_set_font_name(), as
	 * the font selection widget may normalize font names and thus return a string
	 * with a different structure. For example, "Helvetica Italic Bold 12" could be
	 * normalized to "Helvetica Bold Italic 12". Use pango_font_description_equal()
	 * if you want to compare two font descriptions.
	 * Returns: A string with the name of the current font, or NULL if no fontis selected. You must free this string with g_free().
	 */
	public string getFontName()
	{
		// gchar* gtk_font_selection_get_font_name (GtkFontSelection *fontsel);
		return Str.toString(gtk_font_selection_get_font_name(gtkFontSelection));
	}
	
	/**
	 * Sets the currently-selected font. Note that the fontsel needs to know the
	 * screen in which it will appear for this to work; this can be guaranteed by
	 * simply making sure that the fontsel is inserted in a toplevel window before
	 * you call this function.
	 * Params:
	 * fontname =  a font name like "Helvetica 12" or "Times Bold 18"
	 * Returns: TRUE if the font could be set successfully; FALSE if no suchfont exists or if the fontsel doesn't belong to a particular screen yet.
	 */
	public int setFontName(string fontname)
	{
		// gboolean gtk_font_selection_set_font_name (GtkFontSelection *fontsel,  const gchar *fontname);
		return gtk_font_selection_set_font_name(gtkFontSelection, Str.toStringz(fontname));
	}
	
	/**
	 * Gets the text displayed in the preview area.
	 * Returns:the text displayed in the preview area. This string is owned by the widget and should not be modified or freed.
	 */
	public string getPreviewText()
	{
		// const gchar* gtk_font_selection_get_preview_text (GtkFontSelection *fontsel);
		return Str.toString(gtk_font_selection_get_preview_text(gtkFontSelection));
	}
	
	/**
	 * Sets the text displayed in the preview area.
	 * Params:
	 * text = the text to display in the preview area.
	 */
	public void setPreviewText(string text)
	{
		// void gtk_font_selection_set_preview_text (GtkFontSelection *fontsel,  const gchar *text);
		gtk_font_selection_set_preview_text(gtkFontSelection, Str.toStringz(text));
	}
}
