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

module dui.CheckButton;

private import def.Types;
private import def.Constants;
private import dui.Utils;
private import dui.Button;
private import dui.ToggleButton;

private:

extern (C) GtkWidget * gtk_check_button_new_with_label(char*);
extern (C) GtkWidget * gtk_check_button_new();

/**
 * A Check Button
 */

public:
class CheckButton : ToggleButton
{
	
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "Check Button";}
		char[] author(){return "Antonio";}
	}
	
	alias EventHandler0!(CheckButton) OnClick;
	alias EventHandler!(CheckButton) OnButtonClicked;
	
	OnButtonClicked onButtonClicked;
	
	
	public:
	
	OnClick onClick;
	
	/**
	 * addOnBubttonClicked
	 * @param dlg the method to add to the event
	 */
	public void addOnButtonClicked(void delegate(CheckButton) dlg)
	{
		if ( onButtonClicked === null )
		{
			onButtonClicked = new OnButtonClicked(this, EventMask.NONE, new String("clicked"));
		}
		onButtonClicked += dlg;
	}
	


	char[] toString()
	{
		return "CheckButton";
	}
	

	/**
	 * Creates a new Check button
	 */
	this()
	{
		super(gtk_check_button_new ());
	}

	this(Button button)
	{
		super(button);
	}
	
	/**
	 * Creates a new chekc button with a label
	 */
	this(char [] label)
	{
        super(gtk_check_button_new_with_label(cChar(label)));
	}

	/**
	 * Creates a new chekc button with a label
	 */
	this(char [] label, void delegate() dlg)
	{
        super(gtk_check_button_new_with_label(cChar(label)));
		addOnClick(dlg);
	}

	/**
	 * Creates a new chekc button with a label
	 */
	this(char [] label, void delegate(CheckButton) dlg)
	{
        super(gtk_check_button_new_with_label(cChar(label)));
		addOnButtonClicked(dlg);
	}



}
