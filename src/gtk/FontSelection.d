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
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * 	- pango.PgFontFace
 * 	- pango.PgFontFamily
 * structWrap:
 * 	- GtkWidget* -> Widget
 * 	- PangoFontFace* -> PgFontFace
 * 	- PangoFontFamily* -> PgFontFamily
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.FontSelection;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gtk.Widget;
private import pango.PgFontFace;
private import pango.PgFontFamily;



private import gtk.Box;

/**
 * The GtkFontSelection widget lists the available fonts, styles and sizes,
 * allowing the user to select a font.
 * It is used in the GtkFontSelectionDialog widget to provide a dialog box for
 * selecting fonts.
 *
 * To set the font which is initially selected, use
 * gtk_font_selection_set_font_name().
 *
 * To get the selected font use gtk_font_selection_get_font_name().
 *
 * To change the text which is shown in the preview area, use
 * gtk_font_selection_set_preview_text().
 *
 * In GTK+ 3.2, GtkFontSelection has been deprecated in favor of
 * GtkFontChooser.
 */
public class FontSelection : Box
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
		super(cast(GtkBox*)gtkFontSelection);
		this.gtkFontSelection = gtkFontSelection;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkFontSelection = cast(GtkFontSelection*)obj;
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * gtk_font_selection_new has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooserWidget instead
	 * Creates a new GtkFontSelection.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_font_selection_new (void);
		auto p = gtk_font_selection_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_font_selection_new()");
		}
		this(cast(GtkFontSelection*) p);
	}
	
	/**
	 * Warning
	 * gtk_font_selection_get_font_name has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooser
	 * Gets the currently-selected font name.
	 * Note that this can be a different string than what you set with
	 * gtk_font_selection_set_font_name(), as the font selection widget may
	 * normalize font names and thus return a string with a different structure.
	 * For example, "Helvetica Italic Bold 12" could be normalized to
	 * "Helvetica Bold Italic 12". Use pango_font_description_equal()
	 * if you want to compare two font descriptions.
	 * Returns: A string with the name of the current font, or NULL if no font is selected. You must free this string with g_free().
	 */
	public string getFontName()
	{
		// gchar * gtk_font_selection_get_font_name (GtkFontSelection *fontsel);
		return Str.toString(gtk_font_selection_get_font_name(gtkFontSelection));
	}
	
	/**
	 * Warning
	 * gtk_font_selection_set_font_name has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooser
	 * Sets the currently-selected font.
	 * Note that the fontsel needs to know the screen in which it will appear
	 * for this to work; this can be guaranteed by simply making sure that the
	 * fontsel is inserted in a toplevel window before you call this function.
	 * Params:
	 * fontname = a font name like "Helvetica 12" or "Times Bold 18"
	 * Returns: TRUE if the font could be set successfully; FALSE if no such font exists or if the fontsel doesn't belong to a particular screen yet.
	 */
	public int setFontName(string fontname)
	{
		// gboolean gtk_font_selection_set_font_name (GtkFontSelection *fontsel,  const gchar *fontname);
		return gtk_font_selection_set_font_name(gtkFontSelection, Str.toStringz(fontname));
	}
	
	/**
	 * Warning
	 * gtk_font_selection_get_preview_text has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooser
	 * Gets the text displayed in the preview area.
	 * Returns: the text displayed in the preview area. This string is owned by the widget and should not be modified or freed
	 */
	public string getPreviewText()
	{
		// const gchar * gtk_font_selection_get_preview_text (GtkFontSelection *fontsel);
		return Str.toString(gtk_font_selection_get_preview_text(gtkFontSelection));
	}
	
	/**
	 * Warning
	 * gtk_font_selection_set_preview_text has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooser
	 * Sets the text displayed in the preview area.
	 * The text is used to show how the selected font looks.
	 * Params:
	 * text = the text to display in the preview area
	 */
	public void setPreviewText(string text)
	{
		// void gtk_font_selection_set_preview_text (GtkFontSelection *fontsel,  const gchar *text);
		gtk_font_selection_set_preview_text(gtkFontSelection, Str.toStringz(text));
	}
	
	/**
	 * Warning
	 * gtk_font_selection_get_face has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooser
	 * Gets the PangoFontFace representing the selected font group
	 * details (i.e. family, slant, weight, width, etc).
	 * Since 2.14
	 * Returns: A PangoFontFace representing the selected font group details. The returned object is owned by fontsel and must not be modified or freed. [transfer none]
	 */
	public PgFontFace getFace()
	{
		// PangoFontFace * gtk_font_selection_get_face (GtkFontSelection *fontsel);
		auto p = gtk_font_selection_get_face(gtkFontSelection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontFace)(cast(PangoFontFace*) p);
	}
	
	/**
	 * Warning
	 * gtk_font_selection_get_face_list has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooser
	 * This returns the GtkTreeView which lists all styles available for
	 * the selected font. For example, 'Regular', 'Bold', etc.
	 * Since 2.14
	 * Returns: A GtkWidget that is part of fontsel. [transfer none]
	 */
	public Widget getFaceList()
	{
		// GtkWidget * gtk_font_selection_get_face_list (GtkFontSelection *fontsel);
		auto p = gtk_font_selection_get_face_list(gtkFontSelection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Warning
	 * gtk_font_selection_get_family has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooser
	 * Gets the PangoFontFamily representing the selected font family.
	 * Since 2.14
	 * Returns: A PangoFontFamily representing the selected font family. Font families are a collection of font faces. The returned object is owned by fontsel and must not be modified or freed. [transfer none]
	 */
	public PgFontFamily getFamily()
	{
		// PangoFontFamily * gtk_font_selection_get_family (GtkFontSelection *fontsel);
		auto p = gtk_font_selection_get_family(gtkFontSelection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontFamily)(cast(PangoFontFamily*) p);
	}
	
	/**
	 * Warning
	 * gtk_font_selection_get_size has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooser
	 * The selected font size.
	 * Since 2.14
	 * Returns: A n integer representing the selected font size, or -1 if no font size is selected.
	 */
	public int getSize()
	{
		// gint gtk_font_selection_get_size (GtkFontSelection *fontsel);
		return gtk_font_selection_get_size(gtkFontSelection);
	}
	
	/**
	 * Warning
	 * gtk_font_selection_get_family_list has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooser
	 * This returns the GtkTreeView that lists font families, for
	 * example, 'Sans', 'Serif', etc.
	 * Since 2.14
	 * Returns: A GtkWidget that is part of fontsel. [transfer none]
	 */
	public Widget getFamilyList()
	{
		// GtkWidget * gtk_font_selection_get_family_list (GtkFontSelection *fontsel);
		auto p = gtk_font_selection_get_family_list(gtkFontSelection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Warning
	 * gtk_font_selection_get_preview_entry has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooser
	 * This returns the GtkEntry used to display the font as a preview.
	 * Since 2.14
	 * Returns: A GtkWidget that is part of fontsel. [transfer none]
	 */
	public Widget getPreviewEntry()
	{
		// GtkWidget * gtk_font_selection_get_preview_entry  (GtkFontSelection *fontsel);
		auto p = gtk_font_selection_get_preview_entry(gtkFontSelection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Warning
	 * gtk_font_selection_get_size_entry has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooser
	 * This returns the GtkEntry used to allow the user to edit the font
	 * number manually instead of selecting it from the list of font sizes.
	 * Since 2.14
	 * Returns: A GtkWidget that is part of fontsel. [transfer none]
	 */
	public Widget getSizeEntry()
	{
		// GtkWidget * gtk_font_selection_get_size_entry (GtkFontSelection *fontsel);
		auto p = gtk_font_selection_get_size_entry(gtkFontSelection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
	
	/**
	 * Warning
	 * gtk_font_selection_get_size_list has been deprecated since version 3.2 and should not be used in newly-written code. Use GtkFontChooser
	 * This returns the GtkTreeView used to list font sizes.
	 * Since 2.14
	 * Returns: A GtkWidget that is part of fontsel. [transfer none]
	 */
	public Widget getSizeList()
	{
		// GtkWidget * gtk_font_selection_get_size_list (GtkFontSelection *fontsel);
		auto p = gtk_font_selection_get_size_list(gtkFontSelection);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}
}
