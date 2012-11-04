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
 * inFile  = GtkFontButton.html
 * outPack = gtk
 * outFile = FontButton
 * strct   = GtkFontButton
 * realStrct=
 * ctorStrct=
 * clss    = FontButton
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- FontChooserIF
 * prefixes:
 * 	- gtk_font_button_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.FontChooserT
 * 	- gtk.FontChooserIF
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.FontButton;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.FontChooserT;
private import gtk.FontChooserIF;



private import gtk.Button;

/**
 * Description
 * The GtkFontButton is a button which displays the currently selected
 * font an allows to open a font chooser dialog to change the font.
 * It is suitable widget for selecting a font in a preference dialog.
 */
public class FontButton : Button, FontChooserIF
{
	
	/** the main Gtk struct */
	protected GtkFontButton* gtkFontButton;
	
	
	public GtkFontButton* getFontButtonStruct()
	{
		return gtkFontButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFontButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkFontButton* gtkFontButton)
	{
		super(cast(GtkButton*)gtkFontButton);
		this.gtkFontButton = gtkFontButton;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkFontButton = cast(GtkFontButton*)obj;
	}
	
	// add the FontChooser capabilities
	mixin FontChooserT!(GtkFontButton);
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(FontButton)[] onFontSetListeners;
	/**
	 * The ::font-set signal is emitted when the user selects a font.
	 * When handling this signal, use gtk_font_button_get_font_name()
	 * to find out which font was just selected.
	 * Note that this signal is only emitted when the user
	 * changes the font. If you need to react to programmatic font changes
	 * as well, use the notify::font-name signal.
	 * Since 2.4
	 * See Also
	 * GtkFontChooserDialog, GtkColorButton.
	 */
	void addOnFontSet(void delegate(FontButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("font-set" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"font-set",
			cast(GCallback)&callBackFontSet,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["font-set"] = 1;
		}
		onFontSetListeners ~= dlg;
	}
	extern(C) static void callBackFontSet(GtkFontButton* widgetStruct, FontButton _fontButton)
	{
		foreach ( void delegate(FontButton) dlg ; _fontButton.onFontSetListeners )
		{
			dlg(_fontButton);
		}
	}
	
	
	/**
	 * Creates a new font picker widget.
	 * Since 2.4
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_font_button_new (void);
		auto p = gtk_font_button_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_font_button_new()");
		}
		this(cast(GtkFontButton*) p);
	}
	
	/**
	 * Creates a new font picker widget.
	 * Since 2.4
	 * Params:
	 * fontname = Name of font to display in font chooser dialog
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string fontname)
	{
		// GtkWidget * gtk_font_button_new_with_font (const gchar *fontname);
		auto p = gtk_font_button_new_with_font(Str.toStringz(fontname));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_font_button_new_with_font(Str.toStringz(fontname))");
		}
		this(cast(GtkFontButton*) p);
	}
	
	/**
	 * Sets or updates the currently-displayed font in font picker dialog.
	 * Since 2.4
	 * Params:
	 * fontname = Name of font to display in font chooser dialog
	 * Returns: TRUE
	 */
	public int setFontName(string fontname)
	{
		// gboolean gtk_font_button_set_font_name (GtkFontButton *font_button,  const gchar *fontname);
		return gtk_font_button_set_font_name(gtkFontButton, Str.toStringz(fontname));
	}
	
	/**
	 * Retrieves the name of the currently selected font. This name includes
	 * style and size information as well. If you want to render something
	 * with the font, use this string with pango_font_description_from_string() .
	 * If you're interested in peeking certain values (family name,
	 * style, size, weight) just query these properties from the
	 * PangoFontDescription object.
	 * Since 2.4
	 * Returns: an internal copy of the font name which must not be freed.
	 */
	public string getFontName()
	{
		// const gchar * gtk_font_button_get_font_name (GtkFontButton *font_button);
		return Str.toString(gtk_font_button_get_font_name(gtkFontButton));
	}
	
	/**
	 * If show_style is TRUE, the font style will be displayed along with name of the selected font.
	 * Since 2.4
	 * Params:
	 * showStyle = TRUE if font style should be displayed in label.
	 */
	public void setShowStyle(int showStyle)
	{
		// void gtk_font_button_set_show_style (GtkFontButton *font_button,  gboolean show_style);
		gtk_font_button_set_show_style(gtkFontButton, showStyle);
	}
	
	/**
	 * Returns whether the name of the font style will be shown in the label.
	 * Since 2.4
	 * Returns: whether the font style will be shown in the label.
	 */
	public int getShowStyle()
	{
		// gboolean gtk_font_button_get_show_style (GtkFontButton *font_button);
		return gtk_font_button_get_show_style(gtkFontButton);
	}
	
	/**
	 * If show_size is TRUE, the font size will be displayed along with the name of the selected font.
	 * Since 2.4
	 * Params:
	 * showSize = TRUE if font size should be displayed in dialog.
	 */
	public void setShowSize(int showSize)
	{
		// void gtk_font_button_set_show_size (GtkFontButton *font_button,  gboolean show_size);
		gtk_font_button_set_show_size(gtkFontButton, showSize);
	}
	
	/**
	 * Returns whether the font size will be shown in the label.
	 * Since 2.4
	 * Returns: whether the font size will be shown in the label.
	 */
	public int getShowSize()
	{
		// gboolean gtk_font_button_get_show_size (GtkFontButton *font_button);
		return gtk_font_button_get_show_size(gtkFontButton);
	}
	
	/**
	 * If use_font is TRUE, the font name will be written using the selected font.
	 * Since 2.4
	 * Params:
	 * useFont = If TRUE, font name will be written using font chosen.
	 */
	public void setUseFont(int useFont)
	{
		// void gtk_font_button_set_use_font (GtkFontButton *font_button,  gboolean use_font);
		gtk_font_button_set_use_font(gtkFontButton, useFont);
	}
	
	/**
	 * Returns whether the selected font is used in the label.
	 * Since 2.4
	 * Returns: whether the selected font is used in the label.
	 */
	public int getUseFont()
	{
		// gboolean gtk_font_button_get_use_font (GtkFontButton *font_button);
		return gtk_font_button_get_use_font(gtkFontButton);
	}
	
	/**
	 * If use_size is TRUE, the font name will be written using the selected size.
	 * Since 2.4
	 * Params:
	 * useSize = If TRUE, font name will be written using the selected size.
	 */
	public void setUseSize(int useSize)
	{
		// void gtk_font_button_set_use_size (GtkFontButton *font_button,  gboolean use_size);
		gtk_font_button_set_use_size(gtkFontButton, useSize);
	}
	
	/**
	 * Returns whether the selected size is used in the label.
	 * Since 2.4
	 * Returns: whether the selected size is used in the label.
	 */
	public int getUseSize()
	{
		// gboolean gtk_font_button_get_use_size (GtkFontButton *font_button);
		return gtk_font_button_get_use_size(gtkFontButton);
	}
	
	/**
	 * Sets the title for the font chooser dialog.
	 * Since 2.4
	 * Params:
	 * title = a string containing the font chooser dialog title
	 */
	public void setTitle(string title)
	{
		// void gtk_font_button_set_title (GtkFontButton *font_button,  const gchar *title);
		gtk_font_button_set_title(gtkFontButton, Str.toStringz(title));
	}
	
	/**
	 * Retrieves the title of the font chooser dialog.
	 * Since 2.4
	 * Returns: an internal copy of the title string which must not be freed.
	 */
	public string getTitle()
	{
		// const gchar * gtk_font_button_get_title (GtkFontButton *font_button);
		return Str.toString(gtk_font_button_get_title(gtkFontButton));
	}
}
