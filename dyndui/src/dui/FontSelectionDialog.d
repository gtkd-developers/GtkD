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

module dui.FontSelectionDialog;

private import dui.Utils;
private import def.Constants;
private import def.Types;
private import dui.Dialog;
private import lib.gtk;

private import dool.String;
/**
 * A standard font selection dialog
 */

public:
class FontSelectionDialog :
		Dialog
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A standard font selection dialog";}
		char[] author(){return "Antonio";}
	}
	
	protected:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:

	/**
	 * Creates a new font selection dialog with a title
	 * @param title the title
	 */
	this(char * title)
	{
		this(new String(title));
	}
	this(String title)
	{
		super(gtk_font_selection_dialog_new(title.toStringz()));
	}

	/**
	 * gets this class type
	 */
	static GType getType()
	{
		return gtk_font_selection_dialog_get_type();
	}
	

	/**
	 * This returns the X Logical Font Description fontname, or NULL if no font
	 *  is selected. Note that there is a slight possibility that the font might not
	 *  have been loaded OK. You should call gtk_font_selection_dialog_get_font()
	 *  to see if it has been loaded OK.
	 *  You should g_free() the returned font name after you're done with it.
	 * @return the fontname
	 */
	String getFontName()
	{
		return String.newz(gtk_font_selection_dialog_get_font_name(cast(GtkFontSelectionDialog*)gtkW()));
	}

	/**
	 * This sets the currently displayed font. It should be a valid X Logical
	 * Font Description font name (anything else will be ignored), e.g.
	 *  "-adobe-courier-bold-o-normal--25-*-*-*-*-*-*-*"
	 * @param fontname
	 * @return  TRUE on success.
	 */
	bit setFontName(String fontname)
	{
		return gtk_font_selection_dialog_set_font_name(cast(GtkFontSelectionDialog*)gtkW(), fontname.toStringz()) == 0 ? false : true;
	}

	/**
	 * This returns the text in the preview entry. You should copy the returned
	 * text if you need it.
	 * @return the previw text
	 */
	String getPreviewText()
	{
		return String.newz(gtk_font_selection_dialog_get_preview_text(cast(GtkFontSelectionDialog*)gtkW()));
	}

	/* This sets the text in the preview entry. It will be copied by the entry,
	   so there's no need to g_strdup() it first. */
	void setPreviewText(String text)
	{
		gtk_font_selection_dialog_set_preview_text(cast(GtkFontSelectionDialog*)gtkW(), text.toStringz());
	}

}

