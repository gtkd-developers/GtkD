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
public  import gobject.ObjectG;
public  import gobject.Signals;
public  import gtkc.gdktypes;
public  import gtkc.gtk;
public  import gtkc.gtktypes;
public  import pango.PgFontDescription;
public  import pango.PgFontFace;
public  import pango.PgFontFamily;


/**
 * #GtkFontChooser is an interface that can be implemented by widgets
 * displaying the list of fonts.  In GTK+, the main objects
 * that implement this interface are #GtkFontChooserWidget,
 * #GtkFontChooserDialog and #GtkFontButton.
 */
public template FontChooserT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkFontChooser* getFontChooserStruct()
	{
		return cast(GtkFontChooser*)getStruct();
	}

	/**
	 */

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
	public string getFont()
	{
		return Str.toString(gtk_font_chooser_get_font(getFontChooserStruct()));
	}

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
	public PgFontDescription getFontDesc()
	{
		auto p = gtk_font_chooser_get_font_desc(getFontChooserStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) p);
	}

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
	public PgFontFace getFontFace()
	{
		auto p = gtk_font_chooser_get_font_face(getFontChooserStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontFace)(cast(PangoFontFace*) p);
	}

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
	public PgFontFamily getFontFamily()
	{
		auto p = gtk_font_chooser_get_font_family(getFontChooserStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontFamily)(cast(PangoFontFamily*) p);
	}

	/**
	 * The selected font size.
	 *
	 * Return: A n integer representing the selected font size,
	 *     or -1 if no font size is selected.
	 *
	 * Since: 3.2
	 */
	public int getFontSize()
	{
		return gtk_font_chooser_get_font_size(getFontChooserStruct());
	}

	/**
	 * Gets the text displayed in the preview area.
	 *
	 * Return: the text displayed in the
	 *     preview area
	 *
	 * Since: 3.2
	 */
	public string getPreviewText()
	{
		return Str.toString(gtk_font_chooser_get_preview_text(getFontChooserStruct()));
	}

	/**
	 * Returns whether the preview entry is shown or not.
	 *
	 * Return: %TRUE if the preview entry is shown
	 *     or %FALSE if it is hidden.
	 *
	 * Since: 3.2
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
	 *     filter = a #GtkFontFilterFunc, or %NULL
	 *     userData = data to pass to @filter
	 *     destroy = function to call to free @data when it is no longer needed
	 *
	 * Since: 3.2
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
	 *
	 * Since: 3.2
	 */
	public void setFont(string fontname)
	{
		gtk_font_chooser_set_font(getFontChooserStruct(), Str.toStringz(fontname));
	}

	/**
	 * Sets the currently-selected font from @font_desc.
	 *
	 * Params:
	 *     fontDesc = a #PangoFontDescription
	 *
	 * Since: 3.2
	 */
	public void setFontDesc(PgFontDescription fontDesc)
	{
		gtk_font_chooser_set_font_desc(getFontChooserStruct(), (fontDesc is null) ? null : fontDesc.getPgFontDescriptionStruct());
	}

	/**
	 * Sets the text displayed in the preview area.
	 * The @text is used to show how the selected font looks.
	 *
	 * Params:
	 *     text = the text to display in the preview area
	 *
	 * Since: 3.2
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
	 *
	 * Since: 3.2
	 */
	public void setShowPreviewEntry(bool showPreviewEntry)
	{
		gtk_font_chooser_set_show_preview_entry(getFontChooserStruct(), showPreviewEntry);
	}

	int[string] connectedSignals;

	void delegate(string, FontChooserIF)[] _onFontActivatedListeners;
	@property void delegate(string, FontChooserIF)[] onFontActivatedListeners()
	{
		return _onFontActivatedListeners;
	}
	/**
	 * Emitted when a font is activated.
	 * This usually happens when the user double clicks an item,
	 * or an item is selected and the user presses one of the keys
	 * Space, Shift+Space, Return or Enter.
	 *
	 * Params:
	 *     fontname = the font name
	 */
	void addOnFontActivated(void delegate(string, FontChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( "font-activated" !in connectedSignals )
		{
			Signals.connectData(
				this,
				"font-activated",
				cast(GCallback)&callBackFontActivated,
				cast(void*)cast(FontChooserIF)this,
				null,
				connectFlags);
			connectedSignals["font-activated"] = 1;
		}
		_onFontActivatedListeners ~= dlg;
	}
	extern(C) static void callBackFontActivated(GtkFontChooser* fontchooserStruct, char* fontname, FontChooserIF _fontchooser)
	{
		foreach ( void delegate(string, FontChooserIF) dlg; _fontchooser.onFontActivatedListeners )
		{
			dlg(Str.toString(fontname), _fontchooser);
		}
	}
}
