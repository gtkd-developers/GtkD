/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
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
 * imports:
 * 	- gtk.typedefs
 * 	- gtk.MessageDialog;
 * 	- gtk.Window;
 * 	- gtk.typedefs
 * structWrap:
 * local aliases:
 */

module gtk.PopupBox;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.typedefs;
private import gtk.MessageDialog;;
private import gtk.Window;;
private import gtk.typedefs;

/**
 */
public class PopupBox
{
	
	/**
	 * Create an information popup dialog.
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	public static void information(char[] message, char[] title)
	{
		information(null, message, title);
	}
	
	/**
	 * Create an information popup dialog.
	 * @param parent The parent window of this popup dialog
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	public static void information(Window parent, char[] message, char[] title)
	{
		MessageDialog d = new MessageDialog(parent, 0,
		MessageType.INFO,
		ButtonsType.NONE ,
		message);
		d.setTitle(title);
		d.addButton("gtk-dialog-info",GtkResponseType.GTK_RESPONSE_OK);
		d.run();
		d.destroy();
	}
	
	
	/**
	 * Create an error popup dialog.
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	public static void error(char[] message, char[] title)
	{
		error(null, message, title);
	}
	
	/**
	 * Create an error popup dialog.
	 * @param parent The parent window of this popup dialog
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	public static void error(Window parent, char[] message, char[] title)
	{
		MessageDialog d = new MessageDialog(parent, 0,
		MessageType.ERROR,
		ButtonsType.NONE ,
		message);
		d.setTitle(title);
		d.addButton("gtk-dialog-error",ResponseType.GTK_RESPONSE_CANCEL);
		d.run();
		d.destroy();
	}
	
	
	
	/**
	 * Create an 'yes' or 'no' popup dialog.
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	public static bool yesNo(char[] message, char[] title)
	{
		return yesNo(null, message, title);
	}
	
	/**
	 * Create an 'yes' or 'no' popup dialog.
	 * @param parent The parent window of this popup dialog
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	public static bool yesNo(Window parent, char[] message, char[] title)
	{
		MessageDialog d = new MessageDialog(
		parent, 0,
		MessageType.QUESTION,
		ButtonsType.NONE ,
		message);
		d.setTitle(title);
		d.addButton("gtk-no",ResponseType.GTK_RESPONSE_NO);
		d.addButton("gtk-yes",ResponseType.GTK_RESPONSE_YES);
		int responce = d.run();
		d.destroy();
		return responce == ResponseType.GTK_RESPONSE_YES;
	}
	
	
	/**
	 * Create an 'yes', 'no' or 'cancel' popup dialog.
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	public static ResponseType yesNoCancel(char[] message, char[] title)
	{
		return yesNoCancel(null, message, title);
	}
	
	/**
	 * Create an 'yes', 'no' or 'cancel' popup dialog.
	 * @param parent The parent window of this popup dialog
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	public static ResponseType yesNoCancel(Window parent, char[] message, char[] title)
	{
		MessageDialog d = new MessageDialog(
		parent, 0,
		MessageType.QUESTION,
		ButtonsType.NONE ,
		message);
		d.setTitle(title);
		d.addButton("gtk-no",ResponseType.GTK_RESPONSE_NO);
		d.addButton("gtk-yes",ResponseType.GTK_RESPONSE_YES);
		d.addButton("gtk-cancel",ResponseType.GTK_RESPONSE_CANCEL);
		ResponseType responce = cast(ResponseType)d.run();
		d.destroy();
		return responce;
	}
	
	/**
	 */
}
