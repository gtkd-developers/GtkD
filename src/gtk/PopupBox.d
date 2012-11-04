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
 * inFile  = 
 * outPack = gtk
 * outFile = PopupBox
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = PopupBox
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.MessageDialog;
 * 	- gtk.Window;
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.PopupBox;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtk.MessageDialog;;
private import gtk.Window;;




/**
 */
public class PopupBox
{
	
	/**
	 * Create an information popup dialog.
	 * Params:
	 *  message = The message to show on the dialog
	 *  title = The title of the dialog
	 */
	public static void information(string message, string title)
	{
		information(null, message, title);
	}
	
	/**
	 * Create an information popup dialog.
	 * Params:
	 *  parent = The parent window of this popup dialog
	 *  message = The message to show on the dialog
	 *  title = The title of the dialog
	 */
	public static void information(Window parent, string message, string title)
	{
		MessageDialog d = new MessageDialog(parent, cast(GtkDialogFlags)0,
		MessageType.INFO,
		ButtonsType.OK ,
		message);
		d.setTitle(title);
		//d.addButton("gtk-dialog-info",GtkResponseType.GTK_RESPONSE_OK);
		d.run();
		d.destroy();
	}
	
	
	/**
	 * Create an error popup dialog.
	 * Params:
	 *  message = The message to show on the dialog
	 *  title = The title of the dialog
	 */
	public static void error(string message, string title)
	{
		error(null, message, title);
	}
	
	/**
	 * Create an error popup dialog.
	 * Params:
	 *  parent = The parent window of this popup dialog
	 *  message = The message to show on the dialog
	 *  title = The title of the dialog
	 */
	public static void error(Window parent, string message, string title)
	{
		MessageDialog d = new MessageDialog(parent, cast(GtkDialogFlags)0,
		MessageType.ERROR,
		ButtonsType.CANCEL ,
		message);
		d.setTitle(title);
		//d.addButton("gtk-dialog-error",ResponseType.GTK_RESPONSE_CANCEL);
		d.run();
		d.destroy();
	}
	
	
	
	/**
	 * Create an 'yes' or 'no' popup dialog.
	 * Params:
	 *  message = The message to show on the dialog
	 *  title = The title of the dialog
	 */
	public static bool yesNo(string message, string title)
	{
		return yesNo(null, message, title);
	}
	
	/**
	 * Create an 'yes' or 'no' popup dialog.
	 * Params:
	 *  parent = The parent window of this popup dialog
	 *  message = The message to show on the dialog
	 *  title = The title of the dialog
	 */
	public static bool yesNo(Window parent, string message, string title)
	{
		MessageDialog d = new MessageDialog(
		parent, cast(GtkDialogFlags)0,
		MessageType.QUESTION,
		ButtonsType.NONE,
		message);
		d.setTitle(title);
		d.addButton("gtk-no",ResponseType.NO);
		d.addButton("gtk-yes",ResponseType.YES);
		int responce = d.run();
		d.destroy();
		return responce == ResponseType.YES;
	}
	
	
	/**
	 * Create an 'yes', 'no' or 'cancel' popup dialog.
	 * Params:
	 *  message = The message to show on the dialog
	 *  title = The title of the dialog
	 */
	public static ResponseType yesNoCancel(string message, string title)
	{
		return yesNoCancel(null, message, title);
	}
	
	/**
	 * Create an 'yes', 'no' or 'cancel' popup dialog.
	 * Params:
	 *  parent = The parent window of this popup dialog
	 *  message = The message to show on the dialog
	 *  title = The title of the dialog
	 */
	public static ResponseType yesNoCancel(Window parent, string message, string title)
	{
		MessageDialog d = new MessageDialog(
		parent, cast(GtkDialogFlags)0,
		MessageType.QUESTION,
		ButtonsType.NONE ,
		message);
		d.setTitle(title);
		d.addButton("gtk-no",ResponseType.NO);
		d.addButton("gtk-yes",ResponseType.YES);
		d.addButton("gtk-cancel",ResponseType.CANCEL);
		ResponseType responce = cast(ResponseType)d.run();
		d.destroy();
		return responce;
	}
	
	/**
	 */
}
