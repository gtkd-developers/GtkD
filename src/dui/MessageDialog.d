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

module dui.MessageDialog;


private import def.Types;
private import def.Constants;
private import dui.Widget;
private import dui.Window;
private import dui.Dialog;

alias GtkDialog GtkMessageDialog;

alias int GtkDialogFlags;
alias int GtkMessageType;
alias int GtkButtonsType;

private:
extern(C)
{
	GType gtk_message_dialog_get_type();
	GtkWidget * gtk_message_dialog_new(GtkWindow * parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, gchar * message_format,...);
}

/**
 * A dialog to display a message only.
 */
public:
class MessageDialog : Dialog
{

	private import dui.DUIObject;
	private import dool.String;
	
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A dialog to display a message only";}
		char[] author(){return "Antonio";}
	}
	
	public:

	/**
	 * Gets this class type
	 * @return type
	 */
	static GType getType()
	{
		return gtk_message_dialog_get_type();
	}
	
	/**
	 * Creates a new MessageDialog from a GtkMessageDialog
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:
	
	/**
	 * Creates a new message dialog
	 */
	this(Window parent, 
			GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, 
			gchar * str)
	{
		printf("MessageDialog.this A 1 \n");
		super(gtk_message_dialog_new(cast(GtkWindow*)(parent.gtkW()), flags, type, buttons, str, null));
		printf("MessageDialog.this A exit \n");
	}

	this(Window parent, 
			GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, 
			String str)
	{
		printf("MessageDialog.this B 1 \n");
		super(gtk_message_dialog_new(cast(GtkWindow*)(parent.gtkW()), flags, type, buttons, str.toStringz(), null));
		printf("MessageDialog.this B exit \n");
	}

	static void popupInformation(Window parent, char[] message, char[] title)
	{
		popupInformation(parent, new String(message), new String(title));
	}
	static void popupInformation(Window parent, String message, String title)
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
	
	static void popupError(Window parent, char[] message, char[] title)
	{
		popupError(parent, new String(message), new String(title));
	}
	static void popupError(Window parent, String message, String title)
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
}
