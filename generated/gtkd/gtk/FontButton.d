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


module gtk.FontButton;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Button;
private import gtk.FontChooserIF;
private import gtk.FontChooserT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * The #GtkFontButton is a button which displays the currently selected
 * font an allows to open a font chooser dialog to change the font.
 * It is suitable widget for selecting a font in a preference dialog.
 * 
 * # CSS nodes
 * 
 * GtkFontButton has a single CSS node with name button and style class .font.
 */
public class FontButton : Button, FontChooserIF
{
	/** the main Gtk struct */
	protected GtkFontButton* gtkFontButton;

	/** Get the main Gtk struct */
	public GtkFontButton* getFontButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkFontButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFontButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFontButton* gtkFontButton, bool ownedRef = false)
	{
		this.gtkFontButton = gtkFontButton;
		super(cast(GtkButton*)gtkFontButton, ownedRef);
	}

	// add the FontChooser capabilities
	mixin FontChooserT!(GtkFontButton);


	/** */
	public static GType getType()
	{
		return gtk_font_button_get_type();
	}

	/**
	 * Creates a new font picker widget.
	 *
	 * Returns: a new font picker widget.
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_font_button_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkFontButton*) p);
	}

	/**
	 * Creates a new font picker widget.
	 *
	 * Params:
	 *     fontname = Name of font to display in font chooser dialog
	 *
	 * Returns: a new font picker widget.
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string fontname)
	{
		auto p = gtk_font_button_new_with_font(Str.toStringz(fontname));

		if(p is null)
		{
			throw new ConstructionException("null returned by new_with_font");
		}

		this(cast(GtkFontButton*) p);
	}

	/**
	 * Retrieves the name of the currently selected font. This name includes
	 * style and size information as well. If you want to render something
	 * with the font, use this string with pango_font_description_from_string() .
	 * If you’re interested in peeking certain values (family name,
	 * style, size, weight) just query these properties from the
	 * #PangoFontDescription object.
	 *
	 * Deprecated: Use gtk_font_chooser_get_font() instead
	 *
	 * Returns: an internal copy of the font name which must not be freed.
	 *
	 * Since: 2.4
	 */
	public string getFontName()
	{
		return Str.toString(gtk_font_button_get_font_name(gtkFontButton));
	}

	/**
	 * Returns whether the font size will be shown in the label.
	 *
	 * Returns: whether the font size will be shown in the label.
	 *
	 * Since: 2.4
	 */
	public bool getShowSize()
	{
		return gtk_font_button_get_show_size(gtkFontButton) != 0;
	}

	/**
	 * Returns whether the name of the font style will be shown in the label.
	 *
	 * Returns: whether the font style will be shown in the label.
	 *
	 * Since: 2.4
	 */
	public bool getShowStyle()
	{
		return gtk_font_button_get_show_style(gtkFontButton) != 0;
	}

	/**
	 * Retrieves the title of the font chooser dialog.
	 *
	 * Returns: an internal copy of the title string which must not be freed.
	 *
	 * Since: 2.4
	 */
	public string getTitle()
	{
		return Str.toString(gtk_font_button_get_title(gtkFontButton));
	}

	/**
	 * Returns whether the selected font is used in the label.
	 *
	 * Returns: whether the selected font is used in the label.
	 *
	 * Since: 2.4
	 */
	public bool getUseFont()
	{
		return gtk_font_button_get_use_font(gtkFontButton) != 0;
	}

	/**
	 * Returns whether the selected size is used in the label.
	 *
	 * Returns: whether the selected size is used in the label.
	 *
	 * Since: 2.4
	 */
	public bool getUseSize()
	{
		return gtk_font_button_get_use_size(gtkFontButton) != 0;
	}

	/**
	 * Sets or updates the currently-displayed font in font picker dialog.
	 *
	 * Deprecated: Use gtk_font_chooser_set_font() instead
	 *
	 * Params:
	 *     fontname = Name of font to display in font chooser dialog
	 *
	 * Returns: %TRUE
	 *
	 * Since: 2.4
	 */
	public bool setFontName(string fontname)
	{
		return gtk_font_button_set_font_name(gtkFontButton, Str.toStringz(fontname)) != 0;
	}

	/**
	 * If @show_size is %TRUE, the font size will be displayed along with the name of the selected font.
	 *
	 * Params:
	 *     showSize = %TRUE if font size should be displayed in dialog.
	 *
	 * Since: 2.4
	 */
	public void setShowSize(bool showSize)
	{
		gtk_font_button_set_show_size(gtkFontButton, showSize);
	}

	/**
	 * If @show_style is %TRUE, the font style will be displayed along with name of the selected font.
	 *
	 * Params:
	 *     showStyle = %TRUE if font style should be displayed in label.
	 *
	 * Since: 2.4
	 */
	public void setShowStyle(bool showStyle)
	{
		gtk_font_button_set_show_style(gtkFontButton, showStyle);
	}

	/**
	 * Sets the title for the font chooser dialog.
	 *
	 * Params:
	 *     title = a string containing the font chooser dialog title
	 *
	 * Since: 2.4
	 */
	public void setTitle(string title)
	{
		gtk_font_button_set_title(gtkFontButton, Str.toStringz(title));
	}

	/**
	 * If @use_font is %TRUE, the font name will be written using the selected font.
	 *
	 * Params:
	 *     useFont = If %TRUE, font name will be written using font chosen.
	 *
	 * Since: 2.4
	 */
	public void setUseFont(bool useFont)
	{
		gtk_font_button_set_use_font(gtkFontButton, useFont);
	}

	/**
	 * If @use_size is %TRUE, the font name will be written using the selected size.
	 *
	 * Params:
	 *     useSize = If %TRUE, font name will be written using the selected size.
	 *
	 * Since: 2.4
	 */
	public void setUseSize(bool useSize)
	{
		gtk_font_button_set_use_size(gtkFontButton, useSize);
	}

	/**
	 * The ::font-set signal is emitted when the user selects a font.
	 * When handling this signal, use gtk_font_button_get_font_name()
	 * to find out which font was just selected.
	 *
	 * Note that this signal is only emitted when the user
	 * changes the font. If you need to react to programmatic font changes
	 * as well, use the notify::font signal.
	 *
	 * Since: 2.4
	 */
	gulong addOnFontSet(void delegate(FontButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "font-set", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
