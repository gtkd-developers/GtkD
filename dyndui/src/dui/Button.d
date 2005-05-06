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

module dui.Button;
private import def.Types;
private import def.Constants;
private import dui.Utils;
private import dui.DUIObject;
private import dui.Widget;
private import dui.Bin;
private import lib.gtk;

/**
 * A Button
 */

// moved out ----------------------
private import event.EventHandler;
private import dui.Image;
private import dool.String;
// --------------------------------

public:
class Button : Bin
{
	protected:
	
	alias EventHandler0!(Button) OnClick;
	alias EventHandler!(Button) OnButtonClicked;
	alias EventHandler!(Button) OnButtonPressed;
	alias EventHandler!(Button) OnButtonReleased;
	alias EventHandler!(Button) OnButtonEnter;
	alias EventHandler!(Button) OnButtonLeave;
	alias EventHandler!(Button) OnButtonActivate;

	public:
	OnClick onClick;
	protected:
	OnButtonClicked onButtonClicked;
	OnButtonPressed onButtonPressed;
	OnButtonReleased onButtonReleased;
	OnButtonEnter onButtonEnter;
	OnButtonLeave onButtonLeave;
	OnButtonActivate onButtonActivate;

	
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] description(){return "A widget that creates a signal when clicked on.";}
		char[] gtkName(){return SAME_NAME;}
		char[] author(){return "Antonio";}
	};
	
	
    public: this(GtkWidget * gtkWidget)
    {
		super(gtkWidget);
		onClick = new OnClick(this, EventMask.NONE, new String("clicked"));
    }
    
    public:

	char[] toString()
	{
		return "Button";
	}
	
	this(Button button)
	{
		this(button.gtkW());
	}
	
	/**
	 * addOnClick
	 * @param dlg the method to add to the event
	 */
	public void addOnClick(void delegate() dlg)
	{
		if ( onClick === null )
		{
			onClick = new OnClick(this, EventMask.NONE, new String("clicked"));
		}
		onClick += dlg;
	}
	
	/**
	 * addOnBubttonClicked
	 * @param dlg the method to add to the event
	 */
	public void addOnButtonClicked(void delegate(Button) dlg)
	{
		if ( onButtonClicked === null )
		{
			onButtonClicked = new OnButtonClicked(this, EventMask.NONE, new String("clicked"));
		}
		onButtonClicked += dlg;
	}
	
	/**
	 * addOnButtonPressed
	 * @param dlg the method to add to the event
	 */
	public void addOnButtonPressed(void delegate(Button) dlg)
	{
		if ( onButtonPressed === null )
		{
			onButtonPressed = new OnButtonPressed(this, EventMask.NONE, new String("pressed"));
		}
		onButtonPressed += dlg;
	}
	
	/**
	 * addOnButtonReleased
	 * @param dlg the method to add to the event
	 */
	public void addOnButtonReleased(void delegate(Button) dlg)
	{
		if ( onButtonReleased === null )
		{
			onButtonReleased = new OnButtonReleased(this, EventMask.NONE, new String("released"));
		}
		onButtonReleased += dlg;
	}
	
	/**
	 * addOnButtonEnter
	 * @param dlg the method to add to the event
	 */
	public void addOnButtonEnter(void delegate(Button) dlg)
	{
		if ( onButtonEnter === null )
		{
			onButtonEnter = new OnButtonEnter(this, EventMask.NONE, new String("enter"));
		}
		onButtonEnter += dlg;
	}
	
	/**
	 * addOnButtonLeave
	 * @param dlg the method to add to the event
	 */
	public void addOnButtonLeave(void delegate(Button) dlg)
	{
		if ( onButtonLeave === null )
		{
			onButtonLeave = new OnButtonLeave(this, EventMask.NONE, new String("leave"));
		}
		onButtonLeave += dlg;
	}
	
	/**
	 * addOnButtonActivate
	 * @param dlg the method to add to the event
	 */
	public void addOnButtonActivate(void delegate(Button) dlg)
	{
		if ( onButtonActivate === null )
		{
			onButtonActivate = new OnButtonActivate(this, EventMask.NONE, new String("activate"));
		}
		onButtonActivate += dlg;
	}
	
	/**
	 * creates a new button
	 */
	this()
	{
        this(gtk_button_new());
   	}

	/**
	 * creates a new button with a label
	 */
	this(char[] label)
	{
		this(new String(label));
	}
	/**
	 * creates a new button with a label
	 */
	this(String label)
	{
        //this(gtk_button_new_with_label(cChar(label)));
		this(gtk_button_new_with_mnemonic(label.toStringz()));
	}

	/**
	 * creates a new button with a label
	 */
	this(char[] label, void delegate() dlg)
	{
		this( new String(label), dlg);
	}
	/**
	 * creates a new button with a label
	 */
	this(String label, void delegate() dlg)
	{
		this(label);
		addOnClick(dlg);
	}

	/**
	 * creates a new button with a label and OnButtonClicked delegate
	 */
	this(char[] label, void delegate(Button) dlg)
	{
		this( new String(label), dlg);
	}
	/**
	 * creates a new button with a label and OnButtonClicked delegate
	 */
	this(String label, void delegate(Button) dlg)
	{
		this(label);
		addOnButtonClicked(dlg);
	}

	/**
	 * creates a new button with a label, OnButtonClicked delegate and an action
	 */
	this(char[] label, void delegate(Button) dlg, char[] action)
	{
		this(new String(label), dlg, new String(action));
	}
	/**
	 * creates a new button with a label, OnButtonClicked delegate and an action
	 */
	this(String label, void delegate(Button) dlg, String action)
	{
		this(label);
		setActionCommand(action);
		addOnButtonClicked(dlg);
	}

	/**
	 * Creates a bitton from the stock of predefined buttons
	 */
	this(Stock stockID)
	{
		this(stockID,false);
	}
	
	/**
	 * Creates a bitton from the stock of predefined buttons
	 */
	this(Stock stockID, void delegate() dlg)
	{
		this(stockID);
		addOnClick(dlg);
	}
	
	/**
	 * Creates a bitton from the stock of predefined buttons
	 */
	this(Stock stockID, void delegate(Button) dlg)
	{
		this(stockID);
		addOnButtonClicked(dlg);
	}
	
	/**
	 * Creates a bitton from the stock of predefined buttons
	 * @param stockID
	 * @param hideLabel
	 */
	this(Stock stockID, bit hideLabel)
	{
		if ( hideLabel )
		{
			this();
			Image image = new Image(stockID,IconSize.MENU);
			add(image);
		}
		else
		{
			this(gtk_button_new_from_stock(cChar(StockDesc[stockID])));
		}
	}
	
	/**
	 * Creates a bitton from the stock of predefined buttons
	 * @param stockID
	 * @param hideLabel
	 */
	this(Stock stockID, bit hideLabel, void delegate() dlg)
	{
		this(stockID, hideLabel);
		addOnClick(dlg);
	}
	
	/**
	 * Creates a bitton from the stock of predefined buttons
	 * @param stockID
	 * @param hideLabel
	 */
	this(Stock stockID, bit hideLabel, void delegate() dlg, char[] action)
	{
		this(stockID, hideLabel, dlg, new String(action));
	}
	/**
	 * Creates a bitton from the stock of predefined buttons
	 * @param stockID
	 * @param hideLabel
	 */
	this(Stock stockID, bit hideLabel, void delegate() dlg, String action)
	{
		this(stockID, hideLabel);
		setActionCommand(action);
		addOnClick(dlg);
	}
	
	/**
	 * Creates a bitton from the stock of predefined buttons
	 * @param stockID
	 * @param hideLabel
	 */
	this(Stock stockID, bit hideLabel, void delegate(Button) dlg)
	{
		this(stockID, hideLabel);
		addOnButtonClicked(dlg);
	}
	
	/**
	 * Creates a bitton from the stock of predefined buttons
	 * @param stockID
	 * @param hideLabel
	 */
	this(Stock stockID, bit hideLabel, void delegate(Button) dlg, char[] action)
	{
		this(stockID, hideLabel, dlg, new String(action));
	}
	/**
	 * Creates a bitton from the stock of predefined buttons
	 * @param stockID
	 * @param hideLabel
	 */
	this(Stock stockID, bit hideLabel, void delegate(Button) dlg, String action)
	{
		this(stockID, hideLabel);
		setActionCommand(action);
		addOnButtonClicked(dlg);
	}
	
	this(Image image)
	{
		this(new String());
		removeAll();
		add(image);
	}
	
	/**
	 * Gets the label text for this button
	 * @return the label text for this button
	 */
	String getLabel()
	{
		return String.newz(gtk_button_get_label(cast(GtkButton*)gtkW()));
	}
	
	/**
	 * Sets the relief style of the edges for this button.
	 * Three styles exist, GTK_RELIEF_NORMAL, GTK_RELIEF_HALF, GTK_RELIEF_NONE.
	 * The default style is, as one can guess, GTK_RELIEF_NORMAL.
	 * @param newstyle the new relief style.
	 */
	void setRelief(ReliefStyle newstyle)
	{
		gtk_button_set_relief(cast(GtkButton*)gtkW(), newstyle);
	}
	
	/+
	GtkWidget * gtk_button_new_with_label(gchar * label);
	/** not implemented use Dispatcher to listen to events */
	void gtk_button_pressed(GtkButton * button);
	/** not implemented use Dispatcher to listen to events */
	void gtk_button_released(GtkButton * button);
	/** not implemented use Dispatcher to listen to events */
	void gtk_button_clicked(GtkButton * button);
	/** not implemented use Dispatcher to listen to events */
	void gtk_button_enter(GtkButton * button);
	/** not implemented use Dispatcher to listen to events */
	void gtk_button_leave(GtkButton * button);
	// DONE void gtk_button_set_relief(GtkButton * button, GtkReliefStyle newstyle);
	+/
	/**
	 * Gets the current relief style
	 * @return the current relief style
	 */
	ReliefStyle getRelief()
	{
		return gtk_button_get_relief(cast(GtkButton*)gtkW());
	}
	
	/**
	 * Sets the label text for this buttons
	 * @param label the new label text
	 */
	void setLabel(char[] label)
	{
		gtk_button_set_label(cast(GtkButton*)gtkW(), String.stringz(label));
	}
	/**
	 * Sets the label text for this buttons
	 * @param label the new label text
	 */
	void setLabel(String label)
	{
		gtk_button_set_label(cast(GtkButton*)gtkW(), label.toStringz());
	}
	
	/**
	 * If true, an underline in the text of the button label indicates the next character
	 * should be used for the mnemonic accelerator key.
	 * @param use_underline
	 */
	void setUseUnderline(gboolean use_underline)
	{
		gtk_button_set_use_underline(cast(GtkButton*)gtkW(), use_underline);
	}

	/**
	 * Returns whether an embedded underline in the button label indicates a mnemonic.
	 * @see gtk_button_set_use_underline().
	 * @return 
	 */
	bit getUseUnderline()
	{
		return gtk_button_get_use_underline(cast(GtkButton*)gtkW()) == 0 ? false : true;
	}
	
	/**
	 * If true, the label set on the button is used as a stock id to select the stock item for the button.
	 * @param use_stock
	 */
	void setUseStock(gboolean use_stock)
	{
		gtk_button_set_use_stock(cast(GtkButton*)gtkW(), use_stock);
	}
	
	/**
	 * Returns whether the button label is a stock item.
	 * @return true if the button label is a stock item.
	 */
	bit getUseStock()
	{
		return gtk_button_get_use_stock(cast(GtkButton*)gtkW()) == 0 ? false : true;
	}
}
