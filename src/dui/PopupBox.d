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

module dui.PopupBox;


/**
 * A factory for common message dialogs.
 * プログラミング言語 D<BR>
 * プログラミング言語 D<BR>
 * 
 * 
 * Provides methods to create popup dialogs of type:<BR>
 * - information<BR>
 * - error<BR>
 * - yes/no<BR>
 * - yes/no/cancel<BR>
 * \todo - popup String input dialog
 * 
 */
public class PopupBox
{
	
	private import dool.String;
	
	private import dui.DUIObject;
	private import dui.MessageDialog;

	private import def.Constants;
	private import dui.Window;

	
	/**
	 * Create an information popup dialog.
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	static void information(char[] message, char[] title)
	{
		information(null, new String(message), new String(title));
	}
	
	/**
	 * Create an information popup dialog.
	 * @param parent The parent window of this popup dialog
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	static void information(Window parent, char[] message, char[] title)
	{
		information(parent, new String(message), new String(title));
	}
	
	/**
	 * Create an information popup dialog.
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	static void information(String message, String title)
	{
		information(null, message, title);
	}
	
	/**
	 * Create an information popup dialog.
	 * @param parent The parent window of this popup dialog
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	static void information(Window parent, String message, String title)
	{
		MessageDialog d = new MessageDialog(parent, 0,
										DialogType.INFO,
										DialogButtons.NONE ,
										message.toStringz());
		d.setTitle(title);
		d.addButton(Stock.OK,Response.NO);
		d.run();
		d.destroy();
	}
	
	
	/**
	 * Create an error popup dialog.
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	static void error(char[] message, char[] title)
	{
		error(null, new String(message), new String(title));
	}
	
	/**
	 * Create an error popup dialog.
	 * @param parent The parent window of this popup dialog
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	static void error(Window parent, char[] message, char[] title)
	{
		error(parent, new String(message), new String(title));
	}
	
	/**
	 * Create an error popup dialog.
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	static void error(String message, String title)
	{
		error(null, message,title);
	}
	
	/**
	 * Create an error popup dialog.
	 * @param parent The parent window of this popup dialog
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	static void error(Window parent, String message, String title)
	{
		MessageDialog d = new MessageDialog(parent, 0,
										DialogType.ERROR,
										DialogButtons.NONE ,
										message.toStringz());
		d.setTitle(title);
		d.addButton(Stock.DIALOG_ERROR,Response.NO);
		d.run();
		d.destroy();
	}
	
	
	
	/**
	 * Create an 'yes' or 'no' popup dialog.
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	static bit yesNo(char[] message, char[] title)
	{
		return yesNo(null, new String(message), new String(title));
	}
	
	/**
	 * Create an 'yes' or 'no' popup dialog.
	 * @param parent The parent window of this popup dialog
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	static bit yesNo(Window parent, char[] message, char[] title)
	{
		return yesNo(parent, new String(message), new String(title));
	}
	
	/**
	 * Create an 'yes' or 'no' popup dialog.
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	static bit yesNo(String message, String title)
	{
		return yesNo(null, message, title);
	}
	
	/**
	 * Create an 'yes' or 'no' popup dialog.
	 * @param parent The parent window of this popup dialog
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	static bit yesNo(Window parent, String message, String title)
	{
		MessageDialog d = new MessageDialog(
				parent, 0,
				DialogType.QUESTION,
				DialogButtons.NONE ,
				message);
		d.setTitle(title);
		d.addButton(Stock.NO,Response.NO);
		d.addButton(Stock.YES,Response.YES);
		int responce = d.run();
		d.destroy();
		return responce == Response.YES;
	}

	
	/**
	 * Create an 'yes', 'no' or 'cancel' popup dialog.
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	static Response yesNoCancel(char[] message, char[] title)
	{
		return yesNoCancel(null, new String(message), new String(title));
	}
	
	/**
	 * Create an 'yes', 'no' or 'cancel' popup dialog.
	 * @param parent The parent window of this popup dialog
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	static Response yesNoCancel(Window parent, char[] message, char[] title)
	{
		return yesNoCancel(parent, new String(message), new String(title));
	}
	
	/**
	 * Create an 'yes', 'no' or 'cancel' popup dialog.
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	static Response yesNoCancel(String message, String title)
	{
		return yesNoCancel(null, message, title);
	}
	
	/**
	 * Create an 'yes', 'no' or 'cancel' popup dialog.
	 * @param parent The parent window of this popup dialog
	 * @param message The message to show on the dialog
	 * @param title The title of the dialog
	 */
	static Response yesNoCancel(Window parent, String message, String title)
	{
		MessageDialog d = new MessageDialog(
				parent, 0,
				DialogType.QUESTION,
				DialogButtons.NONE ,
				message);
		d.setTitle(title);
		d.addButton(Stock.NO,Response.NO);
		d.addButton(Stock.YES,Response.YES);
		d.addButton(Stock.CANCEL,Response.CANCEL);
		Response responce = d.run();
		d.destroy();
		return responce;
	}

}
