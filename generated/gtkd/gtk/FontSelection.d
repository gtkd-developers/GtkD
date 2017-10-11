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


module gtk.FontSelection;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtk.Box;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import pango.PgFontFace;
private import pango.PgFontFamily;


/** */
public class FontSelection : Box
{
	/** the main Gtk struct */
	protected GtkFontSelection* gtkFontSelection;

	/** Get the main Gtk struct */
	public GtkFontSelection* getFontSelectionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkFontSelection;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFontSelection;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFontSelection* gtkFontSelection, bool ownedRef = false)
	{
		this.gtkFontSelection = gtkFontSelection;
		super(cast(GtkBox*)gtkFontSelection, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_font_selection_get_type();
	}

	/**
	 * Creates a new #GtkFontSelection.
	 *
	 * Deprecated: Use #GtkFontChooserWidget instead
	 *
	 * Returns: a new #GtkFontSelection
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_font_selection_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkFontSelection*) p);
	}

	/**
	 * Gets the #PangoFontFace representing the selected font group
	 * details (i.e. family, slant, weight, width, etc).
	 *
	 * Deprecated: Use #GtkFontChooser
	 *
	 * Returns: A #PangoFontFace representing the
	 *     selected font group details. The returned object is owned by
	 *     @fontsel and must not be modified or freed.
	 *
	 * Since: 2.14
	 */
	public PgFontFace getFace()
	{
		auto p = gtk_font_selection_get_face(gtkFontSelection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontFace)(cast(PangoFontFace*) p);
	}

	/**
	 * This returns the #GtkTreeView which lists all styles available for
	 * the selected font. For example, “Regular”, “Bold”, etc.
	 *
	 * Deprecated: Use #GtkFontChooser
	 *
	 * Returns: A #GtkWidget that is part of @fontsel
	 *
	 * Since: 2.14
	 */
	public Widget getFaceList()
	{
		auto p = gtk_font_selection_get_face_list(gtkFontSelection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Gets the #PangoFontFamily representing the selected font family.
	 *
	 * Deprecated: Use #GtkFontChooser
	 *
	 * Returns: A #PangoFontFamily representing the
	 *     selected font family. Font families are a collection of font
	 *     faces. The returned object is owned by @fontsel and must not
	 *     be modified or freed.
	 *
	 * Since: 2.14
	 */
	public PgFontFamily getFamily()
	{
		auto p = gtk_font_selection_get_family(gtkFontSelection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontFamily)(cast(PangoFontFamily*) p);
	}

	/**
	 * This returns the #GtkTreeView that lists font families, for
	 * example, “Sans”, “Serif”, etc.
	 *
	 * Deprecated: Use #GtkFontChooser
	 *
	 * Returns: A #GtkWidget that is part of @fontsel
	 *
	 * Since: 2.14
	 */
	public Widget getFamilyList()
	{
		auto p = gtk_font_selection_get_family_list(gtkFontSelection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Gets the currently-selected font name.
	 *
	 * Note that this can be a different string than what you set with
	 * gtk_font_selection_set_font_name(), as the font selection widget may
	 * normalize font names and thus return a string with a different structure.
	 * For example, “Helvetica Italic Bold 12” could be normalized to
	 * “Helvetica Bold Italic 12”. Use pango_font_description_equal()
	 * if you want to compare two font descriptions.
	 *
	 * Deprecated: Use #GtkFontChooser
	 *
	 * Returns: A string with the name of the current font, or %NULL if
	 *     no font is selected. You must free this string with g_free().
	 */
	public string getFontName()
	{
		auto retStr = gtk_font_selection_get_font_name(gtkFontSelection);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * This returns the #GtkEntry used to display the font as a preview.
	 *
	 * Deprecated: Use #GtkFontChooser
	 *
	 * Returns: A #GtkWidget that is part of @fontsel
	 *
	 * Since: 2.14
	 */
	public Widget getPreviewEntry()
	{
		auto p = gtk_font_selection_get_preview_entry(gtkFontSelection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Gets the text displayed in the preview area.
	 *
	 * Deprecated: Use #GtkFontChooser
	 *
	 * Returns: the text displayed in the preview area.
	 *     This string is owned by the widget and should not be
	 *     modified or freed
	 */
	public string getPreviewText()
	{
		return Str.toString(gtk_font_selection_get_preview_text(gtkFontSelection));
	}

	/**
	 * The selected font size.
	 *
	 * Deprecated: Use #GtkFontChooser
	 *
	 * Returns: A n integer representing the selected font size,
	 *     or -1 if no font size is selected.
	 *
	 * Since: 2.14
	 */
	public int getSize()
	{
		return gtk_font_selection_get_size(gtkFontSelection);
	}

	/**
	 * This returns the #GtkEntry used to allow the user to edit the font
	 * number manually instead of selecting it from the list of font sizes.
	 *
	 * Deprecated: Use #GtkFontChooser
	 *
	 * Returns: A #GtkWidget that is part of @fontsel
	 *
	 * Since: 2.14
	 */
	public Widget getSizeEntry()
	{
		auto p = gtk_font_selection_get_size_entry(gtkFontSelection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * This returns the #GtkTreeView used to list font sizes.
	 *
	 * Deprecated: Use #GtkFontChooser
	 *
	 * Returns: A #GtkWidget that is part of @fontsel
	 *
	 * Since: 2.14
	 */
	public Widget getSizeList()
	{
		auto p = gtk_font_selection_get_size_list(gtkFontSelection);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) p);
	}

	/**
	 * Sets the currently-selected font.
	 *
	 * Note that the @fontsel needs to know the screen in which it will appear
	 * for this to work; this can be guaranteed by simply making sure that the
	 * @fontsel is inserted in a toplevel window before you call this function.
	 *
	 * Deprecated: Use #GtkFontChooser
	 *
	 * Params:
	 *     fontname = a font name like “Helvetica 12” or “Times Bold 18”
	 *
	 * Returns: %TRUE if the font could be set successfully; %FALSE if no
	 *     such font exists or if the @fontsel doesn’t belong to a particular
	 *     screen yet.
	 */
	public bool setFontName(string fontname)
	{
		return gtk_font_selection_set_font_name(gtkFontSelection, Str.toStringz(fontname)) != 0;
	}

	/**
	 * Sets the text displayed in the preview area.
	 * The @text is used to show how the selected font looks.
	 *
	 * Deprecated: Use #GtkFontChooser
	 *
	 * Params:
	 *     text = the text to display in the preview area
	 */
	public void setPreviewText(string text)
	{
		gtk_font_selection_set_preview_text(gtkFontSelection, Str.toStringz(text));
	}
}
