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

module dui.Clipboard;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import ddi.Display;
private import dui.ObjectG;
private import dui.Selection;
private import lib.gtk;

public:
class Clipboard
{

	private import dool.String;
public:

	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] description(){return "data shared between different processes or between different widgets";}
		char[] gtkName(){return SAME_NAME;}
		char[] author(){return "Antonio";}
	}
	
	GtkClipboard* gtkClipboard;

	/**
	 * Gets the GtkClipboard structure
	 */
	GtkClipboard* gtkC()
	{
		return gtkClipboard;
	}
	
	public:
	/**
	 * Creates a new Glipboard from a GtkClicpboard
	 */
	this(GtkClipboard * gtkClipboard)
	{
		this.gtkClipboard = gtkClipboard;
	}

	/**
	 * getType
	 * @return 
	 */
	GType getType()
	{
		return gtk_clipboard_get_type();
	}
	
	/**
	 * Creates a new Clipboard
	 * @param display
	 * @param selection
	 */
	this(Display display, GdkAtom selection)
	{
		this(gtk_clipboard_get_for_display(display.gdkD(), selection));
	}
	
	//#ifndef GDK_MULTIHEAD_SAFE 

	/**
	 * Creates a new Clipboard
	 * @param selection
	 */
	this(GdkAtom selection)
	{
		this(gtk_clipboard_get(selection));
	}
	
	//#endif
	
	/**
	 * getDisplay
	 * @return Display
	 */
	Display getDisplay()
	{
		return new Display(gtk_clipboard_get_display(gtkC()));
	}
	
	/+
	/**
	 * \todo move this to a ClipboardListener
	 */
	bit setWithData(GtkTargetEntry * targets, guint n_targets, GtkClipboardGetFunc get_func, GtkClipboardClearFunc clear_func, gpointer user_data)
	{
		gtk_clipboard_set_with_data(gtkC(), targets, n_targets, get_func, clear_func, gpointer user_data);
	}
	/**
	 * \todo move this to a ClipboardListener
	 */
	gboolean gtk_clipboard_set_with_owner(gtkC(), GtkTargetEntry * targets, guint n_targets, GtkClipboardGetFunc get_func, GtkClipboardClearFunc clear_func, GObject * owner);
	+/


	/**
	 * getOwner
	 * @return 
	 */
	ObjectG getOwner()
	{
		return new ObjectG(gtk_clipboard_get_owner(gtkC()));
	}
	
	/**
	 * clear
	 */
	void clear()
	{
		gtk_clipboard_clear(gtkC());
	}
	
	/**
	 * setText
	 * @param text
	 */
	void setText(String text)
	{
		gtk_clipboard_set_text(gtkC(), text.toStringz(),text.length);
	}
	
	/+
	/** \todo move this to a clipboard listener */
	void gtk_clipboard_request_contents(gtkC(), GdkAtom target, GtkClipboardReceivedFunc callback, gpointer user_data);
	/** \todo move this to a clipboard listener */
	void gtk_clipboard_request_text(gtkC(), GtkClipboardTextReceivedFunc callback, gpointer user_data);
	+/
	
	/**
	 * waitForContents
	 * @param target
	 * @return 
	 */
	Selection waitForContents(GdkAtom target)
	{
		return new Selection(gtk_clipboard_wait_for_contents(gtkC(), target));
	}
	
	/**
	 * waitForText
	 * @return 
	 */
	String waitForText()
	{
		return String.newz(gtk_clipboard_wait_for_text(gtkC()));
	}
	
	/**
	 * waitIsTextAvailable
	 * @return 
	 */
	bit waitIsTextAvailable()
	{
		return gtk_clipboard_wait_is_text_available(gtkC()) == 0 ? false : true;
	}
	
}
