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
 * inFile  = GtkFontButton.html
 * outPack = gtk
 * outFile = FontButton
 * strct   = GtkFontButton
 * realStrct=
 * ctorStrct=
 * clss    = FontButton
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_font_button_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.FontButton;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;



private import gtk.Button;

/**
 * Description
 * The GtkFontButton is a button which displays the currently selected font an allows to open a font selection
 * dialog to change the font. It is suitable widget for selecting a font in a preference dialog.
 */
public class FontButton : Button
{
	
	/** the main Gtk struct */
	protected GtkFontButton* gtkFontButton;
	
	
	public GtkFontButton* getFontButtonStruct()
	{
		return gtkFontButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkFontButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkFontButton* gtkFontButton)
	{
		version(noAssert)
		{
			if ( gtkFontButton is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gtkFontButton is null on constructor").newline;
				}
				else
				{
					printf("struct gtkFontButton is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gtkFontButton !is null, "struct gtkFontButton is null on constructor");
		}
		super(cast(GtkButton*)gtkFontButton);
		this.gtkFontButton = gtkFontButton;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(FontButton)[] onFontSetListeners;
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
	extern(C) static void callBackFontSet(GtkFontButton* widgetStruct, FontButton fontButton)
	{
		bool consumed = false;
		
		foreach ( void delegate(FontButton) dlg ; fontButton.onFontSetListeners )
		{
			dlg(fontButton);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new font picker widget.
	 * Since 2.4
	 */
	public this ()
	{
		// GtkWidget* gtk_font_button_new (void);
		this(cast(GtkFontButton*)gtk_font_button_new() );
	}
	
	/**
	 * Creates a new font picker widget.
	 * Since 2.4
	 * Params:
	 * fontname =  Name of font to display in font selection dialog
	 */
	public this (char[] fontname)
	{
		// GtkWidget* gtk_font_button_new_with_font (const gchar *fontname);
		this(cast(GtkFontButton*)gtk_font_button_new_with_font(Str.toStringz(fontname)) );
	}
	
	/**
	 * Sets or updates the currently-displayed font in font picker dialog.
	 * Since 2.4
	 * Params:
	 * fontname =  Name of font to display in font selection dialog
	 * Returns: Return value of gtk_font_selection_dialog_set_font_name() if thefont selection dialog exists, otherwise FALSE.
	 */
	public int setFontName(char[] fontname)
	{
		// gboolean gtk_font_button_set_font_name (GtkFontButton *font_button,  const gchar *fontname);
		return gtk_font_button_set_font_name(gtkFontButton, Str.toStringz(fontname));
	}
	
	/**
	 * Retrieves the name of the currently selected font.
	 * Since 2.4
	 * Returns: an internal copy of the font name which must not be freed.
	 */
	public char[] getFontName()
	{
		// const gchar* gtk_font_button_get_font_name (GtkFontButton *font_button);
		return Str.toString(gtk_font_button_get_font_name(gtkFontButton) );
	}
	
	/**
	 * If show_style is TRUE, the font style will be displayed along with name of the selected font.
	 * Since 2.4
	 * Params:
	 * showStyle =  TRUE if font style should be displayed in label.
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
	 * showSize =  TRUE if font size should be displayed in dialog.
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
	 * useFont =  If TRUE, font name will be written using font chosen.
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
	 * useSize =  If TRUE, font name will be written using the selected size.
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
	 * Sets the title for the font selection dialog.
	 * Since 2.4
	 * Params:
	 * title =  a string containing the font selection dialog title
	 */
	public void setTitle(char[] title)
	{
		// void gtk_font_button_set_title (GtkFontButton *font_button,  const gchar *title);
		gtk_font_button_set_title(gtkFontButton, Str.toStringz(title));
	}
	
	/**
	 * Retrieves the title of the font selection dialog.
	 * Since 2.4
	 * Returns: an internal copy of the title string which must not be freed.
	 */
	public char[] getTitle()
	{
		// const gchar* gtk_font_button_get_title (GtkFontButton *font_button);
		return Str.toString(gtk_font_button_get_title(gtkFontButton) );
	}
	
	
	
	
	
}
