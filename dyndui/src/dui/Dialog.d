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

module dui.Dialog;

private import dui.Utils;
private import def.Types;
private import def.Constants;
private import dui.DUIObject;
private import dui.Widget;
private import dui.Button;
private import dui.VBox;
private import dui.Window;
private import lib.gtk;


public:
/**
 * Dialog is a window that can be modal and contains a default vbox.
 */

// moved out ---------------------
	private import dui.HButtonBox;
	private import dool.String;
// -------------------------------

public:
class Dialog : Window
{	
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "a window that can be modal and contains a default vbox";}
		char[] author(){return "Antonio";}
	}
	
	protected:
	
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:

	/**
	 * gets this class Type
	 */
	static GType getType()
	{
		return gtk_dialog_get_type();
	}
	
	/**
	 * Make the dialog modal and show it
	 */
	Response run()
	{
		return cast(Response) gtk_dialog_run(gtkW());
	}

	/**
	 * Creates a new dialog
	 */
	this()
	{
		this(gtk_dialog_new());
	}
	
	/**
	 * Creates a new dialog with a title
	 * @param title the dialog title
	 */
	this(char[] title)
	{
		this(new String(title));
	}
	this(String title)
	{
		this();
		setTitle(title);
	}
	
	/**
	 * Gets the Dialog VBox, it's main container
	 * @return the dialog VBox
	 */
	VBox getVBox()
	{
		printf("Dialog.vbox %X\n",(cast(GtkDialog*)gtkW()).vbox);
		return new VBox((cast(GtkDialog*)gtkW()).vbox);
	}
	
	HButtonBox getActionArea()
	{
		printf("Dialog.actionAre %X\n",(cast(GtkDialog*)gtkW()).action_area);
		return new HButtonBox((cast(GtkDialog*)gtkW()).action_area);
	}
	
	/**
	 * Creates a new dialog with a set of buttons
	 * @param title
	 * @param parent the parent window
	 * @param flags the dialog flags
	 * @param buttonsText the buttons text
	 * @param responses the buttons response actions
	 */
	this(String title, Window parent, DialogFlags flags,  String[] buttonsText, Response[] responses)
	{
		this(gtk_dialog_new_with_buttons(title.toStringz(), cast(GtkWindow*)parent.gtkW(), flags, null,0));
		addButtons(buttonsText, responses);
	}

	/**
	 * Creates a new dialog with a set of buttons from the stock
	 * @param title
	 * @param parent the parent window
	 * @param flags the dialog flags
	 * @param buttons text the buttons text
	 * @param responses the buttons response actions
	 */
	this(String title, Window parent, DialogFlags flags,  Stock[] buttons, Response[] responses)
	{
		this(gtk_dialog_new_with_buttons(title.toStringz(), cast(GtkWindow*)parent.gtkW(), flags, null, 0));
		addButtons(buttons, responses);
	}

	/**
	 * Adds an activatable widget to the action area of a GtkDialog.
	 * connecting a signal handler that will emit the "response" signal on the dialog when the widget is activated.
	 * The widget is appended to the end of the dialog's action area.
	 * If you want to add a non-activatable widget, simply pack it into the action_area field of the GtkDialog struct.
	 * @param child the widget to add
	 * @param response
	 */
	void addActionWidget(Widget child, Response response)
	{
		gtk_dialog_add_action_widget(cast(GtkDialog*)gtkW(), child.gtkW(), response);
	}
	
	/** 
	 * Adds a button to this dialog
	 * @param buttonText 
	 * @param responseID
	 */
	Button addButton(String buttonText, Response responseID)
	{
		return new Button(gtk_dialog_add_button(cast(GtkDialog*)gtkW(),  buttonText.toStringz(), responseID));
	}
	
	/** 
	 * Adds a button to this dialog
	 * @param stockID 
	 * @param responseID
	 */
	Button addButton(Stock stockID, Response responseID)
	{
		return new Button(gtk_dialog_add_button(cast(GtkDialog*)gtkW(), (new String(StockDesc[stockID])).toStringz(), responseID));
	}
	
	/**
	 * Add buttons to the dialog
	 * @param buttonsText
	 * @param responses
	 */
	void addButtons(String[] buttonsText, Response[] responses)
	{
		for ( int i=0 ; i<buttonsText.length && i<responses.length; i++)
		{
			addButton(buttonsText[i], responses[i]);
		}
	}

	/**
	 * Add stock buttons to the dialog
	 * @param stockID
	 * @param responses
	 */
	void addButtons(Stock[] stockID, Response[] responses)
	{
		for ( int i=0 ; i<stockID.length && i<responses.length; i++)
		{
			addButton(stockID[i], responses[i]);
		}
	}

	/**
	 * Calls gtk_widget_set_sensitive (widget, setting) for each widget in the dialog's action area with the given response_id.
	 * A convenient way to sensitize/desensitize dialog buttons.
	 * @param response
	 * @param setting
	 */
	void setReponseSensitive(Response response, bit setting)
	{
		gtk_dialog_set_response_sensitive(cast(GtkDialog*)gtkW(), response, setting);
	}
	
	/**
	 * Sets the default response for this dialog
	 * @param response
	 */
	void setDefaultResponse(Response response)
	{
		gtk_dialog_set_default_response(cast(GtkDialog*)gtkW(), response);
	}

	/**
	 * Setst if this dialog should have a separator ???
	 * @param setting
	 */
	void setHasSeparator(bit setting)
	{
		gtk_dialog_set_has_separator(cast(GtkDialog*)gtkW(), setting);
	}
	
	
	/**
	 * Cheks if this dialog has a separator ???
	 * @return true if the dialog has a separator
	 */
	bit getHasSeparator()
	{
		return gtk_dialog_get_has_separator(cast(GtkDialog*)gtkW()) == 0 ? false:true;
	}


}
