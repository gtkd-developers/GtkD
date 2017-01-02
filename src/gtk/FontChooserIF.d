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


module gtk.FontChooserIF;

private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import pango.PgFontDescription;
private import pango.PgFontFace;
private import pango.PgFontFamily;
private import pango.PgFontMap;
private import std.algorithm;


/**
 * #GtkFontChooser is an interface that can be implemented by widgets
 * displaying the list of fonts. In GTK+, the main objects
 * that implement this interface are #GtkFontChooserWidget,
 * #GtkFontChooserDialog and #GtkFontButton. The GtkFontChooser interface
 * has been introducted in GTK+ 3.2.
 */
public interface FontChooserIF{
	/** Get the main Gtk struct */
	public GtkFontChooser* getFontChooserStruct();

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/**
	 * Gets the currently-selected font name.
	 *
	 * Note that this can be a different string than what you set with
	 * gtk_font_chooser_set_font(), as the font chooser widget may
	 * normalize font names and thus return a string with a different
	 * structure. For example, “Helvetica Italic Bold 12” could be
	 * normalized to “Helvetica Bold Italic 12”.
	 *
	 * Use pango_font_description_equal() if you want to compare two
	 * font descriptions.
	 *
	 * Return: A string with the name
	 *     of the current font, or %NULL if  no font is selected. You must
	 *     free this string with g_free().
	 *
	 * Since: 3.2
	 */
	public string getFont();

	/**
	 * Gets the currently-selected font.
	 *
	 * Note that this can be a different string than what you set with
	 * gtk_font_chooser_set_font(), as the font chooser widget may
	 * normalize font names and thus return a string with a different
	 * structure. For example, “Helvetica Italic Bold 12” could be
	 * normalized to “Helvetica Bold Italic 12”.
	 *
	 * Use pango_font_description_equal() if you want to compare two
	 * font descriptions.
	 *
	 * Return: A #PangoFontDescription for the
	 *     current font, or %NULL if  no font is selected.
	 *
	 * Since: 3.2
	 */
	public PgFontDescription getFontDesc();

	/**
	 * Gets the #PangoFontFace representing the selected font group
	 * details (i.e. family, slant, weight, width, etc).
	 *
	 * If the selected font is not installed, returns %NULL.
	 *
	 * Return: A #PangoFontFace representing the
	 *     selected font group details, or %NULL. The returned object is owned by
	 *     @fontchooser and must not be modified or freed.
	 *
	 * Since: 3.2
	 */
	public PgFontFace getFontFace();

	/**
	 * Gets the #PangoFontFamily representing the selected font family.
	 * Font families are a collection of font faces.
	 *
	 * If the selected font is not installed, returns %NULL.
	 *
	 * Return: A #PangoFontFamily representing the
	 *     selected font family, or %NULL. The returned object is owned by @fontchooser
	 *     and must not be modified or freed.
	 *
	 * Since: 3.2
	 */
	public PgFontFamily getFontFamily();

	/**
	 * Gets the custom font map of this font chooser widget,
	 * or %NULL if it does not have one.
	 *
	 * Return: a #PangoFontMap, or %NULL
	 *
	 * Since: 3.18
	 */
	public PgFontMap getFontMap();

	/**
	 * The selected font size.
	 *
	 * Return: A n integer representing the selected font size,
	 *     or -1 if no font size is selected.
	 *
	 * Since: 3.2
	 */
	public int getFontSize();

	/**
	 * Gets the text displayed in the preview area.
	 *
	 * Return: the text displayed in the
	 *     preview area
	 *
	 * Since: 3.2
	 */
	public string getPreviewText();

	/**
	 * Returns whether the preview entry is shown or not.
	 *
	 * Return: %TRUE if the preview entry is shown
	 *     or %FALSE if it is hidden.
	 *
	 * Since: 3.2
	 */
	public bool getShowPreviewEntry();

	/**
	 * Adds a filter function that decides which fonts to display
	 * in the font chooser.
	 *
	 * Params:
	 *     filter = a #GtkFontFilterFunc, or %NULL
	 *     userData = data to pass to @filter
	 *     destroy = function to call to free @data when it is no longer needed
	 *
	 * Since: 3.2
	 */
	public void setFilterFunc(GtkFontFilterFunc filter, void* userData, GDestroyNotify destroy);

	/**
	 * Sets the currently-selected font.
	 *
	 * Params:
	 *     fontname = a font name like “Helvetica 12” or “Times Bold 18”
	 *
	 * Since: 3.2
	 */
	public void setFont(string fontname);

	/**
	 * Sets the currently-selected font from @font_desc.
	 *
	 * Params:
	 *     fontDesc = a #PangoFontDescription
	 *
	 * Since: 3.2
	 */
	public void setFontDesc(PgFontDescription fontDesc);

	/**
	 * Sets a custom font map to use for this font chooser widget.
	 * A custom font map can be used to present application-specific
	 * fonts instead of or in addition to the normal system fonts.
	 *
	 * |[<!-- language="C" -->
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
	 * ]|
	 *
	 * Note that other GTK+ widgets will only be able to use the application-specific
	 * font if it is present in the font map they use:
	 *
	 * |[
	 * context = gtk_widget_get_pango_context (label);
	 * pango_context_set_font_map (context, fontmap);
	 * ]|
	 *
	 * Params:
	 *     fontmap = a #PangoFontMap
	 *
	 * Since: 3.18
	 */
	public void setFontMap(PgFontMap fontmap);

	/**
	 * Sets the text displayed in the preview area.
	 * The @text is used to show how the selected font looks.
	 *
	 * Params:
	 *     text = the text to display in the preview area
	 *
	 * Since: 3.2
	 */
	public void setPreviewText(string text);

	/**
	 * Shows or hides the editable preview entry.
	 *
	 * Params:
	 *     showPreviewEntry = whether to show the editable preview entry or not
	 *
	 * Since: 3.2
	 */
	public void setShowPreviewEntry(bool showPreviewEntry);
	/**
	 * Emitted when a font is activated.
	 * This usually happens when the user double clicks an item,
	 * or an item is selected and the user presses one of the keys
	 * Space, Shift+Space, Return or Enter.
	 *
	 * Params:
	 *     fontname = the font name
	 */
	gulong addOnFontActivated(void delegate(string, FontChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	;

}
