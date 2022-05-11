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


module gtk.FontChooserT;

public  import glib.Str;
public  import glib.c.functions;
public  import gobject.ObjectG;
public  import gobject.Signals;
public  import gtk.c.functions;
public  import gtk.c.types;
public  import pango.PgFontDescription;
public  import pango.PgFontFace;
public  import pango.PgFontFamily;
public  import pango.PgFontMap;
public  import std.algorithm;


/**
 * `GtkFontChooser` is an interface that can be implemented by widgets
 * for choosing fonts.
 * 
 * In GTK, the main objects that implement this interface are
 * [class@Gtk.FontChooserWidget], [class@Gtk.FontChooserDialog] and
 * [class@Gtk.FontButton].
 */
public template FontChooserT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkFontChooser* getFontChooserStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkFontChooser*)getStruct();
	}


	/**
	 * Gets the currently-selected font name.
	 *
	 * Note that this can be a different string than what you set with
	 * [method@Gtk.FontChooser.set_font], as the font chooser widget may
	 * normalize font names and thus return a string with a different
	 * structure. For example, “Helvetica Italic Bold 12” could be
	 * normalized to “Helvetica Bold Italic 12”.
	 *
	 * Use [method@Pango.FontDescription.equal] if you want to compare two
	 * font descriptions.
	 *
	 * Returns: A string with the name
	 *     of the current font
	 */
	public string getFont()
	{
		auto retStr = gtk_font_chooser_get_font(getFontChooserStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the currently-selected font.
	 *
	 * Note that this can be a different string than what you set with
	 * [method@Gtk.FontChooser.set_font], as the font chooser widget may
	 * normalize font names and thus return a string with a different
	 * structure. For example, “Helvetica Italic Bold 12” could be
	 * normalized to “Helvetica Bold Italic 12”.
	 *
	 * Use [method@Pango.FontDescription.equal] if you want to compare two
	 * font descriptions.
	 *
	 * Returns: A `PangoFontDescription` for the
	 *     current font
	 */
	public PgFontDescription getFontDesc()
	{
		auto __p = gtk_font_chooser_get_font_desc(getFontChooserStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) __p, true);
	}

	/**
	 * Gets the `PangoFontFace` representing the selected font group
	 * details (i.e. family, slant, weight, width, etc).
	 *
	 * If the selected font is not installed, returns %NULL.
	 *
	 * Returns: A `PangoFontFace` representing the
	 *     selected font group details
	 */
	public PgFontFace getFontFace()
	{
		auto __p = gtk_font_chooser_get_font_face(getFontChooserStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontFace)(cast(PangoFontFace*) __p);
	}

	/**
	 * Gets the `PangoFontFamily` representing the selected font family.
	 *
	 * Font families are a collection of font faces.
	 *
	 * If the selected font is not installed, returns %NULL.
	 *
	 * Returns: A `PangoFontFamily` representing the
	 *     selected font family
	 */
	public PgFontFamily getFontFamily()
	{
		auto __p = gtk_font_chooser_get_font_family(getFontChooserStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontFamily)(cast(PangoFontFamily*) __p);
	}

	/**
	 * Gets the currently-selected font features.
	 *
	 * Returns: the currently selected font features
	 */
	public string getFontFeatures()
	{
		auto retStr = gtk_font_chooser_get_font_features(getFontChooserStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the custom font map of this font chooser widget,
	 * or %NULL if it does not have one.
	 *
	 * Returns: a `PangoFontMap`
	 */
	public override PgFontMap getFontMap()
	{
		auto __p = gtk_font_chooser_get_font_map(getFontChooserStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PgFontMap)(cast(PangoFontMap*) __p, true);
	}

	/**
	 * The selected font size.
	 *
	 * Returns: A n integer representing the selected font size,
	 *     or -1 if no font size is selected.
	 */
	public int getFontSize()
	{
		return gtk_font_chooser_get_font_size(getFontChooserStruct());
	}

	/**
	 * Gets the language that is used for font features.
	 *
	 * Returns: the currently selected language
	 */
	public string getLanguage()
	{
		auto retStr = gtk_font_chooser_get_language(getFontChooserStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns the current level of granularity for selecting fonts.
	 *
	 * Returns: the current granularity level
	 */
	public GtkFontChooserLevel getLevel()
	{
		return gtk_font_chooser_get_level(getFontChooserStruct());
	}

	/**
	 * Gets the text displayed in the preview area.
	 *
	 * Returns: the text displayed in the preview area
	 */
	public string getPreviewText()
	{
		auto retStr = gtk_font_chooser_get_preview_text(getFontChooserStruct());

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns whether the preview entry is shown or not.
	 *
	 * Returns: %TRUE if the preview entry is shown or %FALSE if it is hidden.
	 */
	public bool getShowPreviewEntry()
	{
		return gtk_font_chooser_get_show_preview_entry(getFontChooserStruct()) != 0;
	}

	/**
	 * Adds a filter function that decides which fonts to display
	 * in the font chooser.
	 *
	 * Params:
	 *     filter = a `GtkFontFilterFunc`
	 *     userData = data to pass to @filter
	 *     destroy = function to call to free @data when it is no longer needed
	 */
	public void setFilterFunc(GtkFontFilterFunc filter, void* userData, GDestroyNotify destroy)
	{
		gtk_font_chooser_set_filter_func(getFontChooserStruct(), filter, userData, destroy);
	}

	/**
	 * Sets the currently-selected font.
	 *
	 * Params:
	 *     fontname = a font name like “Helvetica 12” or “Times Bold 18”
	 */
	public void setFont(string fontname)
	{
		gtk_font_chooser_set_font(getFontChooserStruct(), Str.toStringz(fontname));
	}

	/**
	 * Sets the currently-selected font from @font_desc.
	 *
	 * Params:
	 *     fontDesc = a `PangoFontDescription`
	 */
	public void setFontDesc(PgFontDescription fontDesc)
	{
		gtk_font_chooser_set_font_desc(getFontChooserStruct(), (fontDesc is null) ? null : fontDesc.getPgFontDescriptionStruct());
	}

	/**
	 * Sets a custom font map to use for this font chooser widget.
	 *
	 * A custom font map can be used to present application-specific
	 * fonts instead of or in addition to the normal system fonts.
	 *
	 * ```c
	 * FcConfig *config;
	 * PangoFontMap *fontmap;
	 *
	 * config = FcInitLoadConfigAndFonts ();
	 * FcConfigAppFontAddFile (config, my_app_font_file);
	 *
	 * fontmap = pango_cairo_font_map_new_for_font_type (CAIRO_FONT_TYPE_FT);
	 * pango_fc_font_map_set_config (PANGO_FC_FONT_MAP (fontmap), config);
	 *
	 * gtk_font_chooser_set_font_map (font_chooser, fontmap);
	 * ```
	 *
	 * Note that other GTK widgets will only be able to use the
	 * application-specific font if it is present in the font map they use:
	 *
	 * ```c
	 * context = gtk_widget_get_pango_context (label);
	 * pango_context_set_font_map (context, fontmap);
	 * ```
	 *
	 * Params:
	 *     fontmap = a `PangoFontMap`
	 */
	public override void setFontMap(PgFontMap fontmap)
	{
		gtk_font_chooser_set_font_map(getFontChooserStruct(), (fontmap is null) ? null : fontmap.getPgFontMapStruct());
	}

	/**
	 * Sets the language to use for font features.
	 *
	 * Params:
	 *     language = a language
	 */
	public void setLanguage(string language)
	{
		gtk_font_chooser_set_language(getFontChooserStruct(), Str.toStringz(language));
	}

	/**
	 * Sets the desired level of granularity for selecting fonts.
	 *
	 * Params:
	 *     level = the desired level of granularity
	 */
	public void setLevel(GtkFontChooserLevel level)
	{
		gtk_font_chooser_set_level(getFontChooserStruct(), level);
	}

	/**
	 * Sets the text displayed in the preview area.
	 *
	 * The @text is used to show how the selected font looks.
	 *
	 * Params:
	 *     text = the text to display in the preview area
	 */
	public void setPreviewText(string text)
	{
		gtk_font_chooser_set_preview_text(getFontChooserStruct(), Str.toStringz(text));
	}

	/**
	 * Shows or hides the editable preview entry.
	 *
	 * Params:
	 *     showPreviewEntry = whether to show the editable preview entry or not
	 */
	public void setShowPreviewEntry(bool showPreviewEntry)
	{
		gtk_font_chooser_set_show_preview_entry(getFontChooserStruct(), showPreviewEntry);
	}

	/**
	 * Emitted when a font is activated.
	 *
	 * This usually happens when the user double clicks an item,
	 * or an item is selected and the user presses one of the keys
	 * Space, Shift+Space, Return or Enter.
	 *
	 * Params:
	 *     fontname = the font name
	 */
	gulong addOnFontActivated(void delegate(string, FontChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "font-activated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
