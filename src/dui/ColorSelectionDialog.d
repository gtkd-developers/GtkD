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

module dui.ColorSelectionDialog;
private import def.Types;
private import dui.Utils;
private import dui.Dialog;

private:
extern (C) GtkWidget* gtk_color_selection_dialog_new (char *title);

/**
 * A standard color selection dialog
 */

public:
class ColorSelectionDialog : Dialog
{

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A standard color selection dialog";}
		char[] author(){return "Antonio";}
	}
	
	public:
	
	/**
	 * Creates a new color selection dialog
	 */
	this(char [] title)
	{
		super(gtk_color_selection_dialog_new(cChar(title)));
	}
    
}
