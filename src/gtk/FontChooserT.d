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
 * inFile  = GtkFontChooser.html
 * outPack = gtk
 * outFile = FontChooserT
 * strct   = GtkFontChooser
 * realStrct=
 * ctorStrct=
 * clss    = FontChooserT
 * interf  = FontChooserIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_font_chooser_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- pango.PgFontDescription
 * 	- pango.PgFontFace
 * 	- pango.PgFontFamily
 * structWrap:
 * 	- PangoFontDescription* -> PgFontDescription
 * 	- PangoFontFace* -> PgFontFace
 * 	- PangoFontFamily* -> PgFontFamily
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.FontChooserT;

public  import gtkc.gtktypes;

public import gtkc.gtk;
public import glib.ConstructionException;
public import gobject.ObjectG;

public import gobject.Signals;
public  import gtkc.gdktypes;

public import glib.Str;
public import pango.PgFontDescription;
public import pango.PgFontFace;
public import pango.PgFontFamily;




/**
 * GtkFontChooser is an interface that can be implemented by widgets
 * displaying the list of fonts. In GTK+, the main objects
 * that implement this interface are GtkFontChooserWidget,
 * GtkFontChooserDialog and GtkFontButton.
 */
public template FontChooserT(TStruct)
{
	
	/** the main Gtk struct */
	protected GtkFontChooser* gtkFontChooser;
	
	
	public GtkFontChooser* getFontChooserTStruct()
	{
		return cast(GtkFontChooser*)getStruct();
	}
	
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(string, FontChooserIF)[] _onFontActivatedListeners;
	void delegate(string, FontChooserIF)[] onFontActivatedListeners()
	{
		return  _onFontActivatedListeners;
	}
	/**
	 * Emitted when a font is activated.
	 * This usually happens when the user double clicks an item,
	 * or an item is selected and the user presses one of the keys
	 * Space, Shift+Space, Return or Enter.
	 * See Also
	 * GtkFontChooserDialog, GtkFontChooserWidget, GtkFontButton
	 */
	void addOnFontActivated(void delegate(string, FontChooserIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("font-activated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"font-activated",
			cast(GCallback)&callBackFontActivated,
			cast(void*)cast(FontChooserIF)this,
			null,
			connectFlags);
			connectedSignals["font-activated"] = 1;
		}
		_onFontActivatedListeners ~= dlg;
	}
	extern(C) static void callBackFontActivated(GtkFontChooser* selfStruct, gchar* fontname, FontChooserIF _fontChooserIF)
	{
		foreach ( void delegate(string, FontChooserIF) dlg ; _fontChooserIF.onFontActivatedListeners )
		{
			dlg(Str.toString(fontname), _fontChooserIF);
		}
	}
	
	
	/**
	 * Gets the PangoFontFamily representing the selected font family.
	 * Font families are a collection of font faces.
	 * If the selected font is not installed, returns NULL.
	 * Returns: A PangoFontFamily representing the selected font family, or NULL. The returned object is owned by fontchooser and must not be modified or freed. [transfer none] Since 3.2
	 */
	public PgFontFamily getFontFamily()
	{
		// PangoFontFamily * gtk_font_chooser_get_font_family (GtkFontChooser *fontchooser);
		auto p = gtk_font_chooser_get_font_family(getFontChooserTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontFamily)(cast(PangoFontFamily*) p);
	}
	
	/**
	 * Gets the PangoFontFace representing the selected font group
	 * details (i.e. family, slant, weight, width, etc).
	 * If the selected font is not installed, returns NULL.
	 * Returns: A PangoFontFace representing the selected font group details, or NULL. The returned object is owned by fontchooser and must not be modified or freed. [transfer none] Since 3.2
	 */
	public PgFontFace getFontFace()
	{
		// PangoFontFace * gtk_font_chooser_get_font_face (GtkFontChooser *fontchooser);
		auto p = gtk_font_chooser_get_font_face(getFontChooserTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontFace)(cast(PangoFontFace*) p);
	}
	
	/**
	 * The selected font size.
	 * Returns: A n integer representing the selected font size, or -1 if no font size is selected. Since 3.2
	 */
	public int getFontSize()
	{
		// gint gtk_font_chooser_get_font_size (GtkFontChooser *fontchooser);
		return gtk_font_chooser_get_font_size(getFontChooserTStruct());
	}
	
	/**
	 * Gets the currently-selected font name.
	 * Note that this can be a different string than what you set with
	 * gtk_font_chooser_set_font(), as the font chooser widget may
	 * normalize font names and thus return a string with a different
	 * structure. For example, "Helvetica Italic Bold 12" could be
	 * normalized to "Helvetica Bold Italic 12".
	 * Use pango_font_description_equal() if you want to compare two
	 * font descriptions.
	 * Returns: A string with the name of the current font, or NULL if no font is selected. You must free this string with g_free(). [transfer full][allow-none] Since 3.2
	 */
	public string getFont()
	{
		// gchar * gtk_font_chooser_get_font (GtkFontChooser *fontchooser);
		return Str.toString(gtk_font_chooser_get_font(getFontChooserTStruct()));
	}
	
	/**
	 * Sets the currently-selected font.
	 * Params:
	 * fontname = a font name like "Helvetica 12" or "Times Bold 18"
	 * Since 3.2
	 */
	public void setFont(string fontname)
	{
		// void gtk_font_chooser_set_font (GtkFontChooser *fontchooser,  const gchar *fontname);
		gtk_font_chooser_set_font(getFontChooserTStruct(), Str.toStringz(fontname));
	}
	
	/**
	 * Gets the currently-selected font.
	 * Note that this can be a different string than what you set with
	 * gtk_font_chooser_set_font(), as the font chooser widget may
	 * normalize font names and thus return a string with a different
	 * structure. For example, "Helvetica Italic Bold 12" could be
	 * normalized to "Helvetica Bold Italic 12".
	 * Use pango_font_description_equal() if you want to compare two
	 * font descriptions.
	 * Returns: A PangoFontDescription for the current font, or NULL if no font is selected. [transfer full][allow-none] Since 3.2
	 */
	public PgFontDescription getFontDesc()
	{
		// PangoFontDescription * gtk_font_chooser_get_font_desc (GtkFontChooser *fontchooser);
		auto p = gtk_font_chooser_get_font_desc(getFontChooserTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(PgFontDescription)(cast(PangoFontDescription*) p);
	}
	
	/**
	 * Sets the currently-selected font from font_desc.
	 * Params:
	 * fontDesc = a PangoFontDescription
	 * Since 3.2
	 */
	public void setFontDesc(PgFontDescription fontDesc)
	{
		// void gtk_font_chooser_set_font_desc (GtkFontChooser *fontchooser,  const PangoFontDescription *font_desc);
		gtk_font_chooser_set_font_desc(getFontChooserTStruct(), (fontDesc is null) ? null : fontDesc.getPgFontDescriptionStruct());
	}
	
	/**
	 * Gets the text displayed in the preview area.
	 * Returns: the text displayed in the preview area. [transfer full] Since 3.2
	 */
	public string getPreviewText()
	{
		// gchar * gtk_font_chooser_get_preview_text (GtkFontChooser *fontchooser);
		return Str.toString(gtk_font_chooser_get_preview_text(getFontChooserTStruct()));
	}
	
	/**
	 * Sets the text displayed in the preview area.
	 * The text is used to show how the selected font looks.
	 * Params:
	 * text = the text to display in the preview area. [transfer none]
	 * Since 3.2
	 */
	public void setPreviewText(string text)
	{
		// void gtk_font_chooser_set_preview_text (GtkFontChooser *fontchooser,  const gchar *text);
		gtk_font_chooser_set_preview_text(getFontChooserTStruct(), Str.toStringz(text));
	}
	
	/**
	 * Returns whether the preview entry is shown or not.
	 * Returns: TRUE if the preview entry is shown or FALSE if it is hidden. Since 3.2
	 */
	public int getShowPreviewEntry()
	{
		// gboolean gtk_font_chooser_get_show_preview_entry  (GtkFontChooser *fontchooser);
		return gtk_font_chooser_get_show_preview_entry(getFontChooserTStruct());
	}
	
	/**
	 * Shows or hides the editable preview entry.
	 * Params:
	 * showPreviewEntry = whether to show the editable preview entry or not
	 * Since 3.2
	 */
	public void setShowPreviewEntry(int showPreviewEntry)
	{
		// void gtk_font_chooser_set_show_preview_entry  (GtkFontChooser *fontchooser,  gboolean show_preview_entry);
		gtk_font_chooser_set_show_preview_entry(getFontChooserTStruct(), showPreviewEntry);
	}
	
	/**
	 * Adds a filter function that decides which fonts to display
	 * in the font chooser.
	 * Params:
	 * filter = a GtkFontFilterFunc, or NULL. [allow-none]
	 * userData = data to pass to filter
	 * destroy = function to call to free data when it is no longer needed
	 * Since 3.2
	 */
	public void setFilterFunc(GtkFontFilterFunc filter, void* userData, GDestroyNotify destroy)
	{
		// void gtk_font_chooser_set_filter_func (GtkFontChooser *fontchooser,  GtkFontFilterFunc filter,  gpointer user_data,  GDestroyNotify destroy);
		gtk_font_chooser_set_filter_func(getFontChooserTStruct(), filter, userData, destroy);
	}
}
