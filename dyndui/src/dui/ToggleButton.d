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

module dui.ToggleButton;

private import def.Types;
private import def.Constants;
private import dui.Widget;
private import dui.Button;
private import lib.gtk;

/**
 * A Toggle Button
 */

// moved out -------------------------
	private import dool.String;
// -----------------------------------

public: class ToggleButton : Button
{
	debug(status)
	{
		int complete(){return ST_COMPLETE;}
		char[] gtkName(){return SAME_NAME;}
		char[] description(){return "A Toggle Button";}
		char[] author(){return "Antonio";}
	}
	
	public:

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_toggle_button_get_type();
	}
	
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	this(Button button)
	{
		super(button);
	}
	

	public:
	
	/**
	 * Creates a new toggle button
	 */
	this()
	{
		this(gtk_toggle_button_new());
	}

	/**
	 * Creates a new toggle button with a label
	 */
	this(char[] label)
	{
		this(new String(label));
	}
	this(String label)
	{
		this(gtk_toggle_button_new_with_label(label.toStringz()));
	}

	//GtkWidget * gtk_toggle_button_new_with_mnemonic(const gchar * label);
	
	/**
	 * Set the mode (whatever that is)
	 */
	void setMode(gboolean drawIndicator)
	{
		gtk_toggle_button_set_mode(cast(GtkToggleButton*)gtkW(), drawIndicator);
	}
	
	/**
	 * Get the mode (whatever that is)
	 */
	bit getMode()
	{
		return gtk_toggle_button_get_mode(cast(GtkToggleButton*)gtkW())==0 ? false : true;
	}
	
	/**
	 * Set the button state
	 * @param isActive the new state
	 */
	void setActive(bit isActive)
	{
		gtk_toggle_button_set_active(cast(GtkToggleButton*)gtkW(), isActive);
	}
	
	/**
	 * Get the state of the button
	 * @return the button state as true or false
	 */
	bit getActive()
	{	
		return gtk_toggle_button_get_active(cast(GtkToggleButton*)gtkW())==0 ? false : true;
	}
	
	/**
	 * Do something (change the state?)
	 */
	void toggled()
	{
		gtk_toggle_button_toggled(cast(GtkToggleButton*)gtkW());
	}
	
	/**
	 * Sets the inconsistent state
	 * @param setting the new state
	 */
	void setInconsistent(bit setting)
	{
		gtk_toggle_button_set_inconsistent(cast(GtkToggleButton*)gtkW(), setting);
	}

	/**
	 * Check is the state is neither true or false
	 * @return true if the state is inconsistene
	 */
	bit getInconsistent()
	{
		return gtk_toggle_button_get_inconsistent(cast(GtkToggleButton*)gtkW())==0 ? false : true;
	}


}
