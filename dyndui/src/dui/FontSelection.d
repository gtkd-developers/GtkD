/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.FontSelection;

private import def.Types;
private import def.Constants;
private import dui.VBox;
private import dui.Utils;
private import lib.gtk;

/**
 * A widget for selecting fonts.
 */
// moved out ---------------
private import dool.String;
// -------------------------

public:
class FontSelection :
		VBox
{
	debug(status)
	{
		int complete(){return ST_ALMOST;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A widget for selecting fonts";}
		char[] author(){return "Antonio";}
	}
	

	protected:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:

	/**
	 * Gets this class type
	 */
	static GType getType()
	{
		return gtk_font_selection_get_type();
	}


	/**
	 * Creates a new FontSelection
	 */
	this()
	{
		this(gtk_font_selection_new());
	}
	
	/**
	 * GetFont
	 * \todo GetFont - need to create GdkFont class -> ddi.Font
	 */
	/+
	Font getFont()
	{
		return new Font(gtk_font_selection_get_font (gtkW()));
	}
	+/
	
	/**
	 * Gets the font name
	 * @return the font name
	 */
	String getFontName()
	{
		return String.newz(gtk_font_selection_get_font_name(cast(GtkFontSelection*)gtkW()));
	}
	
	/**
	 * Sets the font name
	 * @param fontName the new font name
	 * @return true if sucesseful
	 */
	bit setFontName(String fontName)
	{
		return gtk_font_selection_set_font_name(cast(GtkFontSelection*)gtkW(), fontName.toStringz())==0?false:true;
	}
	
	/**
	 * Gets the preview text.
	 * @return the preview text
	 */
	String getPreviewText()
	{
		return String.newz(gtk_font_selection_get_preview_text(cast(GtkFontSelection*)gtkW()));
	}
	
}
